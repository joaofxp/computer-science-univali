module ProdutoDelete

open DBConfig
open MongoDB.Driver

let delete (nome : string) =
    let produtFilter = Builders<ProductData>.Filter.Eq((fun item -> item.Name), nome)
    collection.DeleteOne(produtFilter)