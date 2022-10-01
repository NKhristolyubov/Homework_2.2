//
//  ViewController.swift
//  Homework_2.2
//
//  Created by Николай Христолюбов on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewMixColor: UIView!
    
    @IBOutlet var redColorRangedLabel: UILabel!
    @IBOutlet var greenColorRangedLabel: UILabel!
    @IBOutlet var blueColorRangedLabel: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setColor()
        
        setValue()
    }

    @IBAction func rgbSliderAction(_ sender: UISlider) {
       setColor()
        
        setValue()
    }
    
    private func setColor() {
        viewMixColor.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
    
    private func setValue() {
        redColorRangedLabel.text = String(format: "%.2f",redColorSlider.value)
        greenColorRangedLabel.text = String(format: "%.2f",greenColorSlider.value)
        blueColorRangedLabel.text = String(format: "%.2f",blueColorSlider.value)
    }
}

