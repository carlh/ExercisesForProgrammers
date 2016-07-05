//
//  ViewController.swift
//  EX7
//
//  Created by Carl Hinkle on 7/3/16.
//  Copyright © 2016 Carl Hinkle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var lengthField: UITextField!
  @IBOutlet weak var widthField: UITextField!
  @IBOutlet weak var areaImperial: UILabel!
  @IBOutlet weak var areaMetric: UILabel!
  
  let calculator = AreaCalculator()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.areaImperial.text = "0 sq ft."
    self.areaMetric.text = "0 sq m."
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func calculateArea(sender: AnyObject) {
    if  let lengthString = self.lengthField.text,
        let length = Double(lengthString),
        let widthString = self.widthField.text,
        let width = Double(widthString) {
      
      let lengthM = calculator.ftToMeters(length)
      let widthM = calculator.ftToMeters(width)
      let area = calculator.area(length, width: width)
      let areaM = calculator.area(lengthM, width: widthM)
      
      self.areaImperial.text = String(format: "%0.2f sq ft.", area)
      self.areaMetric.text = String(format: "%0.2f sq m.", areaM)
    } else {
      self.areaImperial.text = "0 sq ft."
      self.areaMetric.text = "0 sq m."
    }
  }
}

