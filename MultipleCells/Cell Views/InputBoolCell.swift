//
//  InputBoolCell.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

class InputBoolCell: UITableViewCell {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var switchValue: UISwitch!
    
    var interactor : InputBoolCellInteractor?
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        interactor?.value = sender.isOn
    }
    
    func configure(interactor: InputBoolCellInteractor, title: String, value: Bool) {
        self.interactor = interactor
        labelTitle.text = title
        switchValue.isOn = value
    }
    
}
