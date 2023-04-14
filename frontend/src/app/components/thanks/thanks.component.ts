import {AfterViewInit, Component, ElementRef} from '@angular/core';
import {Title} from "@angular/platform-browser";

@Component({
  selector: 'app-thanks',
  templateUrl: './thanks.component.html',
  styleUrls: ['./thanks.component.scss']
})
export class ThanksComponent implements AfterViewInit {

  constructor(private title: Title, private elementRef: ElementRef) {
    this.title.setTitle('Une erreur est survenue - Tech & Buy');
  }

  public ngAfterViewInit() {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = '#F2F7F9';
  }

}
