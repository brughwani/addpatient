//
//  Validation.swift
//  AddPatient
//
//  Created by Bhavesh on 25/08/22.
//

import Foundation
import UIKit

extension ViewController
{
    //checks if firstname is validated or not and the error will be displayed to the user
@IBAction func firstnameChanged(_ sender: Any) {
    if let FirstName=FirstName.text
    {
        if let error=InvalidFirstName(FirstName)
        {
            Firstnameerror.text=error
            Firstnameerror.isHidden=false
    }
        else
        {
            Firstnameerror.isHidden=true
        }
    
}
    checkForValidForm()
}

//validation of firstname
func InvalidFirstName(_ value: String) -> String?
{
    let regex="[A-Za-z]+"
    let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
    if !predicate.evaluate(with: value)
            {
                return "Invalid FirstName"
            }
            
            return nil
}
    //checks if middle name is validated or not and the error will be displayed to the user
@IBAction func MiddleNameChanged(_ sender: Any) {
    if let MiddleName=MiddleName.text
    {
        if let error=InvalidMiddleName(MiddleName)
        {
            Middlenameerror.text=error
            Middlenameerror.isHidden=false
    }
        else
        {
            Middlenameerror.isHidden=true
        }
    
}
    checkForValidForm()
}
    //validation of middlename
func InvalidMiddleName(_ value: String) -> String?
{
    let regex="[A-Za-z]+"
    let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
    if !predicate.evaluate(with: value)
            {
                return "Invalid MiddleName"
            }
            
            return nil
}
    //checks if last name is validated or not and the error will be displayed to the user
@IBAction func LastNameChanged(_ sender: Any) {
    if let LastName=LastName.text
    {
        if let error=InvalidLastName(LastName)
        {
            Lastnameerror.text=error
            Lastnameerror.isHidden=false
    }
        else
        {
            Lastnameerror.isHidden=true
        }
}
    checkForValidForm()
}
    //validation of last name
func InvalidLastName(_ value: String) -> String?
{
    let regex="[A-Za-z]+"
    let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
    if !predicate.evaluate(with: value)
            {
                return "Invalid LastName"
            }
            
            return nil
}
    //checks if address is validated or not and the error will be displayed to the user
@IBAction func AddressChanged(_ sender: Any) {
    if let address=Address.text
    {
        if let error=InvalidAddress(address)
        {
            Addresserror.text=error
            Addresserror.isHidden=false
        }
        else
        {
            Addresserror.isHidden=true
        }
    }
    checkForValidForm()
}
    //validation of address
func InvalidAddress(_ value : String)-> String?
{
    let regex="[A-Za-z]+"
    let predicate=NSPredicate(format: "SELF MATCHES %@", regex)
    if !predicate.evaluate(with: value)
            {
                return "Invalid City Name"
            }
            
            return nil
}

    //checks if city is validated or not and the error will be displayed to the user

@IBAction func CityChanged(_ sender: Any) {
    if let city=City.text
    {
        if let error=Invalidcity(city)
        {
            Cityerror.text=error
            Cityerror.isHidden=false
    }
        else
        {
            Cityerror.isHidden=true
        }
}
    checkForValidForm()
}
    //validation of city name
func Invalidcity(_ value: String) -> String?
{
    let regex="[A-Za-z]+"
    let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
    if !predicate.evaluate(with: value)
            {
                return "Invalid City Name"
            }
            
            return nil
}
    //checks if State is validated or not and the error will be displayed to the user
@IBAction func StateChanged(_ sender: Any) {
    if let state=State.text
    {
        if let error=InvalidState(state)
        {
            Stateerror.text=error
            Stateerror.isHidden=false
        }
        else
        {
            Stateerror.isHidden=true
        }
    }
    checkForValidForm()
}
//validation of state
func InvalidState(_ value: String) -> String?
    {
        let regex="[A-Za-z]+"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        if !predicate.evaluate(with: value)
                {
                    return "Invalid State Name"
                }
                
                return nil
    }
//checks if zipcode is validated or not and the error will be displayed to the user
@IBAction func ZipCode(_ sender: Any) {
    if let ZipCode=ZipCode.text
    {
        if let error=InvalidZipCode(ZipCode)
        {
            Zipcodeerror.text=error
            Zipcodeerror.isHidden=false
        }
        else
        {
            Zipcodeerror.isHidden=true
        }
        }
    checkForValidForm()
    }
//validation of zipcode
func InvalidZipCode(_ value: String) -> String?
{
    let set = CharacterSet(charactersIn: value)
            if !CharacterSet.decimalDigits.isSuperset(of: set)
            {
                return "ZipCode must contain only digits"
            }
            
            if value.count != 5
            {
                return "ZipCode must be 5 Digits in Length"
            }
            return nil
}


//makes sure all fields are validated
func checkForValidForm()
    {
        if(!FirstName.text!.isEmpty && !MiddleName.text!.isEmpty && !LastName.text!.isEmpty &&
           !Address.text!.isEmpty
           &&
           !City.text!.isEmpty
           &&
           !State.text!.isEmpty
           &&
           Zipcodeerror.isHidden
           
        )
        {
            
    SaveButton.isEnabled = true
        }
        else
        {
            SaveButton.isEnabled = false
        }
    }

}





