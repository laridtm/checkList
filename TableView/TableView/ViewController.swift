//
//  ViewController.swift
//  TableView
//
//  Created by Larissa Diniz  on 03/02/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var itemTasks: Tasks = Tasks()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemTasks.tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = itemTasks.tasks[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlannerCell") as! PlannerCell
        
        cell.setTask(task: task)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let task =  itemTasks.tasks[indexPath.row] //todoList.todos[indexPath.row]
            configureCheckmark(for: cell, with: task)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
        
    private func configureCheckmark(for cell: UITableViewCell, with task: Task) {
        if task.checked {
            cell.accessoryType = .none
        } else {
            cell.accessoryType = .checkmark
        }
        
        task.toggleChecked()
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        <#code#>
//    }
}

