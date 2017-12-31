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

//protocol CellProto: RawRepresentable {
//
//}
typealias CellEnum = Int

//public class Abc : Hashable, ExpressibleByIntegerLiteral{
//    public var hashValue: Int
//
//    public typealias IntegerLiteralType = Int
//    var value : Int
//    public static func == (lhs: Abc, rhs: Abc) -> Bool {
//        return (lhs.value == rhs.value && lhs.value == rhs.value)
//    }
//
//    public required init(integerLiteral value: IntegerLiteralType) {
//        self.value = value
//    }
//
//
//}

class BaseTableInteractor: NSObject, BaseTableInteractorProtocol {
    
    // You can update this array to change the order of the cells in the TableView
    var cellOrder: [CellEnum]
    var cellInteractors : [CellEnum:BaseCellInteractor]
    
    init(cellOrder: [CellEnum], cellInteractors : [CellEnum:BaseCellInteractor]) {
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



class ListInteractor: BaseTableInteractor {
    
    enum Cells : CellEnum {
        var description: String {
            return ""
        }
        
        case firstName
        case lastName
        case isAboveEighteen
        case sampleImage
    }
    
    
    init() {
        super.init(
            cellOrder: [
                Cells.firstName.rawValue,
                Cells.lastName.rawValue,
                Cells.isAboveEighteen.rawValue,
                Cells.sampleImage.rawValue],
            
            cellInteractors:  [
                Cells.firstName.rawValue : InputTextCellInteractor(title: "First Name", value: ""),
                Cells.lastName.rawValue : InputTextCellInteractor(title: "Last Name", value: ""),
                Cells.isAboveEighteen.rawValue : InputTextCellInteractor(title: "Last Name", value: ""),
                Cells.sampleImage.rawValue : InputBoolCellInteractor(title: "Is Above 18?", value: false)
            ])
        
        
    }
    
    
    

    
}









