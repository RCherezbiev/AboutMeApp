//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Rustam Cherezbiev on 02.12.2023.
//

import UIKit

final class BioViewController: UIViewController {
    @IBOutlet var bioTextLabel: UILabel!
    
    private let personOne = User.getPersonData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientLayer()
        title = "\(personOne.person.name) \(personOne.person.surename)"
        bioTextLabel.text = personOne.person.bio
    }
}
