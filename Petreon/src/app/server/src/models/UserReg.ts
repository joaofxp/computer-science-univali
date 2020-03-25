// import { RegistroUsuarioComponent } from '../../../registro-usuario/registro-usuario.component';
import { FormControl } from '@angular/forms';

export class UserRegInfo {
    name = new FormControl('');
    email = new FormControl('');
    dateBirth = new FormControl('');
    sex = new FormControl('');
    cpf = new FormControl('');
    phone = new FormControl('');
    password = new FormControl('');
    constructor() { }

    public getAsJson() {
        return JSON.parse(`{` +
            `"nome":"${this.name.value}",` +
            `"email":"${this.email.value}",` +
            `"data_nascimento":"${this.dateBirth.value}",` +
            `"genero":"${this.sex.value}",` +
            `"cpf":"${this.cpf.value}",` +
            `"numero_celular":"${this.phone.value}",` +
            `"senha":"${this.password.value}"` +
            `}`);
    }
}
