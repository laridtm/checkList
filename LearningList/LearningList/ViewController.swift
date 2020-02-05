//
//  ViewController.swift
//  LearningList
//
//  Created by Larissa Diniz  on 05/02/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var engageds: EveryEngageds = EveryEngageds()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return engageds.everyEngageds.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 99
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
        let couple = engageds.everyEngageds[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EngagedCell") as! EngagedCell
        
        cell.setEngaged(engaged: couple)
        
        return cell
       }
}

