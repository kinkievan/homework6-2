//
//  tipViewController.swift
//  homeworktip
//
//  Created by Kinki Lai on 2017/3/1.
//  Copyright © 2017年 Kinki Lai. All rights reserved.
//

import UIKit

class tipViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func calculateAction(_ sender: Any) {
        self.view.endEditing(true)
        if(amountTextField.text=="" || tipTextField.text=="")
        {
        resultLabel.text="輸入資料錯誤"
        }
        else
        {
        let tip=round(Double(amountTextField.text!)!*Double(tipTextField.text!)!/100)
            resultLabel.text=String(tip)
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
