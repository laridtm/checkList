//
//  Engageds.swift
//  LearningList
//
//  Created by Larissa Diniz  on 05/02/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation
import UIKit

struct Engageds {
     
    var engagedImage: UIImage
    var engagedNames: String
    var weddingDate: String
    var weddingLocal: String
    
    init(engagedImage: UIImage, engagedNames: String, weddingDate: String, weddingLocal: String) {
        self.engagedImage = engagedImage
        self.engagedNames = engagedNames
        self.weddingDate = weddingDate
        self.weddingLocal = weddingLocal
    }
}
