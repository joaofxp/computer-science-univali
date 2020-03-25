module ProdutoCreate

open DBConfig

let create (produto: ProductData) = 
    collection.InsertOne(produto)



