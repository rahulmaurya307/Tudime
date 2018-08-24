//
//  ThirdViewController.swift
//  Tudime
//
//  Created by MAC on 21/08/18.
//  Copyright © 2018 Ritara Apps Pvt. Ltd. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    

    @IBOutlet weak var txtLang: UITextField!
    let lan = ["Hindi","English","French","Spanish"]
    var selectedLang : String?
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var viewSet: UIView!
    override func viewDidLoad()
        {
        super.viewDidLoad()
        self.title = "Verification"
        createLangPicker()
        createToolbar()
        self.viewSet.layer.borderColor = UIColor.lightGray.cgColor
        self.viewSet.layer.borderWidth = 1
        self.btnContinue.layer.borderColor = UIColor.lightGray.cgColor
        self.btnContinue.layer.borderWidth = 1

        // Do any additional setup after loading the view.
    }
        func createLangPicker()
    {
        let langPicker = UIPickerView ()
        langPicker.delegate = self
        txtLang.inputView = langPicker
        langPicker.backgroundColor = .black
        
        
    }
    func createToolbar()
    {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        toolbar.barTintColor = .black
        toolbar.tintColor = .white
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ThirdViewController.dismissKeyboard))
        toolbar.setItems([doneButton], animated: false)
        toolbar.isUserInteractionEnabled = true
        txtLang.inputAccessoryView = toolbar
    }

    @objc func dismissKeyboard()
{
    view.endEditing(true)
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
extension ThirdViewController: UIPickerViewDataSource, UIPickerViewDelegate
{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return lan.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return lan[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedLang = lan[row]
        txtLang.text = selectedLang
        
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label: UILabel
        if let view = view as? UILabel
        {
            label = view
        }
        else
        {
            label = UILabel()
        }
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "Menlo-Regular", size: 17)
        label.text = lan[row]
        return label
    }

    
    
}
