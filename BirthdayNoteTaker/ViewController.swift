//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Vipin on 19/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var dobTxt: UITextField!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var dobLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
            let myName = UserDefaults.standard.object(forKey: "name")
            let myDob = UserDefaults.standard.object(forKey: "dob")
        if myName != nil {
            nameLbl.text = "Name \(myName!)"
        }
        if myDob != nil {
            dobLbl.text = "DOB \(myDob!)"
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveBtnTapped(_ sender: Any) {
        
        print("Save Button Tapped")
        UserDefaults.standard.set(nameTxt.text, forKey: "name")
        UserDefaults.standard.set(dobTxt.text, forKey: "dob")
            nameLbl.text = "Name \(nameTxt.text!)"
            dobLbl.text = "DOB \(dobTxt.text!)"
    }
    
    @IBAction func deleteBtnTapped(_ sender: Any) {
        print("Delete Button Tapped")
        let name = UserDefaults.standard.object(forKey: "name")
        let dob = UserDefaults.standard.object(forKey: "dob")
        if name != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLbl.text = "Name "
        }
        if dob != nil{
            UserDefaults.standard.removeObject(forKey: "dob")
            dobLbl.text = "DOB "
        }
    }
}

