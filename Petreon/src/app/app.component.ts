import { Component, OnInit, HostListener } from '@angular/core';
import { ScrollEvent } from 'ngx-scroll-event';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {
  title = 'Petreon';

  // public handleScroll(event: ScrollEvent) {
  //   const header = document.getElementById('header');

  //   if (window.pageYOffset > 0) {
  //     header.classList.add('smalHeader');
  //     header.classList.add('fixed');
  //   } else {
  //     header.classList.remove('smalHeader');
  //     header.classList.remove('fixed');
  //   }
  // }

}


