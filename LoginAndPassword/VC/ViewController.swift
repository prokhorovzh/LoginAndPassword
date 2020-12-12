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
        if SGUUser.login.rawValue == loginField.text! && SGUUser.password.rawValue == passwordField.text!{
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let tabBarController = segue.destination as! UITabBarController
                let destinationVC = tabBarController.viewControllers?.first as! ProfileViewController
                destinationVC.name = "\(loginField.text!) \(passwordField.text!) \(SGUUser.username.rawValue)"
                
            }
        } else {
            let alertVC = UIAlertController(
                        title: "Error",
                        message: "Неверный логин или пароль",
                        preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertVC.addAction(action)
            self.present(alertVC, animated: true, completion: nil)
            print("АЛЛО \(loginField.text!)")
        }
    }
    
    @IBAction func unwind (_ seg: UIStoryboardSegue) {
        
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }

}

