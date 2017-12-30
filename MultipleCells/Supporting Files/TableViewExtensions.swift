//
//  TableViewExtensions.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

extension UITableView {
    
    
    func getReusableCellSafe<T>(cell: T.Type) -> T {
        var cell = self.dequeueReusableCell(withIdentifier: String(describing: T.self))
            as? T
        if(cell == nil){
            self.registerCells(nibName: String(describing:T.self),
                               tableView: self)
            cell = self.dequeueReusableCell(withIdentifier: String(describing: T.self))
                as? T
        }
        return cell!
    }
    
    private func registerCells(nibName: String, tableView: UITableView) {
        tableView.register(UINib(nibName:  nibName, bundle: nil),
                           forCellReuseIdentifier: nibName)
    }
    
}

