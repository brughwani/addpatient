//
//  Save_button.swift
//  AddPatient
//
//  Created by Bhavesh on 24/08/22.
//

import Foundation
import UIKit
import CoreData

//Saves the data into the coredata database
extension ViewController
{
    @IBAction func SaveData(_ sender: Any) {
        guard let appDelegate=UIApplication.shared.delegate as? AppDelegate
                else
        {
            return
        }
        let managedContext=appDelegate.persistentContainer.viewContext
        let entity=NSEntityDescription.entity(forEntityName: "Patient", in: managedContext)
        let record=NSManagedObject(entity: entity!, insertInto: managedContext)
       
        record.setValue(FirstName.text, forKey: "firstName")
        record.setValue(MiddleName.text, forKey: "middleName")
        record.setValue(LastName.text, forKey: "lastName")
        record.setValue(Address.text, forKey: "address")
        record.setValue(City.text, forKey: "city")
        record.setValue(State.text, forKey: "state")
        record.setValue(ZipCode.text, forKey: "zipCode")
        do {
                    try managedContext.save()
            
                    print("Record Added!")
                    //To display an alert box
                    let alertController = UIAlertController(title: "Message", message: "Record Added!", preferredStyle: .alert)
                    let OKAction = UIAlertAction(title: "OK", style: .default) {
                        (action: UIAlertAction!) in
                    }
                    alertController.addAction(OKAction)
                    self.present(alertController, animated: true, completion: nil)
                } catch
                let error as NSError {
                    print("Could not save. \(error),\(error.userInfo)")
                }
        FetchButton.isEnabled=true
        FirstName.text=""
        MiddleName.text=""
        LastName.text=""
        Address.text=""
        City.text=""
        State.text=""
        ZipCode.text=""
        
    }
    
}


