//
//  resultViewController.swift
//  mealSelector
//
//  Created by zeyong shan on 4/6/17.
//  Copyright © 2017 zeyong shan. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

    var data = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if data.getResult() != nil
        {
            result.text = data.getResult()!
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var result: UILabel!

}
