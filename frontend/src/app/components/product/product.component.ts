import {AfterViewInit, Component, ElementRef, OnDestroy, OnInit, ViewChild} from '@angular/core';
import {Category} from "../../models/category.model";
import {Product} from "../../models/product.model";
import {Subscription} from "rxjs";
import {Title} from "@angular/platform-browser";
import {ApiService} from "../../services/api.service";
import {ActivatedRoute, Router} from "@angular/router";
import {CartService} from "../../services/cart.service";

@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.scss']
})
export class ProductComponent implements OnInit, OnDestroy, AfterViewInit {
  product!: Product;
  bestProducts: Product[] = [];

  @ViewChild('imgSlider') imgSlider!: ElementRef;

  private subscription!: Subscription;

  public imageToShow: number = 1;

  public constructor(private cart: CartService, private title: Title, private api: ApiService, private route: ActivatedRoute, private router: Router, private elementRef: ElementRef) {
  }

  public ngOnInit() {
    this.api.getBestProducts().then(products => this.bestProducts = products);
    this.subscription = this.route.params.subscribe(params => {
      this.api.getProduct(params['id']).then((product: Product|Response) => {
        if((product as Response)?.status === 404) {
          this.router.navigate(['/']);
          return ;
        }
        this.product = product as Product;
        this.title.setTitle((product as Product).name + ' - Tech & Buy');
      });
    });
  }

  public addToCart() {
    this.product.quantity = 1;
    this.cart.addProductToCart(this.product);
    this.router.navigate(['/cart']);
  }

  public ngOnDestroy() {
    this.subscription?.unsubscribe();
  }

  public ngAfterViewInit() {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = 'white';
  }

  public next() {
    this.imageToShow++;
    if(this.imageToShow > 3)
      this.imageToShow = 1;

    this.updateSlider();
  }

  public prev() {
    this.imageToShow--;
    if(this.imageToShow < 1)
      this.imageToShow = 3;

    this.updateSlider();
  }

  public goTo(n: number) {
    this.imageToShow = n;
    this.updateSlider();
  }

  private updateSlider() {
    this.imgSlider.nativeElement.style.transform = `translateX(-${(this.imageToShow - 1) * 100}%)`;
  }

}
