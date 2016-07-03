//
//  ViewController.swift
//  EFP3
//
//  Created by Carl Hinkle on 7/3/16.
//  Copyright © 2016 Carl Hinkle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var authorInput: UITextField!
  @IBOutlet weak var quoteInput: UITextField!
  @IBOutlet weak var outputLabel: UILabel!
  
  
  @IBAction func editingChanged(sender: UITextField) {
    let name: String
    let quote: String
    if let authorName = self.authorInput.text where authorName.characters.count > 0 {
      name = authorName
    } else {
      name = "No one"
    }
    
    if let quoteValue = self.quoteInput.text where quoteValue.characters.count > 0 {
      quote = "\"" + quoteValue + "\""
    } else {
      quote = "nothing"
    }
    
    outputLabel.text = name + " said " + quote
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.outputLabel.text = "Tell us who said something..."
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

