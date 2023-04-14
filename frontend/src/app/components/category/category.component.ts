import {AfterViewInit, Component, ElementRef, OnDestroy, OnInit} from '@angular/core';
import {Category} from "../../models/category.model";
import {Title} from "@angular/platform-browser";
import {ApiService} from "../../services/api.service";
import {ActivatedRoute, Router} from "@angular/router";
import {Subscription} from "rxjs";
import {Product} from "../../models/product.model";

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.scss']
})
export class CategoryComponent implements OnInit, OnDestroy, AfterViewInit {
  category!: Category;
  products: Product[] = [];

  private subscription!: Subscription;

  public constructor(private title: Title, private api: ApiService, private route: ActivatedRoute, private router: Router, private elementRef: ElementRef) {
  }

  public ngOnInit() {
    this.subscription = this.route.params.subscribe(params => {
      this.api.getCategory(params['id']).then((category: Category|Response) => {
        if((category as Response)?.status === 404) {
          this.router.navigate(['/']);
          return ;
        }
        this.category = category as Category;
        this.title.setTitle((category as Category).name + ' - Tech & Buy');
        // @ts-ignore
        this.products = category.products;
      });
    });
  }

  public ngOnDestroy() {
    this.subscription?.unsubscribe();
  }

  public ngAfterViewInit() {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = 'white';
  }

}
