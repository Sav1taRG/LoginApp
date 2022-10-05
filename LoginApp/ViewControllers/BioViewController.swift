//
//  BioViewController.swift
//  LoginApp
//
//  Created by Roman Golubinko on 05.10.2022.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var bioImage: UIImageView!
    @IBOutlet var descLB: UILabel!
    
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientLayer(topColor: .systemMint, bottomColor: .systemFill)
        bioImage.image = UIImage(named: user.person.photoBio)
        descLB.text = user.person.description
    }
    
    override func viewWillLayoutSubviews() {
        bioImage.layer.cornerRadius = 30
    }
    
    
    
    
    
    
}
