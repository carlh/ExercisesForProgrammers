//
//  ViewController.swift
//  EFP_2
//
//  Created by Carl Hinkle on 7/2/16.
//  Copyright © 2016 Carl Hinkle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let noValueMessage = "Plese enter value above..."

  @IBOutlet weak var displayLabel: UILabel!
  @IBOutlet weak var valueField: UITextField!
  
  @IBAction func valueChanged(sender: AnyObject) {
    if let value = self.valueField.text where value.characters.count > 0 {
      self.displayLabel.text = "\(value) has \(value.characters.count) characters."
    } else {
      self.displayLabel.text = self.noValueMessage
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.displayLabel.text = self.noValueMessage
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

