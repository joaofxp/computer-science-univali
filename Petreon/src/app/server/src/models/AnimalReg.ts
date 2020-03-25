import { FormControl } from '@angular/forms';

export class AnimalRegInfo {
    name = new FormControl('');
    // especie: string;
    // raca: string;
    // skin: string;
    sex = new FormControl('');
    dateBirth = new FormControl('');
    measurement = new FormControl('');
    castrated = new FormControl('');
    dewormed = new FormControl('');
    vaccinated = new FormControl('');
    complement = new FormControl('');

    public getAsJson() {
        return JSON.parse(`{` +
            `"nome":"${this.name.value}",` +
            `"sexo":"${this.sex.value}",` +
            `"data_nascimento":"${this.dateBirth.value}",` +
            `"porte":"${this.measurement.value}",` +
            `"castracao":"${this.castrated.value}",` +
            `"vermifugo":"${this.dewormed.value}",` +
            `"vacina":"${this.vaccinated.value}",` +
            `"complemento":"${this.complement.value}"` +
            `}`);
    }
}
