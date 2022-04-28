//
//  LogOutViewController.swift
//  ProfileLogInApp
//
//  Created by Артур Сахбиев on 28.04.2022.
//

import UIKit

class LogOutViewController: UIViewController {

    
    @IBOutlet var welcomeUser: UILabel!
    
    var welcomeU: String = ""
    var user: InfoUser!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = "Welcome, \(user.human.fullName)"
    }

}
