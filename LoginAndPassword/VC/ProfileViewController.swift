//
//  ProfileViewController.swift
//  LoginAndPassword
//
//  Created by Евгений Прохоров on 12.12.2020.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var name: String?
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        usernameLabel.text = name
        userImage.clipsToBounds = true
        userImage.layer.cornerRadius = userImage.frame.size.width / 2
    }
    
    @IBAction func logOutButton(_ sender: Any) {
        performSegue (withIdentifier: "unwindToStart", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
