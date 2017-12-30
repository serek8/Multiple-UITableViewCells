//
//  ImageCellInteractor.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

class ImageCellInteractor: BaseCellInteractor {

    var title: String
    
    init(title: String) {
        self.title = title
        super.init()
        
    }
    
    override func getReusableCell(tableView: UITableView) -> UITableViewCell {
        let cell = tableView.getReusableCellSafe(cell: ImageCell.self)
        cell.configure(interactor: self, title: title)
        return cell
    }
    
    
}



