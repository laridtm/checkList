//
//  ShoppingCell.swift
//  ShoppingList
//
//  Created by Larissa Diniz  on 06/02/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ShoppingCell: UITableViewCell {

    @IBOutlet weak var itemFood: UILabel!
    
    func setItem(item: Item) {
        itemFood.text = item.name
    }

}
