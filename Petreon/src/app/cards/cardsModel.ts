export class CardsModel {
    public id: number;
    public nome: string;
    public idade: number;
    public condicao: string;
    public urgencia: string;
    public img: string;
    public valorTotal: string;
    public valorArrecadado: string;
    public especie: string;
    public raça: string;
    public pelagem: string;
    public porte: string;
    public castrado: boolean;
    public vermifugado: boolean;
    public vacinado: boolean;
    public descricao: Text;

    constructor() { }

    public setId(id: number) {
        this.id = id;
    }

    public setNome(nome: string) {
        this.nome = nome;
    }

    public setIdade(idade: number) {
        this.idade = idade;
    }

    public setCondicao(condicao: string) {
        this.condicao = condicao;
    }

    public setUrgencia(urgencia: string) {
        this.urgencia = urgencia;
    }

    public setImg(img: string) {
        this.img = img;
    }

    public setValorTotal(valoTotal: string) {
        this.valorTotal = valoTotal;
    }

    public setvalorArrecado(valorArrecadado: string) {
        this.valorArrecadado = valorArrecadado;
    }
}
