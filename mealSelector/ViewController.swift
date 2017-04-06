//
//  ViewController.swift
//  mealSelector
//
//  Created by zeyong shan on 4/5/17.
//  Copyright © 2017 zeyong shan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    var data = Data()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        print("program start!!!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.getLength()
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var list = data.getRestrants()
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    @IBAction func random() {
        let length = data.getLength()
        let restrantNum = Int(arc4random_uniform(UInt32(length)))
        let list = data.getRestrants()
        data.setResult(list[restrantNum])
        self.performSegue(withIdentifier: "getResult", sender: nil)
    }
    
    @IBOutlet weak var tableView: UITableView!
}

