//
//  ViewController.swift
//  DonApp
//
//  Created by mac mini on 24/10/2016   .
//  Copyright © 2017 By Arjun Yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var textfield:UITextField = UITextField()
    var labelview:UILabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
 labelview = UILabel.init(frame: CGRect(x: 16, y: 50, width: self.view.frame.width-32, height: 40))
        labelview.backgroundColor = UIColor.clear
        labelview.text = ""
 textfield = UITextField.init(frame: CGRect(x: 16, y: 100, width: self.view.frame.width-32, height: 40))
        textfield.keyboardType = .numberPad
        textfield.textColor = UIColor.blue
        //textfield.borderStyle = .none
        textfield.layer.borderWidth = 2.0
        textfield.layer.borderColor = UIColor.lightGray.cgColor
        textfield.becomeFirstResponder()
        self.view.addSubview(textfield)
        
        let submitbutton = UIButton.init(frame:CGRect(x: 32, y: 150, width: self.view.frame.width-64, height: 50))
        submitbutton.setTitle("SUBMIT", for: .normal)
            submitbutton.backgroundColor = UIColor.blue
        submitbutton.addTarget(self, action: #selector(submitaction(sender:)), for: .touchDown)
        self.view.addSubview(submitbutton)
        self.view.addSubview(labelview)
    
    }
    func submitaction(sender:UIButton) {
        self.view.endEditing(true)
        labelview.text = textfield.text
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

