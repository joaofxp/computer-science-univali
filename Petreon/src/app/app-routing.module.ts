import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { SliderComponent } from './slider/slider.component';
import { CardsComponent } from './cards/cards.component';
import { RegistroUsuarioComponent } from './registro-usuario/registro-usuario.component';
import { RegistryComponent } from './registry/registry.component';
import { PerfilAnimalComponent } from './cards/perfil-animal/perfil-animal.component';
import { LoginComponent } from './login/login.component';

const routes: Routes = [
  { path: '', component: SliderComponent },
  { path: 'cards', component: CardsComponent },
  { path: 'slider', component: SliderComponent },
  { path: 'cadastrarAnimal', component: RegistryComponent },
  { path: 'cadastrarPerfil', component: RegistroUsuarioComponent },
  { path: 'perfilAnimal/:id', component: PerfilAnimalComponent },
  { path: 'login', component: LoginComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
