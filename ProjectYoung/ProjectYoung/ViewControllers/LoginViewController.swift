//
//  ViewController.swift
//  testGlassView
//
//  Created by Мустафа Натур on 14.03.2023.
//

import UIKit
import AudioToolbox


class LoginViewController: UIViewController {
    
    let signUpLabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.text = "Sign up"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 100)
        return label
    }()
    
    let imageView = {
        let view = UIImageView()
        return view
    }()
    
    let imageViewUser = {
        let view = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.image = UIImage(systemName: "person.circle")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let loginTextField = {
        let textField = UITextField()
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.attributedPlaceholder = NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        textField.backgroundColor = .lightText
        return textField
    }()
    
    
    let passwordTextField = {
        let textField = UITextField()
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        textField.backgroundColor = .lightText
        return textField
    }()

    
    let glassView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 300, height: 280)
        view.layer.cornerRadius = 30
        view.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        view.clipsToBounds = true
        view.layer.borderWidth = 3
        view.layer.borderColor = CGColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 0.65)
        //rgba(238, 238, 238, 0.65)
        return view
    }()
    

    let animateButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewSettings()
        setGlassViewSettings()
        setAnimateButtonSettings()
        setImageViewUser()
        setLoginTextField()
        setPasswordTextField()
        setSingUpLabel()
    }
    
    func setSingUpLabel() {
        imageView.addSubview(signUpLabel)
        imageView.sendSubviewToBack(signUpLabel)
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signUpLabel.topAnchor.constraint(equalTo: glassView.topAnchor, constant: -80).isActive = true
        signUpLabel.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        signUpLabel.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    func setImageViewUser() {
        glassView.addSubview(imageViewUser)
        imageViewUser.translatesAutoresizingMaskIntoConstraints = false
        imageViewUser.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageViewUser.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageViewUser.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageViewUser.topAnchor.constraint(equalTo: glassView.topAnchor, constant: 20).isActive = true
    }
    
    func setLoginTextField() {
        glassView.addSubview(loginTextField)
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.centerXAnchor.constraint(equalTo: glassView.centerXAnchor).isActive = true
        loginTextField.widthAnchor.constraint(equalToConstant: 240).isActive = true
        loginTextField.topAnchor.constraint(equalTo: imageViewUser.bottomAnchor, constant: 20 ).isActive = true
    }
    
    func setPasswordTextField() {
        glassView.addSubview(passwordTextField)
        //glassView.bringSubviewToFront(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.centerXAnchor.constraint(equalTo: glassView.centerXAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 240).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20).isActive = true
    }

    
    func setAnimateButtonSettings() {
        view.addSubview(animateButton)
        animateButton.translatesAutoresizingMaskIntoConstraints = false
        animateButton.topAnchor.constraint(equalTo: glassView.bottomAnchor, constant: 20).isActive = true
        animateButton.rightAnchor.constraint(equalTo: glassView.rightAnchor).isActive = true
        animateButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        animateButton.addTarget(self, action: #selector(action), for: .touchUpInside)
    }
    
    @objc func action(){
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 3
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: glassView.center.x - 10, y: glassView.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: glassView.center.x + 10, y: glassView.center.y))
        glassView.layer.add(animation, forKey: "position")

    }

    func setGlassViewSettings() {
        glassView.applyBlurEffect()
        imageView.addSubview(glassView)
        glassView.clipsToBounds = true
        
        glassView.translatesAutoresizingMaskIntoConstraints = false
        glassView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        glassView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        glassView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        glassView.heightAnchor.constraint(equalToConstant: 280).isActive = true
        
    }
    
    func setViewSettings(){
        let background = UIImage(named: "backgroundImage")

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
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
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

enum Vibration {
      case error
      case success
      case warning
      case light
      case medium
      case heavy
      @available(iOS 13.0, *)
      case soft
      @available(iOS 13.0, *)
      case rigid
      case selection
      case oldSchool

      public func vibrate() {
          switch self {
          case .error:
              UINotificationFeedbackGenerator().notificationOccurred(.error)
          case .success:
              UINotificationFeedbackGenerator().notificationOccurred(.success)
          case .warning:
              UINotificationFeedbackGenerator().notificationOccurred(.warning)
          case .light:
              UIImpactFeedbackGenerator(style: .light).impactOccurred()
          case .medium:
              UIImpactFeedbackGenerator(style: .medium).impactOccurred()
          case .heavy:
              UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
          case .soft:
              if #available(iOS 13.0, *) {
                  UIImpactFeedbackGenerator(style: .soft).impactOccurred()
              }
          case .rigid:
              if #available(iOS 13.0, *) {
                  UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
              }
          case .selection:
              UISelectionFeedbackGenerator().selectionChanged()
          case .oldSchool:
              AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
          }
      }
  }
