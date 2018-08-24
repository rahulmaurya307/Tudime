//
//  scrolViewController.swift
//  Tudime
//
//  Created by MAC on 23/08/18.
//  Copyright © 2018 Ritara Apps Pvt. Ltd. All rights reserved.
//

import UIKit

class scrolViewController: UIViewController {
    @IBOutlet weak var scrolView: UIScrollView!
    
    @IBOutlet weak var lab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        scrolView.contentLayoutGuide.bottomAnchor.constraint(equalTo: lab.bottomAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
