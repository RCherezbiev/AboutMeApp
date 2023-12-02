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
    
    private let personOne = User.getPersonData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientLayer()
        
        title = "\(personOne.person.name) \(personOne.person.surename)"
        nameLabel.text = "Имя: \(personOne.person.name)."
        surenameLabel.text = "Фамилия: \(personOne.person.surename)."
        ageLabel.text = "Возраст: \(personOne.person.age)."
        companyLabel.text = "Компания: \(personOne.person.company)."
        postLabel.text = "Должность: \(personOne.person.post)."
        
    }
}
