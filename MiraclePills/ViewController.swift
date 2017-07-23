//
//  ViewController.swift
//  MiraclePills
//
//  Created by Tom Blackburn on 22/07/2017.
//  Copyright © 2017 Tom Blackburn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateBtn: UIButton!
    @IBOutlet weak var lblZip: UILabel!
    @IBOutlet weak var txtZip: UITextField!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var txtCountry: UITextField!
    @IBOutlet weak var btnBuy: UIButton!
    @IBOutlet weak var imgSuccess: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.statePicker.dataSource = self
        self.statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        lblCountry.isHidden = true
        txtCountry.isHidden = true
        lblZip.isHidden = true
        txtZip.isHidden = true
        btnBuy.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        lblCountry.isHidden = false
        txtCountry.isHidden = false
        lblZip.isHidden = false
        txtZip.isHidden = false
        btnBuy.isHidden = false
    }
    
    @IBAction func btnBuyPressed(_ sender: Any) {
        imgSuccess.isHidden = false
    }
    
}

