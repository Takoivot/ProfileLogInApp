//
//  HobbyViewController.swift
//  ProfileLogInApp
//
//  Created by Артур Сахбиев on 28.04.2022.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBOutlet var hobbyLable: UILabel!
    
    var user: InfoUser!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyLable.text = user.human.hobby
    }

}
