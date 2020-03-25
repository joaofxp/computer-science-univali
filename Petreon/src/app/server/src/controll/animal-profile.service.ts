import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { AnimalRegInfo } from 'src/app/server/src/models/AnimalReg';

@Injectable({
  providedIn: 'root'
})
export class AnimalProfileService {

    constructor(private http: HttpClient) { }

    insertAnimal(animal: AnimalRegInfo) {
        console.log('insertUser ' + animal.getAsJson());

        return this.http.post('http://localhost:8000/api/cadastrarAnimal', animal.getAsJson()).subscribe(
            data => {
                alert('ok');
            }
        );
    }
}
