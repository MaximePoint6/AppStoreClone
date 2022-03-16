//
//  FavoriteGamesView.swift
//  AppStoreClone
//
//  Created by Maxime Point on 08/03/2022.
//

import SwiftUI

struct FavoriteGamesView: View {
    
    var viewModel: FavoriteGamesViewModel
    
    var body: some View {
        VStack {
            HStack{
                VStack(alignment: .leading) {
                    Text("NOS FAVORIS")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 1)
                    Text("Nos jeux du\nmoment 🔥")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                Spacer()
            }.padding()
            
            ForEach(viewModel.apps){app in
                AppCellView(viewModel: AppCellViewModel(appDetails: app))
            }
        }.background(Color("BackgroundCard"))
            .cornerRadius(20)
            .shadow(color: Color(Color.RGBColorSpace.sRGB, white: 0, opacity: 0.2), radius: 10)
            .padding(.bottom, 25)
            .padding(.horizontal)
    }
}

struct FavoriteGamesView_Previews: PreviewProvider {
    
    static var favoriteGamesViewModel = FavoriteGamesViewModel.init(apps: AppDetails.games)
    
    static var previews: some View {
        FavoriteGamesView(viewModel: favoriteGamesViewModel)
    }
}
