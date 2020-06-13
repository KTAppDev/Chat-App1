//
//  F.swift
//  Flash Chat iOS13
//
//  Created by Ken Taylor on 13/06/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import Firebase

let db = Firestore.firestore()



func callUser() -> String {
    let userName: String = ""
    
    if let userName = Auth.auth().currentUser?.email {
        return userName
        
    } else {
        return "User not there"
    }
}




func createCollection() {
    //let messageSender = callUser()
    // let messageBody:String = ""
    db.collection(callUser()).addDocument(data: [
        K.FStore.collectionId: "1234"
    ]) { (error) in
        if let e = error {
            
            print("there was an issue saving data to firestore - \(e)")
        } else {
            
            print("successfully saved data!")
        }
    }
    
}

func messageRef() {
    
    let messageRef = db.collectionGroup("clint@mail.com")
 let query = messageRef.whereField("1234", isEqualTo: "Hi")
   
    query.getDocuments { (querySnapshot, error) in
        if let err = error {
            print("error getting docs \(err)")
  
        } else {
            for document in querySnapshot!.documents {
                //print("\(document.documentID) => \(document.data())")
                
                //print(document)
                
            }
            
            
            
        }
    }
    

    
}














//
//func mesageRef() -> String {
//    let messageRef = db.collectionGroup("clint@mail.com")
//
//    let query = messageRef.whereField("1234", isEqualTo: "Hi")
//    let
//
//
//return queryStr
//}
//
//
