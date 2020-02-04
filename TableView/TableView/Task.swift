//
//  Task.swift
//  TableView
//
//  Created by Larissa Diniz  on 03/02/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation
import UIKit

class Task {
    
    var image: UIImage
    var tittle: String
    var text: String
    var checked = true
    
    init(image: UIImage, tittle: String, text: String) {
        self.image = image
        self.tittle = tittle
        self.text = text
    }
    
    func toggleChecked() {
        checked = !checked
    }
}
