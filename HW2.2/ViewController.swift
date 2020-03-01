//
//  ViewController.swift
//  HW2.2
//
//  Created by Александр Николаевич on 01.03.2020.
//  Copyright © 2020 Alexander Nikolaevich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redShow: UILabel!
    @IBOutlet weak var greenShow: UILabel!
    @IBOutlet weak var blueShow: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SliderChange()
        
        redShow.text = String(redSlider.value)
        greenShow.text = String(greenSlider.value)
        blueShow.text = String(blueSlider.value)
        
    }
    
    
    @IBAction func SliderChange() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    @IBAction func redSliderAction(){
        SliderChange()
        redShow.text = String(format: "%.2f", Double(redSlider.value))
    }
    
    @IBAction func greenSliderAction() {
        SliderChange()
        greenShow.text = String(format: "%.2f", Double(greenSlider.value))
    }
    
    
    @IBAction func blueSliderAction() {
        SliderChange()
        blueShow.text = String(format: "%.2f", Double(blueSlider.value))
        
    }
    
    

}


