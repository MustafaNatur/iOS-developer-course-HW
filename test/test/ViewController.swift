//
//  ViewController.swift
//  test
//
//  Created by Мустафа Натур on 23.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        view.backgroundColor = .clear
        return view
    }()
    
    let imageView = {
        let view = UIImageView()
        return view
    }()

    
    let loginTextField = {
        let textField = UITextField()
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.attributedPlaceholder = NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        textField.backgroundColor = .lightText
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.addSubview(imageView)
        setViewSettings()
        
        imageView.addSubview(mainView)
        
        mainView.center = imageView.center
        mainView.applyBlurEffect()
        setLoginTextField()
        
        // Do any additional setup after loading the view.
    }
    
    func setLoginTextField() {
        mainView.addSubview(loginTextField)
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        loginTextField.widthAnchor.constraint(equalToConstant: 240).isActive = true
        loginTextField.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20 ).isActive = true
    }
    
    func setViewSettings(){
        let background = UIImage(named: "img3")
        
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        imageView.isUserInteractionEnabled = true
        view.addSubview(imageView)
    }


}

extension UIView {
    func applyBlurEffect() {
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(blurEffectView)
        blurEffectView.clipsToBounds = true
    }
    
    func setShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = .zero
        layer.shadowRadius = 100
    }
}

