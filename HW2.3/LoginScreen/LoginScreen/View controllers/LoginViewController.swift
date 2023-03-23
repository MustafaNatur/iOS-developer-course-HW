//
//  LoginViewController.swift
//  LoginScreen
//
//  Created by Мустафа Натур on 30.01.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    var login:String?
    var password:String?
    
    var model = Model(User(name: "Admin", secondName: "Admin", login: "Admin", password: "Admin"))
    
    let passwordTextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 50, y: 50, width: 240, height: 30)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        textField.backgroundColor = .lightText
        return textField
    }()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordtextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        passwordtextField.delegate = self
        view.addSubview(passwordTextField)
    }
    
    @IBAction func applyButton(_ sender: Any) {
        login = nameTextField.text
        password = passwordtextField.text
        if (login?.isEmpty)! || (password?.isEmpty)! {
            //callAlert(title: "Oops...", message: "There are empty fields")
        } else {
            if (model.isContains(login!, password!)) {
                performSegue(withIdentifier: "ToHello", sender: self)
            } else {
                //callAlert(title: "Oops...", message: "Wrong data")
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToHello" {
            if let vc = segue.destination as? HelloViewController {
                vc.userLogin = login
            }
        }
    }
    


}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    } // called when 'return' key pressed. return NO to ignore.
    
}
