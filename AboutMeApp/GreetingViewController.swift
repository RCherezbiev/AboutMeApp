//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by Rustam Cherezbiev on 27.11.2023.
//

import UIKit

class GreetingViewController: UIViewController {
    
    @IBOutlet var userGreetingLabel: UILabel!
    
    var greetingValue: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userGreetingLabel.text = userGreetingLabel.text! + greetingValue.capitalized + "!"
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
