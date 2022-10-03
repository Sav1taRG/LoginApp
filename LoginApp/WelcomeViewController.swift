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
        view.setGradientLayer()
        welcomeLabel.text = "Welcome, \(name)!"
    }
    
    
}
extension UIView {
    func setGradientLayer() {
        
        let topColor =  UIColor.systemMint.cgColor
        let bottomColor = UIColor.systemPink.cgColor
        
        let gradient = CAGradientLayer()
        gradient.colors = [topColor, bottomColor]
        gradient.locations = [0.0, 1.0]
        gradient.frame = bounds
        
        layer.insertSublayer(gradient, at:0)
    }
}

