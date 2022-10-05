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
    private let userObject = User.getUser()
    
    // MARK: Life Cycles Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let tabBarController = segue.destination as? UITabBarController else {
            return
        }
        guard let viewControllers = tabBarController.viewControllers else {
            return
        }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = userObject
            } else if let naviController = $0 as? UINavigationController {
                let infoVC = naviController.topViewController as! InfoViewController
                infoVC.user = userObject
            }
        }
    }
    
    // MARK: IB Actions
    @IBAction func authReminder(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(
            title: "User Name reminder.",
            message: "Your username: \(userObject.name).",
            textField: passwordTF
        )
        :  showAlert(
            title: "Password reminder.",
            message: "Your password: \(userObject.password)",
            textField: passwordTF
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func loginButtonPressed() {
        guard userNameTF.text == userObject.name,
              passwordTF.text == userObject.password else {
            showAlert(
                title: "Login Failed.",
                message: "Please, enter correct login and password.",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    // MARK: Alert Private Method
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
