//
//  ViewController.swift
//  Homework_2.2
//
//  Created by Николай Христолюбов on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewMixColor: UIView!
    
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var redColorRangedLabel: UILabel!
    @IBOutlet var greenColorRangedLabel: UILabel!
    @IBOutlet var blueColorRangedLabel: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    private var redViewValue: CGFloat = 0
    private var greenViewValue: CGFloat = 0
    private var blueViewValue: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewMixColor.backgroundColor = UIColor(red: redViewValue, green: greenViewValue, blue: blueViewValue, alpha: 1)
        redColorSlider.value = 0
        greenColorSlider.value = 0
        blueColorSlider.value = 0
    }

    @IBAction func redColorSliderAction() {
        redColorRangedLabel.text = String(format: "%.2f",redColorSlider.value)
        redViewValue = CGFloat(redColorSlider.value)
        viewMixColor.backgroundColor = UIColor(red: redViewValue, green: greenViewValue, blue: blueViewValue, alpha: 1)
    }
    
    @IBAction func greenColorSliderAction() {
        greenColorRangedLabel.text = String(format: "%.2f",greenColorSlider.value)
        greenViewValue = CGFloat(greenColorSlider.value)
        viewMixColor.backgroundColor = UIColor(red: redViewValue, green: greenViewValue, blue: blueViewValue, alpha: 1)
    }
    
    @IBAction func blueColorSliderAction() {
        blueColorRangedLabel.text = String(format: "%.2f",blueColorSlider.value)
        blueViewValue = CGFloat(blueColorSlider.value)
        viewMixColor.backgroundColor = UIColor(red: redViewValue, green: greenViewValue, blue: blueViewValue, alpha: 1)
    }
    
    
}

