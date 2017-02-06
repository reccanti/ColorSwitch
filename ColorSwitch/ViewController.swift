//
//  ViewController.swift
//  ColorSwitch
//
//  Created by Benjamin Wilcox on 2/1/17.
//  Copyright © 2017 Benjamin Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var swatch: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
     * a function that updates the color of 
     * the color swatch
     */
    @IBAction func updateSwatch(_ sender: UISwitch) {
        let redVal:Float = redSwitch.isOn ? 1.0 : 0.0
        let greenVal:Float = greenSwitch.isOn ? 1.0 : 0.0
        let blueVal:Float = blueSwitch.isOn ? 1.0 : 0.0
        swatch.backgroundColor = UIColor(colorLiteralRed: redVal, green: greenVal, blue: blueVal, alpha: 1.0)
    }
}

