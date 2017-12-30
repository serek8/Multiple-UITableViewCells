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
    
    override func configure(_ cell : UITableViewCell) {
        guard let cell = cell as? InputTextCell else { return }
        cell.configure(interactor: self, title: title, value: value)
    }
    
    override var cellType: AnyClass {
        return InputTextCell.self
    }

    
    
    
}







