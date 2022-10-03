//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Roman Golubinko on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientLayer(topColor: .systemMint, bottomColor: .systemPink)
        welcomeLabel.text = "Welcome, \(name)!"
    }
}

// MARK: Backgroud Gradient color
extension UIView {
    func setGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        
        let gradient = CAGradientLayer()
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.frame = bounds
        
        layer.insertSublayer(gradient, at:0)
    }
}

