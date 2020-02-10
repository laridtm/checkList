//
//  Item.swift
//  ShoppingList
//
//  Created by Larissa Diniz  on 06/02/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Item {
    
    let name: String
    var checked = true
    
    init(name: String) {
        self.name = name
    }
    
    func toggleChecked() {
        checked = !checked
    }
   
}
