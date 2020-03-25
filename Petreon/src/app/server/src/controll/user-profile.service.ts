import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { UserRegInfo } from '../models/UserReg';

@Injectable({
    providedIn: 'root'
})

export class UserProfileService {

    constructor(private http: HttpClient) { }

    // getAllCats(): Observable<UserProfileReg[]> {
    //     return this.http.get<UserProfileReg[]>('http://localhost:8000/api/cats')
    // }

    // getCat(name: string): Observable<UserProfileReg> {
    //     return this.http.get<UserProfileReg>('http://localhost:8000/api/cats/' + name)
    // }

    insertUser(user: UserRegInfo) {
        console.log('insertUser ' + user.getAsJson());

        return this.http.post('http://localhost:8000/api/cadastrarPerfil', user.getAsJson()).subscribe(
            data => {
                alert('ok');
            }
        );
    }

    // updateCat(cat: UserProfileReg): Observable<void> {
    //     return this.http.put<void>(
    //         'http://localhost:8000/api/cats/' + cat.name,
    //         cat
    //     );
    // }

    // deleteCat(name: string) {
    //     return this.http.delete('http://localhost:8000/api/cats/' + name)
    // }
}
