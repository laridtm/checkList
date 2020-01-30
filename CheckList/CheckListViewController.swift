//
//  ViewController.swift
//  CheckList
//
//  Created by Larissa Diniz  on 24/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    var todoList: TodoList
    
    required init?(coder: NSCoder) {
    
        todoList = TodoList()
        
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.todos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        let item = todoList.todos[indexPath.row]
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, at: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            configureCheckmark(for: cell, at: indexPath)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func configureText(for cell: UITableViewCell, with item: CheckListItems) {
        cell.textLabel?.text = item.text
    }
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        let isChecked = todoList.todos[indexPath.row].checked
        
        if isChecked {
            cell.accessoryType = .none
        } else {
            cell.accessoryType = .checkmark
        }
        todoList.todos[indexPath.row].checked = !isChecked
    }
}
