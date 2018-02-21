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
    
    func download(_ token: String, _ id: Int, _ res: RouterResponse) {
        do {
            try res.send(json: ["message": "Download Started.", "id": id, "title": "temp"]).end()
        } catch let error {
            dump(error)
        }
    }
    
    func list(_ res: RouterResponse) {
        
    }
    
    func status(_ res: RouterResponse) {
        
    }
}

// MARK: Endpoint - Download
extension Madome {
    private func fetch() {
        
    }
    
    private func download() {
        
    }
    
    /// Save Info to JSON.
    private func save() {
        
    }
}

// MARK: Endpoint - Status
extension Madome {
    
}
