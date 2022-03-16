//
//  AppCardViewModel.swift
//  AppStoreClone
//
//  Created by Maxime Point on 11/03/2022.
//

import Foundation


class AppCardViewModel {
    
    private let appDetails: AppDetails
    var appCellViewModel : AppCellViewModel
    
    init(appDetails: AppDetails) {
        self.appDetails = appDetails
        self.appCellViewModel = AppCellViewModel(appDetails: appDetails)
    }
    
    var coverImage: String {
        appDetails.coverImage
    }
    
    var category: String {
        appDetails.category
    }
    
    var name: String {
        appDetails.name
    }
    
}
