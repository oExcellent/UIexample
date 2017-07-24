//
//  ViewController.swift
//  UiPractice
//
//  Created by Max Walters on 7/23/17.
//  Copyright © 2017 DevMW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dt: UIDatePicker!
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dateChose(_ sender: Any) {
        
        //Saves the date
        let date:Date = dt.date
        //allows for date to be formatted
        let formatter:DateFormatter = DateFormatter()
        //chooses the format of the date
        formatter.dateFormat = "EEEE"
        
        //chooses the variable where the date is stored, converts it to string with its chosen format
        let dow:String = formatter.string(from: date)
        lbl.text = "It was a \(dow)"

        //Closes the keyboard
        view.endEditing(true)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}

