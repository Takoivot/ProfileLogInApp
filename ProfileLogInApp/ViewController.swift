//
//  ViewController.swift
//  ProfileLogInApp
//
//  Created by Артур Сахбиев on 28.04.2022.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!

    // MARK: Private Properties
    private let user = InfoUser.getInfoUser()
    
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        passwordTF.delegate = self
        
        passwordTF.enablesReturnKeyAutomatically = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //guard let logOutVC = segue.destination as? LogOutViewController else {return}
        //logOutVC.welcomeU = userNameTF.text ?? "Enter User Name"
        guard let tubBarVC = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tubBarVC.viewControllers else {return}
        
        viewControllers.forEach{
            if let logOutVC = $0 as? LogOutViewController  {
                logOutVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let infoUserVC = navigationVC.topViewController as? UserInfoViewController
                infoUserVC?.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
            super.touchesBegan(touches, with: event)
    }
    
    // MARK: IBActions
    @IBAction func unwindSegueToLogInScreen(_ segue: UIStoryboardSegue){
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func logInButtonPressed() {
        guard let enterName = userNameTF.text, !enterName.isEmpty else {
            showAlert(with: "User Name field is empty",
                      and: "Pleas enter your Name")
            return
    }
        
        guard let enterPassword = passwordTF.text, !enterPassword.isEmpty else {
            showAlert(with: "Password field is empty",
                      and: "Enter your password")
            return
    }
        
        if enterName != user.userName || enterPassword != user.userPassword  {
            showAlert(with: "Sorry, wrong User Name or Password",
                      and: "Try Again")
    }
    }
    @IBAction func hintUserName() {
        showAlert(with: "Need help?",
                  and: "Your name is \(user.userName)")
    }
    
    @IBAction func hintPassword() {
        showAlert(with: "Need help?",
                  and: "Your password is \(user.userPassword)")
    }
    
    //MARK: Public Method
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
            
        }
        return true
    }
    
}

    // MARK: Private Methods
extension ViewController {
    private func showAlert(with title: String, and massage: String){
        let alert = UIAlertController(title: title,
                                      message: massage,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

