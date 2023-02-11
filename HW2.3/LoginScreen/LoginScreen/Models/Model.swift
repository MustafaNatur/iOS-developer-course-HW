//
//  Model.swift
//  LoginScreen
//
//  Created by Мустафа Натур on 31.01.2023.
//

import Foundation


struct User {
    var name:String
    var secondName:String
    var login:String
    var password:String
}

class Model {
    private var data = [User]()
    
    func addData(_ user:User) {
        data.append(user)
    }
    
    init(_ defaultUser:User) {
        data.append(defaultUser)
    }
    
    func isContains(_ login:String, _ password:String) -> Bool {
        var ans = false
        for i in data {
            if (i.login == login && i.password == password) {
                ans = true
            }
        }
        return ans
    }
    
}
