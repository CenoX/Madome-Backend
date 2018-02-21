//
//  download.swift
//  Madome-Downloader
//
//  Created by cenox on 2018. 2. 21..
//

import LoggerAPI
import Kitura

class Madome {
    
    static var shared: Madome {
        return Madome()
    }
    
    deinit {
        print("Madome deinitlized!")
    }
    
    func download(_ id: Int, _ res: RouterResponse) {
        do {
            try res.send(json: ["message": "Download Started.", "id": id, "title": "temp"]).end()
        } catch let error {
            dump(error)
        }
    }
}
