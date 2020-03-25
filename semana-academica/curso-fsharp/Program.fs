// Learn more about F# at http://fsharp.org

//void no F# é o tipo Unit
//<> = diferente
//Atribuicao imutavel  =
//Atribuicao mutavel  <-

open System

//types tem que ser criados fora, pois sao indepenentes
type Pessoa = {Nome:string;Idade:int}

[<EntryPoint>]
let main argv =
    let nome = "Joao"
    let teste :string = "jony"

    //printfn "%s" nome
    // printfn "Hello World from F#!"

    //let imprimeNome(nome)
    //let imprimeNome(nome:string)

    //identação tem relevancia

    let imprimeNome nome =
        printfn "%A" nome

    //Tipo A (seria o any) pode ser usado para printar qualquer coisa


    //é possivel criar tipos primitivos

    //nome vai servir de parametro para a funcao a seguir
    //nome |> imprimeNome

    //type é como um struct

    //criando uma pessoa
    // let bruno = {Nome = "Bruno";Idade = 22}

    //descrevendo o tipo
    // let bruno:Pessoa = {Nome = "Bruno";Idade = 22}

    // imprimeNome bruno

    //for com seq

    // let forTeste posicao =
        // for i in [0..10] do
            // printfn "%d"i

        //seq é tipo um enum no c#
        //o seq por questoes de memoria nao printa tudo duma vez
        // let sequencial = seq{for i in 0..10 do i}
        // printfn "%A" sequencial

        //diferença de criar lista e array

    let lista = [0;1;2;3]

        //array
        // let array = [|0;1;2;3|]

        // printfn "%d" lista.[0]

    // let rec testeRecursivo posicao =
        // if posicao = lista.Length-1 then
            // 1
        // else
            // printfn "%d" lista.[posicao]
            // testeRecursivo <| posicao + 1

    //testeRecursivo 0

    // let testeMatch numero =
        // match numero with
            // |0 -> () //() retorna void, ou vazio no caso
            // |1 -> printfn "%s" "numero 1"
            // |2 -> printfn "%s" "numero 2"
            // |_ -> printfn "%s" "nenhum (numero default)"

    // testeMatch 0

    //funcao anonima

    let quadrado valor =
        valor * valor

    let filterByOdd valor =
        valor % 2 = 0

    let multiplicaElementos =
        //quer iterar a lista e multipicar ao quadrado
        //vamos utilizar o map
        let lista = [0;1;2;3;4]
        let quadrado = lista
                        |> List.map(fun item -> quadrado <| item)
                        //pegar apenas os pares
                        |> List.filter(fun itemMultiplicado -> filterByOdd <| itemMultiplicado)

        let quadrado2 = lista |> List.map(fun index item -> item)

        printfn "%A" quadrado

    multiplicaElementos

    //boas praticas, é escrever o codigo e se delcarar função, fala o tipo

    //exercicios gitub.com/Bmila/AulaFSharp

    0 // return an integer exit code
