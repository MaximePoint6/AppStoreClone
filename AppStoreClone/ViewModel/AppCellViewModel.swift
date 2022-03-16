//
//  AppCellViewModel.swift
//  AppStoreClone
//
//  Created by Maxime Point on 13/03/2022.
//

import Foundation


class AppCellViewModel : ObservableObject, Identifiable {
    
    @Published private var appDetails: AppDetails
    
    init(appDetails: AppDetails) {
        self.appDetails = appDetails
    }
    
    
    var logo: String {
        appDetails.logo
    }
    
    var name: String {
        appDetails.name
    }
    
    var subtitle: String {
        appDetails.subtitle
    }
    
    var purchased: Bool {
        appDetails.purchased
    }
    
    func changePurchaseStatus() {
        appDetails.purchased.toggle()
    }
    
}
