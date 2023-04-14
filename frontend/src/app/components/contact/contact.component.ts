import {AfterViewInit, Component, ElementRef, OnInit} from '@angular/core';
import {FormControl, FormGroup, Validators} from "@angular/forms";

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.scss']
})
export class ContactComponent implements OnInit, AfterViewInit {

  form: FormGroup;
  success = false;
  public constructor(private elementRef: ElementRef) {
    this.form = new FormGroup({
      name: new FormControl('', Validators.required),
      email: new FormControl('', [Validators.required, Validators.email]),
      message: new FormControl('', Validators.required)
    });
  }

  public send(): void {
    this.form.markAllAsTouched();
    if(this.form.valid) {
      this.success = true;
    }
  }

  public ngOnInit() {
  }

  public ngAfterViewInit() {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = '#F2F7F9';
  }

  public openItinerary() {
    window.open('https://goo.gl/maps/85BtU8D2nfG9nQgf9', '_blank');
  }
}
