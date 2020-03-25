import { Component, OnInit } from '@angular/core';
import { CardsService } from './cards.service';
import { CardsModel } from './cardsModel';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-cards',
  templateUrl: './cards.component.html',
  styleUrls: ['./cards.component.css']
})

export class CardsComponent implements OnInit {

  cards: CardsModel[];
  card: CardsModel;
  pesquisarPet: string;

  constructor(private cardsService: CardsService) {
  }

  ngOnInit() {
    this.getCards();
  }

  getCards(): void {
    this.cardsService.getCards().subscribe(cards => this.cards = cards);
  }

}
