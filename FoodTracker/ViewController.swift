//
//  ViewController.swift
//  FoodTracker
//
//  Created by Sulaiman  Ahmed on 7/13/20.
//  Copyright © 2020 Sulaiman  Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        labelName.text = nameTextField.text
    }
    
    //MARK: Actions
    @IBAction func setLabel(_ sender: UIButton) {
        labelName.text = nameTextField.text
        
    }
    
    

}

