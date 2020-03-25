import { Component, OnInit, enableProdMode } from '@angular/core';
import { FormControl } from '@angular/forms';

import { UserProfileService } from '../server/src/controll/user-profile.service';
import { UserRegInfo } from '../server/src/models/UserReg';

@Component({
    selector: 'app-registro-usuario',
    templateUrl: './registro-usuario.component.html',
    styleUrls: ['./registro-usuario.component.css']
})

export class RegistroUsuarioComponent implements OnInit {
    userForm = new UserRegInfo ();

    constructor(private userProf: UserProfileService) { }

    post() {
        console.log('addUser()');
        this.userProf.insertUser(this.userForm);
    }

    ngOnInit() {
    }

}
