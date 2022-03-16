//
//  TodayViewModel.swift
//  AppStoreClone
//
//  Created by Maxime Point on 09/03/2022.
//

import Foundation

class TodayViewModel: ObservableObject {
    
    @Published var headerTodayViewModel = HeaderTodayViewModel(user: User.defaultUser)
    @Published var appCardViewModel = AppCardViewModel(appDetails: AppDetails.appOfTheDay)
    @Published var favoriteGamesViewModel = FavoriteGamesViewModel(apps: AppDetails.games)
    @Published var secondAppCardViewModel = AppCardViewModel(appDetails: AppDetails.secondApp)
    
}
