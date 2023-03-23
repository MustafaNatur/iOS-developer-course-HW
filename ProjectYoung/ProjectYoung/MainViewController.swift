//
//  MainViewController.swift
//  ProjectYoung
//
//  Created by Мустафа Натур on 23.03.2023.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUITabBar()
    }
    
    func configureUITabBar() {
        viewControllers = [
            generateViewController(name: "News", image: UIImage(systemName: "newspaper.fill"), controller: NewsViewController()),
            generateViewController(name: "Market", image: UIImage(systemName: "bag.fill"), controller: MarketViewController()),
            generateViewController(name:"Me", image: UIImage(systemName: "person.fill"), controller: LoginViewController())
        ]
        
        let blurEffect = UIBlurEffect(style: .light) // here you can change blur style
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = CGRect(x: tabBar.bounds.origin.x, y: tabBar.bounds.origin.y - 10, width: tabBar.bounds.width, height: 100)
        blurView.autoresizingMask = .flexibleWidth
        tabBar.insertSubview(blurView, at: 0)
    }
    
    func generateViewController(name:String, image:UIImage?, controller: UIViewController) -> UIViewController {
        controller.tabBarItem.title = name
        controller.tabBarItem.image = image
        return controller
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
