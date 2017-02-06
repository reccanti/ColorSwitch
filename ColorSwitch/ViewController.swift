//
//  ViewController.swift
//  ColorSwitch
//
//  Created by Benjamin Wilcox on 2/1/17.
//  Copyright © 2017 Benjamin Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swatch: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redPercent: UILabel!
    @IBOutlet weak var greenPercent: UILabel!
    @IBOutlet weak var bluePercent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redVal:Float = redSlider.value
        let greenVal:Float = greenSlider.value
        let blueVal:Float = blueSlider.value
        updateSwatch(red: redVal, green: greenVal, blue: blueVal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
     * a function that updates the color of 
     * the color swatch
     */
    @IBAction func onUpdate(_ sender: UISlider) {
        let redVal:Float = redSlider.value
        let greenVal:Float = greenSlider.value
        let blueVal:Float = blueSlider.value
        updateSwatch(red: redVal, green: greenVal, blue: blueVal)
        
    }
    
    func updateSwatch(red: Float, green: Float, blue: Float) {
        redPercent.text = "\(Int(round(red * 100)))%"
        redPercent.sizeToFit()
        
        greenPercent.text = "\(Int(round(green * 100)))%"
        greenPercent.sizeToFit()
        
        bluePercent.text = "\(Int(round(blue*100)))%"
        bluePercent.sizeToFit()
        
        swatch.backgroundColor = UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: 1.0)
    }
}

