//
//  ListInteractor.swift
//  MultipleCell
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit


enum ListInteractorCell : CellEnum {
    case firstName
    case lastName
    case isAboveEighteen
    case sampleImage
}

class ListInteractor: BaseTableInteractor<ListInteractorCell> {

    typealias Cell = ListInteractorCell
    
    init() {
        super.init(
            cellOrder: [
                Cell.firstName,
                Cell.lastName,
                Cell.isAboveEighteen,
                Cell.sampleImage],
            
            cellInteractors:  [
                Cell.firstName : InputTextCellInteractor(title: "First Name", value: ""),
                Cell.lastName : InputTextCellInteractor(title: "Last Name", value: ""),
                Cell.isAboveEighteen : InputTextCellInteractor(title: "Last Name", value: ""),
                Cell.sampleImage : InputBoolCellInteractor(title: "Is Above 18?", value: false)
            ])
    }
}









