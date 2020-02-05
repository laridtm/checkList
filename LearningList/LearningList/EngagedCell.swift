//
//  EngagedCell.swift
//  LearningList
//
//  Created by Larissa Diniz  on 05/02/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class EngagedCell: UITableViewCell {
    
    @IBOutlet weak var engagedImage: UIImageView!
    @IBOutlet weak var engagedNames: UILabel!
    @IBOutlet weak var weddingDate: UILabel!
    @IBOutlet weak var weddingLocal: UILabel!
    
    func setEngaged(engaged: Engageds) {
        engagedImage.image = engaged.engagedImage
        engagedNames.text = engaged.engagedNames
        weddingDate.text = engaged.weddingDate
        weddingLocal.text = engaged.weddingLocal
    }

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
