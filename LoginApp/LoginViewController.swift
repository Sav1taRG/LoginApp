//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Roman Golubinko on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: Private properties
    private let userName = "Test"
    private let password = "Test"
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.name = userNameTF.text ?? ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: IB Actions
    @IBAction func userNameReminder() {
        showAlert(
            title: "User Name reminder.",
            message: "Your username: \(userName).",
            textField: userNameTF)
    }
    
    @IBAction func passwordReminder() {
        showAlert(
            title: "Password reminder.",
            message: "Your password: \(password)",
            textField: passwordTF)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func loginButtonPressed() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(
                title: "Login Failed.",
                message: "Please, enter correct login and password.",
                textField: passwordTF
            )
        }
    }
    
    // MARK: Alert func
    private func showAlert (
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
}
