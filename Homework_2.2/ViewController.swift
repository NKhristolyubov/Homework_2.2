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
        
        viewMixColor.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(greenColorSlider.value),
            alpha: 1)
    }

    @IBAction func redColorSliderAction() {
        redColorRangedLabel.text = String(format: "%.2f",redColorSlider.value)
        
        viewMixColor.backgroundColor = UIColor(red: CGFloat(redColorSlider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
    }
    
    @IBAction func greenColorSliderAction() {
        greenColorRangedLabel.text = String(format: "%.2f",greenColorSlider.value)
        viewMixColor.backgroundColor = UIColor(red: CGFloat(redColorSlider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
    }
    
    @IBAction func blueColorSliderAction() {
        blueColorRangedLabel.text = String(format: "%.2f",blueColorSlider.value)
        viewMixColor.backgroundColor = UIColor(red: CGFloat(redColorSlider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
    }
    
    
}

