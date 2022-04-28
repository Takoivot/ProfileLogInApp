//
//  UserInfoViewController.swift
//  ProfileLogInApp
//
//  Created by Артур Сахбиев on 28.04.2022.
//

import UIKit

class UserInfoViewController: UIViewController {

    var user: InfoUser!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.human.fullName

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userPhotoVC = segue.destination as? PhotoUserViewController else {return}
        userPhotoVC.user = user
    }
    
}
