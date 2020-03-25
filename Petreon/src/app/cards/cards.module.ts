import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';

import { CardsComponent } from './cards.component';
import { CardsService } from './cards.service';
import { RouterModule } from '@angular/router';
import { Ng2SearchPipeModule } from 'ng2-search-filter';
import { PerfilAnimalComponent } from './perfil-animal/perfil-animal.component';
import { HttpClientModule } from '@angular/common/http';

@NgModule({
  declarations: [
    CardsComponent,
    PerfilAnimalComponent
  ],
  imports: [
    CommonModule,
    RouterModule,
    Ng2SearchPipeModule,
    BrowserModule,
    FormsModule,
    HttpClientModule
  ],
  exports: [
    CardsComponent,
    PerfilAnimalComponent
  ],
  providers: [
    CardsService
  ]
})
export class CardsModule { }
