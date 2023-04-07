//
//  ViewController.swift
//  AddPatient
//
//  Created by Bhavesh on 12/08/22.
//

import UIKit
import CoreData
class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var MiddleName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var Address: UITextField!
    @IBOutlet weak var City: UITextField!
    @IBOutlet weak var State: UITextField!
    @IBOutlet weak var ZipCode: UITextField!
    
    
    @IBOutlet weak var Firstnameerror: UILabel!
    @IBOutlet weak var Middlenameerror: UILabel!
    
    @IBOutlet weak var Lastnameerror: UILabel!
    
    @IBOutlet weak var Addresserror: UILabel!
    @IBOutlet weak var Cityerror: UILabel!
    
    @IBOutlet weak var Stateerror: UILabel!
    
    @IBOutlet weak var Zipcodeerror: UILabel!
    
    @IBOutlet weak var SaveButton: UIButton!
    
    @IBOutlet weak var FetchButton: UIButton!
    
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet weak var PrevButton: UIButton!
    var index=0
    override func viewDidLoad() {
        super.viewDidLoad()
        FirstName.isEnabled=false
        MiddleName.isEnabled=false
        LastName.isEnabled=false
        Address.isEnabled=false
        City.isEnabled=false
        State.isEnabled=false
        ZipCode.isEnabled=false
        SaveButton.isEnabled=false
        FetchButton.isEnabled=false
        NextButton.isEnabled=false
        PrevButton.isEnabled=false
        // Do any additional setup after loading the view.
        self.FirstName.delegate=self
        self.MiddleName.delegate=self
        self.LastName.delegate=self
        self.Address.delegate=self
        self.City.delegate=self
        self.State.delegate=self
        self.ZipCode.delegate=self
        let tap: UIGestureRecognizer = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                
        view.addGestureRecognizer(tap)
    
        
    }
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.FirstName:
            self.MiddleName.becomeFirstResponder()
        case self.MiddleName:
            self.LastName.becomeFirstResponder()
        case self.LastName:
            self.Address.becomeFirstResponder()
        case self.Address:
            self.City.becomeFirstResponder()
        case self.City:
            self.State.becomeFirstResponder()
        case self.State:
            self.ZipCode.becomeFirstResponder()
        default:
            self.ZipCode.resignFirstResponder()
            
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
    
    

}
