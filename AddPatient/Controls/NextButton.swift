//
//  NextExt.swift
//  AddPatient
//
//  Created by Bhavesh on 24/08/22.
//

import Foundation
import UIKit
import CoreData

extension ViewController
{
    //Fetches the next record from the database
        @IBAction func NextButton(_ sender: Any) {
            
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            
            let context = appDelegate.persistentContainer.viewContext
            
        let fetchrequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Patient")
        
            do
            {
                let results = try context.fetch(fetchrequest)
                
                
                let  p = results as! [Patient]
                if(index<results.count && index>=0)
                {
                    FirstName.text=p[index].firstName
                    MiddleName.text=p[index].middleName
                    LastName.text=p[index].lastName
                    Address.text=p[index].address
                    City.text=p[index].city
                    State.text=p[index].state
                    ZipCode.text=p[index].zipCode
                    index=index+1
                    print(index)
                }
                else if(index>=results.count && index<0)
                {
                    index=index+1
                    print(index)
                    do
                    {
                    try FirstName.text=p[index].firstName
                    MiddleName.text=p[index].middleName
                    LastName.text=p[index].lastName
                    Address.text=p[index].address
                    City.text=p[index].city
                    State.text=p[index].state
                    ZipCode.text=p[index].zipCode
                    
                    }
                    catch
                    {
                        print("Could not fetch. \(error)")
                    }
                }
                 
                  } catch let error as NSError {
                    print("Could not fetch. \(error), \(error.userInfo)")
            }
            
        }
}
