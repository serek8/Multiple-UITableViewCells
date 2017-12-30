//
//  BaseCellInteractor.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

class BaseCellInteractor: NSObject {
    var cellType: AnyClass {
        fatalError("You have to override `cellType` variable in the "+String(describing: self)+" interactor.")
    }
    func configure(_ cell: UITableViewCell) {
        fatalError("You have to override `configure` variable in the "+String(describing: self)+" interactor.")
    }
}
