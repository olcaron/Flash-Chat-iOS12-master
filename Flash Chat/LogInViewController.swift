//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {
        
        SVProgressHUD.show()

        
        //TODO: Log in the user
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if error != nil {
                // login is not sucess
                print(error!)
            } // fin du if
            else {
                // login is sucess
                print("Login Sucessfull!")
                
                SVProgressHUD.dismiss()
                // on change le view controller et on affiche l'interface de chat
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }// fin du else
        }// fin du closure
        
    }// fin de logInPressed
    


    
}// fin de LogInViewController
