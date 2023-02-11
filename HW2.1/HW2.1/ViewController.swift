//
//  ViewController.swift
//  HW2.1
//
//  Created by Мустафа Натур on 06.12.2022.
//

import UIKit

enum Status {
    case start
    case changeColor
}

enum allAltha:Double {
    case allLight = 1.0
    case allNoLight = 0.3
}

class ViewController: UIViewController {

    // MARK: set outlets
    @IBOutlet var colorViews: [UIView]!
    @IBOutlet weak var buttonColor: UIButton!
    var status:Status = .start
    var currentAltha:allAltha = .allNoLight
    var currentLightView:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for cview in colorViews {
            cview.alpha = currentAltha.rawValue
            cview.layer.cornerRadius = cview.frame.width/2
        }
    }

    // MARK: button handle
    @IBAction func changeColor(_ sender: UIButton) {
        switch status {
        case .start:
            currentAltha = .allLight
            status = .changeColor
            updateView()
        case .changeColor :
            currentAltha = .allNoLight
            updateView()
            currentLightView+=1
        }
    }
    
    // MARK: Update View func
    func updateView() {
        if (currentLightView > 2) {
            currentLightView = 0
        }
        for cview in colorViews {
            cview.alpha = currentAltha.rawValue
        }
        colorViews[currentLightView].alpha = allAltha.allLight.rawValue
    }
}

