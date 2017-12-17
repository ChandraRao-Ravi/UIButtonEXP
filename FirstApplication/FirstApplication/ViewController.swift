//
//  ViewController.swift
//  FirstApplication
//
//  Created by Chandra Rao on 17/12/17.
//  Copyright © 2017 Chandra Rao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var btnSetDate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func setDateClicked(_ sender: Any) {
        getCurrentDate()
    }
    
    func getCurrentDate() {
        
        let date = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "dd/MMM/yyyy HH:mm:ss"
        let result = formatter.string(from: date)
        
        lblDate.text = result
        lblDate.backgroundColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor{
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
        
    }
    
}

