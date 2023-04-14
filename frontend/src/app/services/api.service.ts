import { Injectable } from '@angular/core';
import {Category} from "../models/category.model";
import {Product} from "../models/product.model";

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  public API_URL = 'http://localhost:8081/';

  constructor() { }

  public getProducts(categoryId: number = -1): Promise<Product[]> {
    const url = new URL('products');

    if(categoryId !== -1) {
      url.searchParams.append('category', categoryId.toString());
    }
    return this.doRequest(url.toString()).then(response => response.json()) as Promise<Product[]>;
  }

  public getBestProducts(): Promise<Product[]> {
    return this.doRequest('products/best').then(response => response.json()) as Promise<Product[]>;
  }

  public getSuggestedProducts(): Promise<Product[]> {
    return this.doRequest('products/suggested').then(response => response.json()) as Promise<Product[]>;
  }

  public getCategories(): Promise<Category[]> {
    return this.doRequest('categories').then(response => response.json()) as Promise<Category[]>;
  }

  public getCategory(id: number): Promise<Category> {
    return this.doRequest('categories/' + id).then(response => response.json()) as Promise<Category>;
  }

  public getProduct(id: number): Promise<Product> {
    return this.doRequest('products/' + id).then(response => response.json()) as Promise<Product>;
  }

  private doRequest(url: string|URL, body: object|null = null): Promise<Response> {
    return fetch(this.API_URL + url, {
      method: body ? 'POST' : 'GET',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: body as BodyInit|null
    });
  }
}
