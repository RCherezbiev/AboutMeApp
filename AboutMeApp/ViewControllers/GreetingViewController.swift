//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by Rustam Cherezbiev on 27.11.2023.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    @IBOutlet var userGreetingLabel: UILabel!
    @IBOutlet var realNameLabel: UILabel!
    
    var greetingValue: String!
    
    private let personOne = User.getPersonData()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientLayer()
        userGreetingLabel.text = "Welcome, \(greetingValue ?? "")"
        realNameLabel.text = "My name is, \(personOne.person.name)"
    }
}
