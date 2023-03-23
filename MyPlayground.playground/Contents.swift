import UIKit

import PlaygroundSupport

class MyViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        view.backgroundColor = .white
        
        // Create UIButton
        let myButton = UIButton(type: .system)
        
        // Position Button
        myButton.frame = CGRect(x: 20, y: 20, width: 100, height: 50)

        // Set text on button
        myButton.setTitle("Tap me", for: .normal)
        myButton.setTitle("Pressed + Hold", for: .highlighted)
        
        // Set button action
         myButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        view.addSubview(myButton)
        self.view = view
    }
    
    @objc func buttonAction()
    {
        print("Button tapped")
    }
    
}

PlaygroundPage.current.liveView = MyViewController()
