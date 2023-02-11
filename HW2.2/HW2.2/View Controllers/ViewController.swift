//
//  ViewController.swift
//  HW2.2
//
//  Created by Мустафа Натур on 06.12.2022.
//

import UIKit

protocol ColorViewControllerProtocool: AnyObject {
    func chageColor(_ red:CGFloat, _ green:CGFloat, _ blue:CGFloat)
}

class ViewController: UIViewController {


    @IBOutlet weak var blueSliderField: UITextField!
    @IBOutlet weak var greenSliderField: UITextField!
    @IBOutlet weak var redSliderField: UITextField!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueSliderField.delegate = self
        redSliderField.delegate = self
        greenSliderField.delegate = self
        colorView.layer.cornerRadius = 20
        updateView()
    }
        
    weak var delegate:ColorViewControllerProtocool?
    
    // MARK: updateView function
    private func updateView() {
        let redValue = redSlider.value
        let greenValue = greenSlider.value
        let blueValue = blueSlider.value
        colorView.backgroundColor = UIColor(red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat(blueValue/255), alpha: 1)
        greenSliderField.text = "\(Int(greenValue))"
        redSliderField.text = "\(Int(redValue))"
        blueSliderField.text = "\(Int(blueValue))"
        
    }
    
    private func updateSliderValue() {
        redSlider.value = Float(redSliderField.text!) ?? 0
        greenSlider.value = Float(greenSliderField.text!) ?? 0
        blueSlider.value = Float(blueSliderField.text!) ?? 0

    }
    
    
    // MARK: move slider handler
    @IBAction func sliderMove(_ sender: UISlider) {
        updateView()
    }
    
    @IBAction func applyButton(_ sender: Any) {
        delegate?.chageColor(CGFloat(redSlider.value/255), CGFloat(greenSlider.value/255), CGFloat(blueSlider.value/255))
        dismiss(animated: true)
    }
    

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        updateSliderValue()
        updateView()
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        updateSliderValue()
        updateView()
        view.endEditing(true)
    }
    
}

