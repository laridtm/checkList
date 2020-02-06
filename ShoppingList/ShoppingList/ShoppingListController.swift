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
    
    var items: [Item] = [Item(name: "Carne"),
                         Item(name: "Macarrão"),
                         Item(name: "Cenoura"),
                         Item(name: "Banana"),
                         Item(name: "Morango"),
                         Item(name: "Ovos"),
                         Item(name: "Sal"),
                         Item(name: "Pão"),
                         Item(name: "Leite"),
                         Item(name: "Leite condensado"),
                         Item(name: "Queijo"),
                         Item(name: "Peito de Peru"),
                         Item(name: "Alface"),
                         Item(name: "Tomate"),
                         Item(name: "Cebola"),
                         Item(name: "Alho"),
                         Item(name: "Pipoca"),
                         Item(name: "Achocolatado"),
                         Item(name: "Limão"),
                         Item(name: "Calabresa")]

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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingCell") as? ShoppingCell
        
        cell?.setItem(item: items[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    
}
