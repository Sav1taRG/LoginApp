//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Roman Golubinko on 05.10.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var firstNameLb: UILabel!
    @IBOutlet var lastNameLB: UILabel!
    @IBOutlet var companyLB: UILabel!
    @IBOutlet var divisionLB: UILabel!
    @IBOutlet var positionLB: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientLayer(topColor: .systemMint, bottomColor: .systemFill)
        
        firstNameLb.text = user.person.firstName
        lastNameLB.text = user.person.lastName
        companyLB.text = user.person.company
        divisionLB.text = user.person.division
        positionLB.text = user.person.position
    }
    
    
    
    
    
    
}
