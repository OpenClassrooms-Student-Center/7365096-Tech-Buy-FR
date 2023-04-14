import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {HomeComponent} from "./components/home/home.component";
import {CategoryComponent} from "./components/category/category.component";
import {ContactComponent} from "./components/contact/contact.component";
import {ProductComponent} from "./components/product/product.component";
import {CartComponent} from "./components/cart/cart.component";
import {OrderComponent} from "./components/order/order.component";
import {ThanksComponent} from "./components/thanks/thanks.component";
import {ProductsComponent} from "./components/products/products.component";

const routes: Routes = [
  { path: 'category/:id', component: CategoryComponent },
  { path: 'contact', component: ContactComponent },
  { path: 'product/:id', component: ProductComponent },
  { path: 'products', component: ProductsComponent },
  { path: 'cart', component: CartComponent },
  { path: 'order', component: OrderComponent },
  { path: 'thanks', component: ThanksComponent },
  { path: '**', component: HomeComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes, {
    useHash: true,
    scrollPositionRestoration: 'enabled'
  })],
  exports: [RouterModule]
})
export class AppRoutingModule { }
