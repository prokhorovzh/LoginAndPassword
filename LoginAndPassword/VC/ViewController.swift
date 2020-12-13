//
//  ViewController.swift
//  LoginAndPassword
//
//  Created by Евгений Прохоров on 12.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SignInButton: UIButton!
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SignInButton.layer.cornerRadius = 10
    }
    
    
    @IBAction func buttonAction(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "logIn" else { return }
        let tabBarController = segue.destination as! UITabBarController
        let destinationVC = tabBarController.navigationController?.viewControllers.first as! ProfileViewController
        if SGUUser.login.rawValue == loginField.text! && SGUUser.password.rawValue == passwordField.text! {
            destinationVC.login = loginField.text
            destinationVC.password = passwordField.text
        } else {
            let alertVC = UIAlertController(
                        title: "Error",
                        message: "Неверный логин или пароль",
                        preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertVC.addAction(action)
            self.present(alertVC, animated: true, completion: nil)
            print("АЛЛО \(SGUUser.login.rawValue)")
        }
    }
    
    @IBAction func unwind (_ seg: UIStoryboardSegue) {
        
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }

}

