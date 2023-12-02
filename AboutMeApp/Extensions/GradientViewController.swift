//
//  GradientViewController.swift
//  AboutMeApp
//
//  Created by Rustam Cherezbiev on 03.12.2023.
//

import UIKit

extension UIViewController {
    func addGradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemCyan.cgColor,
            UIColor.systemGray.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
