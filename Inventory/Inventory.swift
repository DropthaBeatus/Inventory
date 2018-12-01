//
//  Inventory.swift
//  Inventory
//
//  Created by Liam Flaherty on 11/30/18.
//  Copyright © 2018 Liam Flaherty. All rights reserved.
//

import Foundation

struct products: Codable {
    let id: Int
    let category: String
    let title: String
    let price: Float
    let stockedQuantity: Int
    
    
 enum Coding: String, CodingKey {
        case id
        case category
        case title
        case price
        case stockQuantity
        
    }
}

struct Inventory: Codable {
    let status : String
    let products: [products]

    enum CodingKeys: String, CodingKey {
        case status = "status"
        case products = "products"
    }

}

class InventoryLoader {
    
    
        class func load(jsonFileName: String) -> Inventory? {
            var inventories: Inventory?
            //let jsonDecoder = JSONDecoder()
            //jsonDecoder.dateDecodingStrategy = .iso8601
            
            if let jsonFileUrl = Bundle.main.url(forResource: "inventory", withExtension: ".json"),
                let jsonData = try? Data(contentsOf: jsonFileUrl) {
               // print("Got here")
               // let inventory = try? jsonDecoder.decode(Inventory.self, from: jsonData)
                do {
                    let decoder = JSONDecoder()
                    let inventory = try decoder.decode(Inventory.self, from: jsonData)
                    inventories = inventory
                } catch let error {
                    print(error as? Any)
                }
            }
            return inventories
           
        }
    

    
}
