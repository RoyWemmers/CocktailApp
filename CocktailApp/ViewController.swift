//
//  ViewController.swift
//  CocktailApp
//
//  Created by Roy Wemmers on 04/11/2018.
//  Copyright © 2018 Roy Wemmers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthDatePicker: UIDatePicker!

    @IBAction func submitBtn(_ sender: UIButton) {
        
        let now = Date()
        let birthday: Date = birthDatePicker.date
        let calendar = Calendar.current
        
        let ageComponents = calendar.dateComponents([.year], from: birthday, to: now)
        let age = ageComponents.year!
        
        if(age >= 18) {
            performSegue(withIdentifier: "showMainView", sender: self)
        } else {
            // create the alert
            let alert = UIAlertController(title: "Underage!", message: "You are not 18 yet!", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

}

