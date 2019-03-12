//
//  TableViewController.swift
//  TurtleWorld
//
//  Created by Emanuel Schmoczer on 12.03.19.
//  Copyright © 2019 Emanuel Schmoczer. All rights reserved.
//

import UIKit
import Model

class TableViewController: UITableViewController {

    private let dataSource = TableViewDataModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Letters"
        tableView.dataSource = dataSource

        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
