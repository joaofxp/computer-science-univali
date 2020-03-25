import { Injectable } from '@angular/core';
import { CardsModel } from './cardsModel';
import { AnimalInfo } from '../server/src/models/AnimalInfo';
import { HttpClient, HttpClientModule, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

const httpOptions = {
    headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Injectable({
    providedIn: 'root'
})
export class CardsService {

    // tslint:disable-next-line: variable-name
    private _url = 'http://localhost:3000/pets/';

    animalProf: AnimalInfo[];
    animalInfo: AnimalInfo = {
        id: null,
        name: null,
        sex: null,
        dateBirth: null,
        measurement: null,
        castrated: null,
        dewormed: null,
        vaccinated: null,
        complement: null,
    };

    constructor(
        private http: HttpClient) { }

    getCards(): Observable<CardsModel[]> {
        return this.http.get<CardsModel[]>(this._url);
    }

    getCardsByNum(id: number): Observable<CardsModel> {
        const url = `${this._url}/${id}`;
        return this.http.get<CardsModel>(url);
    }
}
