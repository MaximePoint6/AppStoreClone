//
//  AppOfTheDayView.swift
//  AppStoreClone
//
//  Created by Maxime Point on 08/03/2022.
//

import SwiftUI

struct AppCardView: View {
    
    var viewModel: AppCardViewModel
    
    var body: some View {
        
            VStack {
                ZStack (alignment: .topLeading) {
                    Image(viewModel.coverImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width-30, height: 400, alignment: .top)
                        .clipped()
                    VStack (alignment: .leading){
                        Text(viewModel.category)
                            .textCase(.uppercase)
                            .font(.headline)
                            .foregroundColor(Color.white.opacity(0.6))
                        Text(viewModel.name)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                    }.padding()
                }
                AppCellView(viewModel: viewModel.appCellViewModel)
            }
            .background(Color("BackgroundCard"))
            .cornerRadius(20)
            .shadow(color: Color(Color.RGBColorSpace.sRGB, white: 0, opacity: 0.2), radius: 10)
            .padding(.bottom, 25)
            .padding(.horizontal)
    }
}

struct AppOfTheDayView_Previews: PreviewProvider {
    
    private static var appCardViewModel = AppCardViewModel(appDetails: AppDetails.appOfTheDay)
    
    static var previews: some View {
        AppCardView(viewModel: appCardViewModel)
    }
}
