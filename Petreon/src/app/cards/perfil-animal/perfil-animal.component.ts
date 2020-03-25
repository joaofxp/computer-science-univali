import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CardsModel } from './../cardsModel';
import { CardsComponent } from './../cards.component';
import { CardsService } from './../cards.service';

@Component({
  selector: 'app-perfil-animal',
  templateUrl: './perfil-animal.component.html',
  styleUrls: ['./perfil-animal.component.css']
})
export class PerfilAnimalComponent implements OnInit {

  perfilAnimal: CardsModel;
  CardsComponent: CardsComponent;
  // CardsService: CardsService;
  idAnimal: number;
  private sub: any;

  constructor(private route: ActivatedRoute,
              private cardsService: CardsService) { }

  ngOnInit() {
    this.sub = this.route.params.subscribe(params => {
      this.idAnimal = params.id;
    });

    this.getPetById(this.idAnimal);
  }

  getPetById(IdAnimal: number): void {
    this.cardsService.getCardsByNum(IdAnimal).
      subscribe(perfilAnimal => this.perfilAnimal = perfilAnimal);

      this.cardsService.getCardsByNum(IdAnimal).
      subscribe(perfilAnimal => this.perfilAnimal = perfilAnimal);
  }
}
