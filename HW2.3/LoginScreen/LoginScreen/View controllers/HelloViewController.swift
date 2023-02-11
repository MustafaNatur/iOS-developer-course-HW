//
//  HelloViewController.swift
//  LoginScreen
//
//  Created by Мустафа Натур on 30.01.2023.
//

import UIKit

class HelloViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    var userLogin:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "Hello, \(userLogin ?? "ERROR")"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backHomeButton(_ sender: Any) {
        dismiss(animated: true)
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
