//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Volodymyr Ostapyshyn on 17.10.2020.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
}
