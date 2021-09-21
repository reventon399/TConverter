//
//  ViewController.swift
//  TConverter
//
//  Created by Алексей Лосев on 10.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliousLabel: UILabel!
    @IBOutlet weak var farengeitLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    
    @IBAction func sliderChanger(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliousLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        farengeitLabel.text = "\(fahrenheitTemperature)ºF"
        
    }
    
}

