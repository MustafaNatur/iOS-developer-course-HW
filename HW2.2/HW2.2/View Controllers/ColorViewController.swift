//
//  ColorViewController.swift
//  HW2.2
//
//  Created by Мустафа Натур on 01.02.2023.
//

import UIKit



class ColorViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    weak var delegate:ColorViewControllerProtocool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToEdit" {
            if let vc = segue.destination as? ViewController {
                vc.delegate = self
            }
        }
    }
    
}

extension ColorViewController: ColorViewControllerProtocool {
    func chageColor(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) {
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
}
