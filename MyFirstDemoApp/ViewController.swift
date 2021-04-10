//
//  ViewController.swift
//  MyFirstDemoApp
//
//  Created by Shaikat on 20/3/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var textBirthYear: UITextField!
    @IBOutlet weak var laNowAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       textBirthYear.delegate = self
    }
    
    @IBAction func BuForAge(_ sender: Any) {
        GetAge()
    }
    
    func GetAge() {
        let yearOfBirth = Int(textBirthYear.text!)
        //let personAge = 2021 - yearOfBirth!
        let date = Date()
        let calender = Calendar.current
        let year = calender.component(.year, from: date)
        let personAge = year - yearOfBirth!
        laNowAge.text = "Your age is \(personAge)"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        GetAge()
        self.view.endEditing(true)
        return true
    }
}

