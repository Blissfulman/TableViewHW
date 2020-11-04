//
//  PersonDetailsViewController.swift
//  TableViewHW
//
//  Created by User on 04.11.2020.
//  Copyright © 2020 Evgeny. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    // MARK: - Properties
    var person: Person!
    
    private let phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initializers
    convenience init(person: Person) {
        self.init()
        self.person = person
    }
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        setupUI()
        setupLayout()
    }
    
    // MARK: - Setup UI
    private func setupUI() {
        view.backgroundColor = .white
        title = person.fullName
        
        view.addSubview(phoneNumberLabel)
        view.addSubview(emailLabel)
        
        phoneNumberLabel.text = "Phone: " + person.phoneNumber
        emailLabel.text = "Email: " + person.email
    }
    
    // MARK: - Setup layout
    private func setupLayout() {
        let constraints = [
            phoneNumberLabel.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30
            ),
            phoneNumberLabel.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16
            ),
            phoneNumberLabel.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16
            ),
            phoneNumberLabel.bottomAnchor.constraint(
                equalTo: emailLabel.topAnchor, constant: -30
            ),
            
            emailLabel.leadingAnchor.constraint(
                equalTo: phoneNumberLabel.leadingAnchor
            ),
            emailLabel.trailingAnchor.constraint(
                equalTo: phoneNumberLabel.trailingAnchor
            )
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
