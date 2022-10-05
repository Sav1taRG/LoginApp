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
    @IBOutlet var ageLb: UILabel!
    @IBOutlet var companyLB: UILabel!
    @IBOutlet var divisionLB: UILabel!
    @IBOutlet var positionLB: UILabel!
    @IBOutlet var titleLb: UINavigationItem!
   
    @IBOutlet var userImage: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientLayer(topColor: .systemMint, bottomColor: .systemFill)
        
        firstNameLb.text = user.person.firstName
        lastNameLB.text = user.person.lastName
        ageLb.text = user.person.age
        companyLB.text = user.person.company
        divisionLB.text = user.person.division
        positionLB.text = user.person.position
        title = user.person.fullName

        
        userImage.image = UIImage(named: user.person.photo)
    }
    
    
    override func viewWillLayoutSubviews() {
        userImage.layer.cornerRadius = 30
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else {
            return
        }
        bioVC.user = user
    }
}
