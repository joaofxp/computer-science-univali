//moduel seve para encontrar o arquivo e outros locais
module DBConfig 
//open é como se fosse o using do c#, serve para importar

open MongoDB.Bson
open MongoDB.Driver


let connectionString = "mongodb://admin:1234@cluster0-shard-00-00-d0psb.gcp.mongodb.net:27017,cluster0-shard-00-01-d0psb.gcp.mongodb.net:27017,cluster0-shard-00-02-d0psb.gcp.mongodb.net:27017/test?ssl=true&replicaSet=Cluster0-shard-0&authSource=admin&retryWrites=true&w=majority"

let dbName = "CadastroProduto"

let collectionName = "Produto"

type ProductData = {
                    Id: BsonObjectId; 
                    Name:string; 
                    QuantidadeEstoque: int;
                    Unidade :string;
                    LocalEstoque:string
                    }

let client = MongoClient(connectionString)
let db = client.GetDatabase(dbName)
let collection = db.GetCollection<ProductData>(collectionName)