//
//  MyAccountViewModel.swift
//  AppStoreClone
//
//  Created by Maxime Point on 15/03/2022.
//

import Foundation

class MyAccountViewModel : ObservableObject {
    
    @Published private var user: User
    var myAccountDetailsViewModel : MyAccountDetailsViewModel
    
    init(user: User) {
        self.user = user
        self.myAccountDetailsViewModel = MyAccountDetailsViewModel(user: user)
    }
    
    var imageName: String {
        user.imageName
    }
    
    var firstName: String {
        user.firstName
    }
    
    var lastName: String {
        user.lastName
    }
    
    var pseudo: String {
        user.pseudo
    }
    
    var email: String {
        user.email
    }
}
