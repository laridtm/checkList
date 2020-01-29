//
//  TodoList.swift
//  CheckList
//
//  Created by Larissa Diniz  on 29/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class TodoList {
    
    var todos: [CheckListItems] = []
    
    init() {
        
        let row0Item = CheckListItems()
        let row1Item = CheckListItems()
        let row2Item = CheckListItems()
        let row3Item = CheckListItems()
        let row4Item = CheckListItems()
        
        row0Item.text = "Take a jog"
        row1Item.text = "Take a picture"
        row2Item.text = "Sleep"
        row3Item.text = "Make the dinner"
        row4Item.text = "Do the laundry"
        
        todos.append(row0Item)
        todos.append(row1Item)
        todos.append(row2Item)
        todos.append(row3Item)
        todos.append(row4Item)
    }
    
    
}
