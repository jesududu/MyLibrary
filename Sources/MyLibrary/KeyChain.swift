//
//  File 2.swift
//  MyLibrary
//
//  Created by Jesus Bueno on 9/5/25.
//

import Foundation
import KeychainAccess

@discardableResult func saveKC(key:String, value:String) -> Bool {
    let keychain = Keychain(service: Constants.myKeychain)
    keychain[key] = value
    if let _ = keychain[key] {
        return true
    }
    else {
        return false
    }
    
}
func loadKC(key:String) -> String? {
    let keychain = Keychain(service: Constants.myKeychain)
    if let value = keychain[key]{
        return value
    } else {
        return ""
    }
}
func deleteKC(key:String) {
    let keychain = Keychain(service: Constants.myKeychain)
    keychain[key] = nil
}
