//
//  UserModel.swift
//  AppStoreClone
//
//  Created by Maxime Point on 11/03/2022.
//

import Foundation

struct User {
    
    var imageName: String
    var firstName: String
    var lastName: String
    var pseudo: String
    var email: String
    
    init (imageName: String,
          firstName: String,
          lastName: String,
          pseudo: String,
          email: String
    ) {
        self.imageName = imageName
        self.firstName = firstName
        self.lastName = lastName
        self.pseudo = pseudo
        self.email = email
    }
}



extension User {
    static var defaultUser : User = User(imageName: "person.circle", firstName: "Maxime", lastName: "Point", pseudo: "MaxP", email: "maximepoint6@gmail.com")
}
