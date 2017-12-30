//
//  ImageCell.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    
    var interactor : ImageCellInteractor?

    func configure(interactor: ImageCellInteractor, title: String) {
        self.interactor = interactor
        labelTitle.text = title
    }
    
}
