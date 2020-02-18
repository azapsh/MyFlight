//
//  UserDefaultsWrapper.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 16.02.2020.
//  Copyright © 2020 Ахмед Фокичев. All rights reserved.
//

import Foundation

final class UserDefaultsWrapper {
    
    static func getDouble(key: String) -> Double {
        let defaults = UserDefaults.standard
        return defaults.double(forKey: key)
    }
    static func setDouble(key: String, _ value: Double) {
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
    static func getString(key: String) -> String {
        let defaults = UserDefaults.standard
        return defaults.string(forKey: key) ?? ""
    }
    static func setString(key: String, _ value: String) {
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
    static func getInt(key: String) -> Int {
        let defaults = UserDefaults.standard
        return defaults.integer(forKey: key)
    }
    static func setInt(key: String, _ value: Int) {
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
    static func getBool(key: String) -> Bool {
        let defaults = UserDefaults.standard
        return defaults.bool(forKey: key)
    }
    static func setBool(key: String, _ value: Bool) {
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
}
