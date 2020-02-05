//
//  PlannerCell.swift
//  TableView
//
//  Created by Larissa Diniz  on 03/02/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class PlannerCell: UITableViewCell {

    @IBOutlet weak var imageRef: UIImageView!
    @IBOutlet weak var tittleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setTask(task: Task) {
        imageRef.image = task.image
        tittleLabel.text = task.tittle
        descriptionLabel.text = task.text
    }
}
