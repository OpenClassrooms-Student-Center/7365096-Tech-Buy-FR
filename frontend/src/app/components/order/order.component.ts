import {AfterViewInit, Component, ElementRef} from '@angular/core';
import {FormControl, FormGroup, Validators} from "@angular/forms";
import {Router} from "@angular/router";
import {Title} from "@angular/platform-browser";
import {CartService} from "../../services/cart.service";

@Component({
  selector: 'app-order',
  templateUrl: './order.component.html',
  styleUrls: ['./order.component.scss']
})
export class OrderComponent implements AfterViewInit{
  form: FormGroup;

  constructor(private router: Router, private elementRef: ElementRef, private title: Title, private cart: CartService) {
    this.title.setTitle('Confirmez votre commande - Tech & Buy');
    this.form = new FormGroup({
      name: new FormControl('', Validators.required),
      address: new FormControl('', Validators.required),
      city: new FormControl('', Validators.required),
      zipcode: new FormControl('', [Validators.pattern(/^\d{5}$/), Validators.required]),
      email: new FormControl('', [Validators.required, Validators.email]),
    });
  }

  send(): void {
    this.form.markAllAsTouched();
    if(this.form.valid) {
      this.cart.deleteCart();
      this.router.navigate(['/thanks']);
    }
  }

  public ngAfterViewInit() {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = '#F2F7F9';
  }
}
