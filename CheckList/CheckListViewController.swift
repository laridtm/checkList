//
//  ViewController.swift
//  CheckList
//
//  Created by Larissa Diniz  on 24/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {
    
    var row0Item: CheckListItems
    
    required init?(coder: NSCoder) {
        row0Item = CheckListItems()
        row0Item.text = "Take a jog"
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        
        if indexPath.row == 0 {
            cell.textLabel?.text = row0Item.text
        } else {
            cell.textLabel?.text = "Sleep"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            if indexPath.row == 0 {
                if row0Item.checked {
                    cell.accessoryType = .none
                } else {
                    cell.accessoryType = .checkmark
                }
                row0Item.checked = !row0Item.checked
                tableView.deselectRow(at: indexPath, animated: true)
            } else {
                if cell.accessoryType == .none {
                    cell.accessoryType = .checkmark
                } else {
                    cell.accessoryType = .none
                }
                tableView.deselectRow(at: indexPath, animated: true)
            }
        }
    }
}
