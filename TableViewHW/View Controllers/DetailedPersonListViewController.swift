//
//  DetailedPersonListViewController.swift
//  TableViewHW
//
//  Created by User on 04.11.2020.
//  Copyright © 2020 Evgeny. All rights reserved.
//

import UIKit

class DetailedPersonListViewController: UITableViewController {

    // MARK: - Properties
    var personList: [Person]!
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appTabBarController = tabBarController as! TabBarController
        personList = appTabBarController.personList
    }
}

extension DetailedPersonListViewController {
    
    // MARK: - TableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedPersonCell",
                                                 for: indexPath)
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = personList[indexPath.section].phoneNumber
            cell.imageView?.image = UIImage(systemName: "phone")
        case 1:
            cell.textLabel?.text = personList[indexPath.section].email
            cell.imageView?.image = UIImage(systemName: "tray")
        default: break
        }
        return cell
    }
}
