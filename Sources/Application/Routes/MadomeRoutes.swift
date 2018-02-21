//
//  MadomeRoutes.swift
//  Madome-Downloader
//
//  Created by cenox on 2018. 2. 21..
//

import LoggerAPI
import Kitura
import KituraNet

func initializeMadomeRoutes(app: App) {
    app.router.get("/madome") { request, response, _ in
        response.send("Well it looks working.")
    }
    app.router.post("/madome/download", middleware: BodyParser())
    app.router.post("/madome/download") { req, res, next in
        guard let version = req.headers["X-Madome-Version"] else {
            try res.status(.badRequest).send(json: ["Message":"Bad Request"]).end()
            return
        }
        print(version)
        guard let parsedBody = req.body else {
            try res.status(.badRequest).send(json: ["Message":"Bad Request"]).end()
            return
        }
        
        switch parsedBody {
        case .json(let jsonBody):
            let id = jsonBody["id"] as? Int ?? 0000
            Madome.shared.download(id, res)
        default:
            try res.status(.badRequest).send(json: ["Message":"Bad Request"]).end()
        }
    }
}
