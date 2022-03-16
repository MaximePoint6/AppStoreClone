//
//  HeaderTodayViewModel.swift
//  AppStoreClone
//
//  Created by Maxime Point on 15/03/2022.
//

import Foundation

class HeaderTodayViewModel {
    
    var user: User
    var profilPictureViewModel : ProfilPictureViewModel
    
    init(user: User) {
        self.user = user
        self.profilPictureViewModel = ProfilPictureViewModel(user: user)
    }
}
