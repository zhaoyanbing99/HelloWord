import Vapor

let drop = Droplet()

//drop.get { req in
//    return try drop.view.make("welcome", [
//    	"message": drop.localization[req.lang, "welcome", "title"]
//    ])
//}

//drop.resource("posts", PostController())

drop.get("/") { request in
    return "Hello World!"
}

drop.get("/name",":name"){ request in
    
    if let name = request.parameters["name"]?.string
    {
        return "hello \(name)!"
    }
    
    return "error retreving parameters."
  
}

drop.run()
