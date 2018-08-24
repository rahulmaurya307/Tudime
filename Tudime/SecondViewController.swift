//
//  SecondViewController.swift
//  Tudime
//
//  Created by MAC on 21/08/18.
//  Copyright © 2018 Ritara Apps Pvt. Ltd. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func btnNext(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ThirdviewcontrollerID") as! ThirdViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
    @IBOutlet weak var txtCode: UITextField!
    @IBOutlet weak var viewVerif: UIView!
    @IBOutlet weak var btnContinue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Verification"
        
        
        self.viewVerif.layer.borderColor = UIColor.lightGray.cgColor
        self.viewVerif.layer.borderWidth = 1
        self.btnContinue.layer.borderColor = UIColor.lightGray.cgColor
        self.btnContinue.layer.borderWidth = 1
        // Do any additional setup after loading the view.
    }

    @IBAction func txtCode_textchnage(_ sender: UITextField) {
        
        let length = txtCode.text?.characters.count
        var sa = txtCode.text
        if (length! > 4)
        {
            let index = sa?.index((sa?.startIndex)!, offsetBy: 4)
            txtCode.text = txtCode.text?.substring(to: index!)
            
        }
    }
    
}
