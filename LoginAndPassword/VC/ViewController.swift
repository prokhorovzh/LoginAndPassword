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
        guard let login = loginField.text, let password = passwordField.text else { return }
        if SGUUser.login.rawValue == login && SGUUser.password.rawValue == password {
            let tabBarController = segue.destination as! UITabBarController
            let navigationController = tabBarController.viewControllers?.first as! UINavigationController
            let destinationVC = navigationController.viewControllers.first as! ProfileViewController
            destinationVC.login = login
            destinationVC.password = password
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

