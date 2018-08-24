//
//  ViewController.swift
//  Tudime
//
//  Created by MAC on 20/08/18.
//  Copyright © 2018 Ritara Apps Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func didTap(_ sender: UIButton) {
        
       
    }
    
    @IBAction func btnClick(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewControllerID") as! SecondViewController
       // self.present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)

    }
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var viewCountry: UIView!
    
    @IBOutlet weak var viewMobile: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewCountry.layer.borderColor = UIColor.lightGray.cgColor
     self.viewCountry.layer.borderWidth = 1
        self.viewMobile.layer.borderColor = UIColor.lightGray.cgColor
        self.viewMobile.layer.borderWidth = 1
        self.btnContinue.layer.borderColor = UIColor.lightGray.cgColor
        self.btnContinue.layer.borderWidth = 1

        // Do any additional setup after loading the view, typically from a nib.
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
}

