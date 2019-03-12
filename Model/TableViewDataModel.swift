//
//  TableViewDataModel.swift
//  Model
//
//  Created by Emanuel Schmoczer on 12.03.19.
//  Copyright © 2019 Emanuel Schmoczer. All rights reserved.
//

import UIKit

public class TableViewDataModel: NSObject, UITableViewDataSource {

    private var model = IndexedGroup("a", "b", "c", "d", "e")

    public func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
        return model.count
    }

    public func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "element",
                                                 for: indexPath)
        cell.textLabel?.text = model[indexPath.row]
        return cell
    }

    public func tableView(_ tableView: UITableView,
                          canEditRowAt indexPath: IndexPath) -> Bool {
        return model.count > 1
    }

    public func tableView(_ tableView: UITableView,
                          commit editingStyle: UITableViewCell.EditingStyle,
                          forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            model = model.removed(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    public func tableView(_ tableView: UITableView,
                          moveRowAt fromIndexPath: IndexPath,
                          to: IndexPath) {
        model = model.moved(from: fromIndexPath.row,
                            to:  to.row)

    }
}

