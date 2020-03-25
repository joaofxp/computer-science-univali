module ProdutoUpdate

open DBConfig
open MongoDB.Driver

let update (nomeAntigo :string) (nomeNovo :string) =
    let filter =
        Builders<ProductData>.Filter.Eq((fun tipo -> tipo.Name), nomeAntigo)

    let updateEncontrado =
        Builders<ProductData>.Update.Set((fun tipo -> tipo.Name),nomeNovo)

    collection.UpdateOne(filter,updateEncontrado)    
