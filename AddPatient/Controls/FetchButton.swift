//
//  FetchExt.swift
//  AddPatient
//
//  Created by Bhavesh on 24/08/22.
//

import Foundation
import UIKit
import CoreData

extension ViewController
{
    //Fetches the first record of the database
    @IBAction func FetchButton(_ sender: Any) {
        
            var index=0
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            
            let context = appDelegate.persistentContainer.viewContext
            
        let fetchrequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Patient")
        
            do
            {
                let results = try context.fetch(fetchrequest)
                let  p = results as! [Patient]
                if(results.count==0)
                {
                    
                    let alertController = UIAlertController(title: "Message", message: "Database is empty!", preferredStyle: .alert)
                    let OKAction = UIAlertAction(title: "OK", style: .default)
                    {
                        (action: UIAlertAction!) in
                    }
                    alertController.addAction(OKAction)
                    self.present(alertController, animated: true, completion: nil)
                }
                FirstName.text=p[index].firstName
                MiddleName.text=p[index].middleName
                LastName.text=p[index].lastName
                Address.text=p[index].address
                City.text=p[index].city
                State.text=p[index].state
                ZipCode.text=p[index].zipCode
                
                  } catch let error as NSError {
                    print("Could not fetch. \(error), \(error.userInfo)")
            }
        
        NextButton.isEnabled=true
        PrevButton.isEnabled=true
        
    }
}
