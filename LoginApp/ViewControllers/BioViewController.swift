//
//  BioViewController.swift
//  LoginApp
//
//  Created by Roman Golubinko on 05.10.2022.
//

import UIKit

class BioViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var bioImage: UIImageView!
    @IBOutlet var descLB: UILabel!
    
    // MARK: Public Properties
    var user: User!
    
    // MARK: Life Cycles Methods
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
