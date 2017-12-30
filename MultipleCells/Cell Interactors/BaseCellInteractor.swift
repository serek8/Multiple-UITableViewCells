//
//  BaseCellInteractor.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

class BaseCellInteractor: NSObject {
    func getReusableCell(tableView: UITableView) -> UITableViewCell {
        fatalError("Subclasses need to implement the `getReusableCell()` method.")
    }
}
