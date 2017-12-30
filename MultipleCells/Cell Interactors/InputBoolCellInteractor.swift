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
    
    override var cellType: AnyClass {
        return InputBoolCell.self
    }
    
    override func configure(_ cell : UITableViewCell) {
        guard let cell = cell as? InputBoolCell else { return }
        cell.configure(interactor: self, title: title, value: value)
    }
    
}






