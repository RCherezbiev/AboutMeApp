//
//  PersonViewConroller.swift
//  AboutMeApp
//
//  Created by Rustam Cherezbiev on 02.12.2023.
//

import UIKit

final class PersonViewController: UIViewController {
    
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surenameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var postLabel: UILabel!
    
    @IBOutlet var myPhotoImageView: UIImageView!
    
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
        //myPhotoImageView.image = UIImage(named: "myPhoto")
        title = "\(personOne.person.name) \(personOne.person.surename)"
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        nameLabel.text = "Имя: \(personOne.person.name)."
        surenameLabel.text = "Фамилия: \(personOne.person.surename)."
        ageLabel.text = "Возраст: \(personOne.person.age)."
        companyLabel.text = "Компания: \(personOne.person.company)."
        postLabel.text = "Должность: \(personOne.person.post)."
        
    }
}
