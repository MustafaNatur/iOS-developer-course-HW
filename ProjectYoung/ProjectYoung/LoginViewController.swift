//
//  LoginViewController.swift
//  ProjectYoung
//
//  Created by Мустафа Натур on 22.03.2023.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var glassView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureGlassView()

    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        animateShaking()
    }
    
    func configureGlassView() {
        glassView.layer.cornerRadius = 25
        glassView.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        glassView.clipsToBounds = true
        glassView.applyBlurEffect()
    }
    
    func animateShaking() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: glassView.center.x - 10, y: glassView.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: glassView.center.x + 10, y: glassView.center.y))
        glassView.layer.add(animation, forKey: "position")
    }

}

extension UIView {
    func applyBlurEffect() {
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //addSubview(blurEffectView)

    }
    
    func setShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = .zero
        layer.shadowRadius = 100
    }
}
