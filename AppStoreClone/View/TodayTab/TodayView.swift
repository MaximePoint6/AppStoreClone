//
//  TodayView.swift
//  AppStoreClone
//
//  Created by Maxime Point on 08/03/2022.
//

import SwiftUI

struct TodayView: View {
    
    @StateObject var viewModel = TodayViewModel()

    var body: some View {
        ScrollView {
            VStack(spacing: 10){
            HeaderTodayView(viewModel: viewModel.headerTodayViewModel)
            AppCardView(viewModel: viewModel.appCardViewModel)
            FavoriteGamesView(viewModel: viewModel.favoriteGamesViewModel)
            AppCardView(viewModel: viewModel.secondAppCardViewModel)
            }
        }.background(Color.primary.opacity(0.08).ignoresSafeArea())
    }
}

struct TodayView_Previews: PreviewProvider {
    
    static var previews: some View {
        TodayView()
    }
}
