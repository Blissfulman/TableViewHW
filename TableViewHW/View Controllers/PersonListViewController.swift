//
//  ViewController.swift
//  TableViewHW
//
//  Created by User on 04.11.2020.
//  Copyright © 2020 Evgeny. All rights reserved.
//

import UIKit

class PersonListViewController: UITableViewController {

    // MARK: - Properties
    var personList: [Person]!
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBarController = self.tabBarController as! TabBarController
        personList = tabBarController.personList
    }
}

extension PersonListViewController {
    
    // MARK: - TableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell",
                                                 for: indexPath)
        cell.textLabel?.text = personList[indexPath.row].fullName
        return cell
    }
    
    // MARK: - TableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let personDetailsVC = PersonDetailsViewController(
            person: personList[indexPath.row]
        )
        navigationController?.pushViewController(personDetailsVC, animated: true)
    }
}
