import {Injectable} from "@angular/core";
import {Product} from "../models/product.model";

@Injectable({
  providedIn: 'root'
})
export class CartService {

  public CART_KEY = 'cart';

  constructor() {
  }

  public getCart(): Product[] {
    return JSON.parse(localStorage.getItem(this.CART_KEY) ?? '[]');
  }

  public deleteCart() {
    localStorage.removeItem(this.CART_KEY);
  }

  public addProductToCart(product: Product): Product[] {
    let cart = this.getCart();
    let productFound = false;
    cart.forEach((p: Product) => {
      if (p.id === product.id) {
        productFound = true;
        p.quantity += product.quantity;
      }
    });

    if (!productFound) {
      cart.push(product);
    }
    localStorage.setItem(this.CART_KEY, JSON.stringify(cart));
    return cart;
  }

  public removeProductFromCart(product: Product): Product[] {
    let cart = this.getCart().filter(p => p.id !== product.id);
    localStorage.setItem(this.CART_KEY, JSON.stringify(cart));
    return cart;
  }
}
