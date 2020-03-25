// Learn more about F# at http://fsharp.org

open System

open ProdutoHandler

[<EntryPoint>]
let main argv =
    // printfn "Hello World from F#!"

    // Produto.addProduto <| "Garfo" <| 10 <| "Unidade" <| "Estoque Loja"
    // Produto.addProduto <| "Colher" <| 12 <| "Unidade" <| "Estoque Loja"
    
    Produto.updateProduto <| "Colher" <| "Faca"
    
    printf "%A" <| Produto.readProduto "Faca"



    // printf "%A" <| Produto.readProduto "Colher"

    // Produto.deleteProduto("Garfo")

    0 // return an integer exit code


//primeiro vamos criar um arquivo de configuração do banco
// para apontar as operações para o banco

