//
//  AddViewController.swift
//  mealSelector
//
//  Created by zeyong shan on 4/6/17.
//  Copyright © 2017 zeyong shan. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    var data = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func add() {
        if textField.text == ""
        {
            nameTitle.text = "input again!!"
            return
        }
        data.addRestrant(textField.text!)
        self.performSegue(withIdentifier: "backToMain", sender: nil)
    }
 
    @IBOutlet weak var textField: UITextField!

    @IBOutlet weak var nameTitle: UILabel!
}
