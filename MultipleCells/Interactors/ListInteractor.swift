//
//  ListInteractor.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

protocol BaseTableInteractorProtocol {
    func getCellInteractor(for index:Int) -> BaseCellInteractor?
    func getNumberOfVisibleCells() -> Int
}


class ListInteractor: BaseTableInteractorProtocol {
    
    // All cells that may appear
    enum Cell : Int {
        case firstName
        case lastName
        case isAboveEighteen
        case sampleImage
    }
    
    // The visible cells in the given order
    var cellOrder: [Cell] = [
        .firstName,
        .lastName,
        .isAboveEighteen,
        .sampleImage
    ]
    
    // Corresponding 'Cell Interactors' for each Cell enum
    var cellInteractors : [Cell:BaseCellInteractor] = [
        .firstName : InputTextCellInteractor(title: "First Name", value: ""),
        .lastName : InputTextCellInteractor(title: "Last Name", value: ""),
        .isAboveEighteen : InputBoolCellInteractor(title: "Is Above 18?", value: false),
        .sampleImage : ImageCellInteractor(title: "Sample Image")
    ]
    
    func getCellInteractor(for index:Int) -> BaseCellInteractor? {
        return cellInteractors[cellOrder[index]]
    }
    
    func getNumberOfVisibleCells() -> Int {
        return cellOrder.count
    }
}

