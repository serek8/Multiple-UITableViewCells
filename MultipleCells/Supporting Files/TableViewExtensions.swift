//
//  TableViewExtensions.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

extension UITableView {
    
    func getReusableCellSafe(cellType: AnyClass) -> UITableViewCell {
        var cell = self.dequeueReusableCell(withIdentifier: String(describing: cellType))
        if(cell == nil){
            let className = String(describing:cellType)
            self.register(UINib(nibName:  className, bundle: nil),
                               forCellReuseIdentifier:  className)
            cell = self.dequeueReusableCell(withIdentifier: String(describing: cellType))
        }
        return cell!
    }
    
}

