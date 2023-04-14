import {Component, OnInit} from '@angular/core';
import {Title} from "@angular/platform-browser";
import {ApiService} from "../../services/api.service";
import {Category} from "../../models/category.model";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit{

  categories: Category[] = [];

  public constructor(private title: Title, private api: ApiService) {
  }
  public ngOnInit() {
    this.title.setTitle('Tech & Buy');
    this.api.getCategories().then(categories => this.categories = categories);
  }
}
