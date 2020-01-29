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
    var row1Item: CheckListItems
    var row2Item: CheckListItems
    var row3Item: CheckListItems
    var row4Item: CheckListItems
    var todoList: TodoList
    
    required init?(coder: NSCoder) {
        
        row0Item = CheckListItems()
        row1Item = CheckListItems()
        row2Item = CheckListItems()
        row3Item = CheckListItems()
        row4Item = CheckListItems()
        todoList = TodoList()
        
        row0Item.text = "Take a jog"
        row1Item.text = "Take a picture"
        row2Item.text = "Sleep"
        row3Item.text = "Make the dinner"
        row4Item.text = "Do the laundry"
        
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
        } else if indexPath.row == 1 {
            cell.textLabel?.text = row1Item.text
        } else if indexPath.row == 2 {
            cell.textLabel?.text = row2Item.text
        } else if indexPath.row == 3 {
            cell.textLabel?.text = row3Item.text
        } else if indexPath.row == 4 {
            cell.textLabel?.text = row4Item.text
        }
        
        configureCheckmark(for: cell, at: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            configureCheckmark(for: cell, at: indexPath)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            if row0Item.checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            row0Item.checked = !row0Item.checked
            tableView.deselectRow(at: indexPath, animated: true)
        } else if indexPath.row == 1 {
            if row1Item.checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            row1Item.checked = !row1Item.checked
            tableView.deselectRow(at: indexPath, animated: true)
        } else if indexPath.row == 2 {
            if row2Item.checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            row2Item.checked = !row2Item.checked
            tableView.deselectRow(at: indexPath, animated: true)
        } else if indexPath.row == 3 {
            if row3Item.checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            row3Item.checked = !row3Item.checked
            tableView.deselectRow(at: indexPath, animated: true)
        } else if indexPath.row == 4 {
            if row4Item.checked {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            row4Item.checked = !row4Item.checked
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

}
