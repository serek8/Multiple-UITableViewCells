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
    func getNumberCellInteractor() -> Int
}


class ListInteractor: NSObject, BaseTableInteractorProtocol {
    
    enum Cells : Int{
        case firstName
        case lastName
        case isAboveEighteen
        case sampleImage
    }
    
    // You can update this array to change the order of the cells in the TableView
    private var cellOrder: [Cells] = [
        .firstName,
        .lastName,
        .isAboveEighteen,
        .sampleImage]
    
    private(set) lazy var cellInteractors : [Cells:BaseCellInteractor] = [
        .firstName : createCellInteractor(for: .firstName),
        .lastName : createCellInteractor(for: .lastName),
        .isAboveEighteen : createCellInteractor(for: .isAboveEighteen),
        .sampleImage : createCellInteractor(for: .sampleImage)
    ]
    
    func getCellInteractor(for index:Int) -> BaseCellInteractor? {
        return cellInteractors[cellOrder[index]]
    }
    
    func getNumberCellInteractor() -> Int {
        return cellOrder.count
    }
    
    func createCellInteractor(for cell: Cells) -> BaseCellInteractor {
        switch cell {
        case .firstName:
            return InputTextCellInteractor(title: "First Name", value: "")
            
        case .lastName:
            return InputTextCellInteractor(title: "Last Name", value: "")
            
        case .isAboveEighteen:
            return InputBoolCellInteractor(title: "Is Above 18?", value: false)

        case .sampleImage:
            return ImageCellInteractor(title: "Sample Image")
        }
    }
    
}









