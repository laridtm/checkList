//
//  ShoppingListController.swift
//  ShoppingList
//
//  Created by Larissa Diniz  on 06/02/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ShoppingListController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items: [Item] = [Item(item: "Carne"),
                         Item(item: "Macarrão"),
                         Item(item: "Cenoura"),
                         Item(item: "Banana"),
                         Item(item: "Morango"),
                         Item(item: "Ovos"),
                         Item(item: "Sal"),
                         Item(item: "Pão"),
                         Item(item: "Leite"),
                         Item(item: "Leite condensado"),
                         Item(item: "Queijo"),
                         Item(item: "Peito de Peru"),
                         Item(item: "Alface"),
                         Item(item: "Tomate"),
                         Item(item: "Cebola"),
                         Item(item: "Alho"),
                         Item(item: "Pipoca"),
                         Item(item: "Achocolatado"),
                         Item(item: "Limão"),
                         Item(item: "Calabresa")]

    override func viewDidLoad() {
        super.viewDidLoad()

        print(items)
    }

}

extension ShoppingListController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingCell") as! ShoppingCell
        
        cell.setItem(item: items[indexPath.row])
        
        return cell
    }
    
    
}
