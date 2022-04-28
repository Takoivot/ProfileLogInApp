//
//  PhotoUserViewController.swift
//  ProfileLogInApp
//
//  Created by Артур Сахбиев on 28.04.2022.
//

import UIKit

class PhotoUserViewController: UIViewController {
    
    @IBOutlet var userPhoto: UIImageView!
    
    var user: InfoUser!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPhoto.image = UIImage(named: user.human.photo)
        userPhoto.layer.cornerRadius = 40
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let hobbyVC = segue.destination as? HobbyViewController else {return}
        hobbyVC.user = user
    }
    
}

