//
//  DailyViewController.swift
//  NewsApp
//
//  Created by EE on 18.02.2021.
//

import UIKit

class DailyViewController: UIViewController {

    @IBOutlet weak var daily: UITextField!
    @IBOutlet weak var dailyLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnClick(_ sender: UIButton) {
        print("Click")
        print("\(daily.text)")
        daily.text = "Test"
        print("\(daily.text)")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
