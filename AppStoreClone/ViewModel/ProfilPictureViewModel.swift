//
//  ProfilPictureViewModel.swift
//  AppStoreClone
//
//  Created by Maxime Point on 15/03/2022.
//

import Foundation
import UIKit

class ProfilPictureViewModel {
    
    private var user: User
    var myAccountViewModel: MyAccountViewModel
    
    init(user: User) {
        self.user = user
        self.myAccountViewModel = MyAccountViewModel(user: user)
    }
    
    
    var imageName: String {
        user.imageName
    }
    
//        var imageName: UIImage? {
//            guard let imageName = user.imageName else {
//                return nil
//            }
//            return UIImage(named: imageName)!
//        }
}
