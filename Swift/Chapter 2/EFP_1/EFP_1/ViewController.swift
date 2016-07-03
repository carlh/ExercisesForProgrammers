//
//  ViewController.swift
//  EFP_1
//
//  Created by Carl Hinkle on 7/2/16.
//  Copyright © 2016 Carl Hinkle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var helloPart = "Hello, ";
  var niceToMeetYouPart = ", nice to meet you!"
  let initialMessage = "Hi, enter your name above"

  @IBOutlet weak var outputLabel: UILabel!
  
  @IBAction func updateMessage(sender: AnyObject) {
    if let textField = sender as? UITextField {
      @IBOutlet weak var valueField: UITextField!
      if textField.text?.characters.count > 0 {
        self.outputLabel.text = "Hi, \(textField.text!), nice to meet you!"
      } else {
        self.outputLabel.text = initialMessage
      }
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.outputLabel.text = self.initialMessage
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

