//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Roman Golubinko on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    private let userName = "Test"
    private let password = "Test"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logintButtonPressed() {
        if userNameTF.text != userName || passwordTF.text != password {
        showLoginAlert(title: "Login Failed.", message: "Please, enter correct login and password.", textField: passwordTF)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.name = userNameTF.text ?? ""
    }
    private func showLoginAlert (
        title: String,
        message: String,
        textField: UITextField
    )
    {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default) { _ in
            textField.text = ""
        })
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
