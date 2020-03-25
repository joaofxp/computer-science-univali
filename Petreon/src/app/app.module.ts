import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ScrollEventModule } from 'ngx-scroll-event';
import { RegistryComponent } from './registry/registry.component';
import { RegistryModule } from './registry/registry.module';
import { SliderComponent } from './slider/slider.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { RegistroUsuarioComponent } from './registro-usuario/registro-usuario.component';
import { CardsModule } from './cards/cards.module';
import { Ng2SearchPipeModule } from 'ng2-search-filter';
import { LoginComponent } from './login/login.component';

@NgModule({
    declarations: [
        AppComponent,
        RegistryComponent,
        SliderComponent,
        HeaderComponent,
        FooterComponent,
        RegistroUsuarioComponent,
        LoginComponent
    ],
    imports: [
        BrowserModule,
        AppRoutingModule,
        ScrollEventModule,
        RegistryModule,
        CardsModule,
        Ng2SearchPipeModule,
        HttpClientModule,
        FormsModule,
        ReactiveFormsModule
    ],

    providers: [],
    bootstrap: [AppComponent]
})
export class AppModule { }
