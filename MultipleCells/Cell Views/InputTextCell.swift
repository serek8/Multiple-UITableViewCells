//
//  InputTextCell.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

class InputTextCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var textFieldValue: UITextField!
    
    var interactor: InputTextCellInteractor?
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        interactor?.value = sender.text ?? ""
    }
    
    func configure(interactor: InputTextCellInteractor, title: String, value: String) {
        self.interactor = interactor
        labelTitle.text = title
        textFieldValue.text = value
    }
    
    
}






