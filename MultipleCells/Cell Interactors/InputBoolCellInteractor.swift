//
//  InputBoolCellInteractor.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

class InputBoolCellInteractor: BaseCellInteractor {

    var title: String
    var value: Bool
    
    init(title: String, value: Bool) {
        self.title = title
        self.value = value
        super.init()
        
    }
    
    override func getReusableCell(tableView: UITableView) -> UITableViewCell {
        let cell = tableView.getReusableCellSafe(cell: InputBoolCell.self)
        cell.configure(interactor: self, title: title, value: value)
        return cell
    }
    
}






