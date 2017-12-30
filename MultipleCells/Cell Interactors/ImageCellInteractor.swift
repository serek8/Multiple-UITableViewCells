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
    
    override var cellType: AnyClass {
        return ImageCell.self
    }
    override func configure(_ cell : UITableViewCell) {
        guard let cell = cell as? ImageCell else { return }
        cell.configure(interactor: self, title: title)
    }
    

    
}



