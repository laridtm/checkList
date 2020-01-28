//
//  ViewController.swift
//  CheckList
//
//  Created by Larissa Diniz  on 24/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        
        if let label = cell.viewWithTag(10) as? UILabel {
            if indexPath.row == 0 {
                label.text = "Run"
            } else {
                label.text = "Sleep"
            }
        }
        
        return cell
    }

}

