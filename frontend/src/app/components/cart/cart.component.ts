import {AfterViewInit, Component, ElementRef, OnInit} from '@angular/core';
import {CartService} from "../../services/cart.service";
import {Product} from "../../models/product.model";
import {Title} from "@angular/platform-browser";
import {ApiService} from "../../services/api.service";

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.scss']
})
export class CartComponent implements OnInit, AfterViewInit {

  public products: Product[] = [];
  public otherProducts: Product[] = [];

  constructor(private api: ApiService, private cart: CartService,private elementRef: ElementRef, private title: Title) {
    this.title.setTitle('Mon panier - Tech & Buy');
  }

  ngAfterViewInit() {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = '#F2F7F9';
  }

  getNbProducts(): number {
    return this.products.reduce((total, product) => total + product.quantity, 0);
  }

  getTotal(): number {
    return this.products.reduce((total, product) => total + product.quantity * (product.price ?? 0), 0);
  }

  removeProduct(product: Product): void {
    this.products = this.cart.removeProductFromCart(product);
  }

  ngOnInit() {
    this.products = this.cart.getCart();
    this.api.getBestProducts().then(products => this.otherProducts = products);
  }

}
