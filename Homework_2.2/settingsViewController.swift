//
//  ViewController.swift
//  Homework_2.2
//
//  Created by Николай Христолюбов on 30.09.2022.
//

import UIKit

class settingsViewController: UIViewController {
    
    @IBOutlet var viewMixColor: UIView!
    
    @IBOutlet var redColorRangedLabel: UILabel!
    @IBOutlet var greenColorRangedLabel: UILabel!
    @IBOutlet var blueColorRangedLabel: UILabel!
    
    @IBOutlet weak var redColorTF: UITextField!
    @IBOutlet weak var greenColorTF: UITextField!
    @IBOutlet weak var blueColorTF: UITextField!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    var delegate: settingsViewControllerDelegate!
    var viewColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewMixColor.backgroundColor = viewColor
        redColorTF.delegate = self
        greenColorTF.delegate = self
        blueColorTF.delegate = self
        
        setSliders()
        
        setValue(for: redColorTF, greenColorTF, blueColorTF)
        setValue(for: redColorRangedLabel, greenColorRangedLabel, blueColorRangedLabel)
    }

    @IBAction func rgbSliderAction(_ sender: UISlider) {
       
        setColor()
        setValue(for: redColorTF, greenColorTF, blueColorTF)
        setValue(for: redColorRangedLabel, greenColorRangedLabel, blueColorRangedLabel)
    }
    
    @IBAction func doneButtonPressed() {
        delegate.setColor(color: viewMixColor.backgroundColor ?? .white)
        dismiss(animated: true)
    }
    
    private func setSliders() {
        let ciColor = CIColor(color: viewColor)
        redColorSlider.value = Float(ciColor.red)
        greenColorSlider.value = Float(ciColor.green)
        blueColorSlider.value = Float(ciColor.blue)
    }
    
    private func setValue(for labels: UILabel...) {
        for label in labels {
            if label == redColorRangedLabel {
                label.text = string(from: redColorSlider)
            } else if label == greenColorRangedLabel {
                label.text = string(from: greenColorSlider)
            } else {
                label.text = string(from: blueColorSlider)
            }
        }
    }
    
    private func setValue(for textFields: UITextField...) {
        for textField in textFields {
            if textField == redColorTF {
                redColorTF.text = string(from: redColorSlider)
            } else if textField == greenColorTF {
                greenColorTF.text = string(from: greenColorSlider)
            } else {
                blueColorTF.text = string(from: blueColorSlider)
            }
        }
    }
        
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private func setColor() {
        viewMixColor.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1)
        
        
    }
}
extension settingsViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        guard let text = textField.text else { return }
        
        if let currentText = Float(text), currentText <= 1 {
            switch textField {
            case redColorTF:
                redColorSlider.value = currentText
                redColorRangedLabel.text = text
            case greenColorTF:
                greenColorSlider.value = currentText
                greenColorRangedLabel.text = text
            default:
                blueColorSlider.value = currentText
                blueColorRangedLabel.text = text
            }
            setColor()
            return
        }
        showAlert(title: "Attention!", message: "Wrong format!")
            
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAktion = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAktion)
        present(alert, animated: true)
            
        }
    
    
}
