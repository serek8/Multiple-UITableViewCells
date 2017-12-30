//
//  ListVCTableViewController.swift
//  MultipleCells
//
//  Created by Jan Seredynski on 30/12/2017.
//  Copyright © 2017 Jan Seredynski. All rights reserved.
//

import UIKit

class ListTableVC: UITableViewController {

    var interactor : BaseTableInteractorProtocol? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor = ListInteractor()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return interactor?.getNumberCellInteractor() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = interactor?.getCellInteractor(for: indexPath.row)?.getReusableCell(tableView: tableView)
        return cell ?? UITableViewCell()
    }
    

}
