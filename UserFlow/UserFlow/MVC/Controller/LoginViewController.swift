//
//  LoginViewController.swift
//  UserFlow
//
//  Created by Yogesh Patel on 08/11/21.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func signinButtonTapped(_ sender: UIButton){
        let users = DatabaseHelper.shareInstance.getAllUsers()
        for user in users{
            print(user.firstname)
            print(user)
        }
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton){
        if let signupViewController = self.storyboard?.instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController{
            self.navigationController?.pushViewController(signupViewController, animated: true)
        }
    }
    
}

//DO Email, password - validation and empty condition

/*
 let window = (UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate).window
 if let homeViewController = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as? HomeViewController{
     let navigationController = UINavigationController(rootViewController: homeViewController)
     window?.rootViewController = navigationController
     window?.makeKeyAndVisible()
 }
 */
