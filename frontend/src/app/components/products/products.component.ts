import {AfterViewInit, Component, ElementRef, OnInit} from '@angular/core';
import {Category} from "../../models/category.model";
import {Title} from "@angular/platform-browser";
import {ApiService} from "../../services/api.service";
import {Router} from "@angular/router";

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.scss']
})
export class ProductsComponent implements OnInit, AfterViewInit {
  categories: Category[] = [];

  public constructor(private title: Title, private api: ApiService, private router: Router, private elementRef: ElementRef) {
  }

  public ngOnInit() {
    this.title.setTitle('Tous nos produits - Tech & Buy');
    this.api.getCategories().then((categories: Category[]) => {
      this.categories = categories;
    });
  }

  public ngAfterViewInit() {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = 'white';
  }

}
