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
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        title = "\(personOne.person.name) \(personOne.person.surename)"
        bioTextLabel.text = personOne.person.bio
    }
}
