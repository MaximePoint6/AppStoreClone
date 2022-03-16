//
//  MyAccountDetailsViewModel.swift
//  AppStoreClone
//
//  Created by Maxime Point on 15/03/2022.
//

import Foundation

class MyAccountDetailsViewModel : ObservableObject {
    
    @Published var user: User
    @Published var imageName: String
    @Published var firstName: String
    @Published var lastName: String
    @Published var pseudo: String
    @Published var email: String
    
    init(user: User) {
        self.user = user
        self.imageName = user.imageName
        self.firstName = user.firstName
        self.lastName = user.lastName
        self.pseudo = user.pseudo
        self.email = user.email
    }
    
    
    func save(newUser: User) {
        User.defaultUser = newUser
    }
}
