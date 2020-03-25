import { Component, OnInit } from '@angular/core';

// import * as $ from 'jquery';
// import * as bootstrap from 'bootstrap';
import { AnimalRegInfo } from '../server/src/models/AnimalReg';
import { AnimalProfileService } from '../server/src/controll/animal-profile.service';

@Component({
    selector: 'app-registry',
    templateUrl: './registry.component.html',
    styleUrls: ['./registry.component.css']
})

export class RegistryComponent {
    animalForm = new AnimalRegInfo();
    constructor(private animalProf: AnimalProfileService) {
    }

    post() {
        console.log('addAnimal()');
        this.animalProf.insertAnimal(this.animalForm);
    }

}
// $(document).ready(function () {
//   $('[data-toggle="tooltip"]').tooltip();
// })



// window.onload = function () {
// setTimeout(() => {
// $('#especie').tooltip({ boundary: 'window' });
  // }, 500);
// }



