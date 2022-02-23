//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Дмитрий Бессонов on 24.02.2022.
//

import Foundation

class DataManager {
    
    private enum NameKeys: String {
        case userName
    }
    
    static var userName: String! {
        get {
            return UserDefaults.standard.string(forKey: NameKeys.userName.rawValue)
        } set {
            let defaults = UserDefaults.standard
            let key = NameKeys.userName.rawValue
            if let name = newValue {
                defaults.set(name, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
}
