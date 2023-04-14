import {LOCALE_ID, NgModule} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';

import {AppRoutingModule} from './app-routing.module';
import {AppComponent} from './components/app/app.component';
import {HomeComponent} from './components/home/home.component';
import {ProductComponent} from './components/product/product.component';
import {CategoryComponent} from './components/category/category.component';
import {ContactComponent} from './components/contact/contact.component';
import {CartComponent} from './components/cart/cart.component';
import {OrderComponent} from './components/order/order.component';
import {ThanksComponent} from './components/thanks/thanks.component';
import {ReactiveFormsModule} from "@angular/forms";
import {registerLocaleData} from "@angular/common";
import localeFr from '@angular/common/locales/fr';
import { ProductsComponent } from './components/products/products.component';


registerLocaleData(localeFr, 'fr');

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    ProductComponent,
    CategoryComponent,
    ContactComponent,
    CartComponent,
    OrderComponent,
    ThanksComponent,
    ProductsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule
  ],
  providers: [{provide: LOCALE_ID, useValue: 'fr'}],
  bootstrap: [AppComponent]
})
export class AppModule {
}
