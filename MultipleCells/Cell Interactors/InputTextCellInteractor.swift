//
//  InputTextCellInteractor.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

class InputTextCellInteractor: BaseCellInteractor {

    var title: String
    var value: String
    
    init(title: String, value: String) {
        self.title = title
        self.value = value
        super.init()
        
    }
    
    override func getReusableCell(tableView: UITableView) -> UITableViewCell {
        let cell = tableView.getReusableCellSafe(cell: InputTextCell.self)
        cell.configure(interactor: self, title: title, value: value)
        return cell
    }
    
    
    
}







