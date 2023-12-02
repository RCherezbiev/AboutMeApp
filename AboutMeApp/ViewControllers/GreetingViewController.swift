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
        userGreetingLabel.text = "Welcome, \(personOne.userName.capitalized)!"
        realNameLabel.text = "My name is, \(personOne.person.name)"
    }
}

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
