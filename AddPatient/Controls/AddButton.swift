//
//  Add_button.swift
//  AddPatient
//
//  Created by Bhavesh on 24/08/22.
//

import Foundation
import UIKit
import CoreData

extension ViewController
{
@IBAction func AddData(_ sender: Any) {
    FirstName.isEnabled=true
    MiddleName.isEnabled=true
    LastName.isEnabled=true
    Address.isEnabled=true
    City.isEnabled=true
    State.isEnabled=true
    ZipCode.isEnabled=true
    FirstName.text=""
    MiddleName.text=""
    LastName.text=""
    Address.text=""
    City.text=""
    State.text=""
    ZipCode.text=""
    SaveButton.isEnabled=true
    
}
}
