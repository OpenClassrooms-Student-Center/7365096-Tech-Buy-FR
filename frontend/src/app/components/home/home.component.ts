import {AfterViewInit, Component, ElementRef, OnInit} from '@angular/core';
import {Title} from "@angular/platform-browser";
import {ApiService} from "../../services/api.service";
import {Product} from "../../models/product.model";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit, AfterViewInit {

  public bestProducts: Product[] = [];
  public suggestedProducts: Product[] = [];

  public constructor(private title: Title, private api: ApiService, private elementRef: ElementRef) {
    this.title.setTitle('Accueil - Tech & Buy');
  }

  public ngOnInit() {
    this.api.getBestProducts().then(products => this.bestProducts = products);
    this.api.getSuggestedProducts().then(products => this.suggestedProducts = products);
  }

  public ngAfterViewInit() {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = 'white';
  }

}
