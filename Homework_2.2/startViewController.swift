//
//  startViewController.swift
//  Homework_2.2
//
//  Created by Николай Христолюбов on 15.10.2022.
//

import UIKit

protocol settingsViewControllerDelegate {
    func setColor (color: UIColor)
}

class startViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as! settingsViewController
        settingsVC.delegate = self
        settingsVC.viewColor = view.backgroundColor
    
    }

  
}

extension startViewController: settingsViewControllerDelegate {
    func setColor (color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
