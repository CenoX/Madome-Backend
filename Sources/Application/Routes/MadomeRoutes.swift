//
//  MadomeRoutes.swift
//  Madome-Downloader
//
//  Created by cenox on 2018. 2. 21..
//

import LoggerAPI

func initializeMadomeRoutes(app: App) {
    app.router.get("/madome") { request, response, _ in
        response.send("Well it looks working.")
    }
    
    app.router.get("/madome/download") { req, res, _ in
        res.send("Well it looks working.")
    }
}
