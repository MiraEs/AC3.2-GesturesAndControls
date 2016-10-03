//
//  SettingsViewController.swift
//  AC3.2-GesturesAndControls
//
//  Created by Jason Gresh on 9/29/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var colorSlider: UISlider!
    @IBOutlet weak var colorSliderBlue: UISlider!
    @IBOutlet weak var colorSliderGreen: UISlider!
    @IBOutlet weak var colorBar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorBar.backgroundColor = UIColor(red: CGFloat(colorSlider.value), green: CGFloat(colorSliderGreen.value), blue: CGFloat(colorSliderBlue.value), alpha: 1.0)
    }

 
    // MARK: - Functions
    
    @IBAction func colorUpdate(_ sender: UISlider) {
        self.colorBar.backgroundColor = UIColor(red: CGFloat(colorSlider.value), green: CGFloat(colorSliderGreen.value), blue: CGFloat(colorSliderBlue.value), alpha: 1.0)

    }
  

    
    // MARK: - Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gvc = segue.destination as? GesturesViewController, let hvc = segue.destination as? GesturesViewController, let ivc = segue.destination as? GesturesViewController  {
            gvc.correctColorValue = Double(colorSlider.value)
            hvc.correctColorValueTwo = Double(colorSliderGreen.value)
            ivc.correctColorValueThree = Double(colorSliderBlue.value)
        }
         self.colorBar.backgroundColor = UIColor(red: CGFloat(colorSlider.value), green: CGFloat(colorSliderGreen.value), blue: CGFloat(colorSliderBlue.value), alpha: 1.0)
 
    }
    
    
}
