//
//  ViewController.swift
//  Segue
//
//  Created by SOWA KILLIAN on 04/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var myString:String = ""
    var formDatas:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
    }

    @IBAction func okButtonClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toSecondViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondViewController" {
            if let dest = segue.destination as? SecondViewController {
                dest.myString = self.formDatas
            }
        }
    }
    
}

extension ViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        if let str = textField.text {
            self.formDatas = str
            print(self.formDatas)
        }
        return true
    }
}

