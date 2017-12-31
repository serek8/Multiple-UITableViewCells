//
//  BaseTableInteractor.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 31/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

typealias CellEnum = Int

protocol BaseTableInteractorProtocol {
    func getCellInteractor(for index:Int) -> BaseCellInteractor?
    func getNumberCellInteractor() -> Int
}

class BaseTableInteractor<T: Hashable>: NSObject, BaseTableInteractorProtocol {
    
    // You can update this array to change the order of the Cell in the TableView
    var cellOrder: [T]
    var cellInteractors : [T:BaseCellInteractor]
    
    init(cellOrder: [T], cellInteractors : [T:BaseCellInteractor]) {
        self.cellOrder = cellOrder
        self.cellInteractors = cellInteractors
    }
    
    func getCellInteractor(for index:Int) -> BaseCellInteractor? {
        return cellInteractors[cellOrder[index]]
    }
    
    func getNumberCellInteractor() -> Int {
        return cellOrder.count
    }
    
    
    
    
}
