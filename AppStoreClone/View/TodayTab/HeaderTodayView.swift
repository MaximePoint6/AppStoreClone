//
//  HeaderTodayView.swift
//  AppStoreClone
//
//  Created by Maxime Point on 09/03/2022.
//

import SwiftUI

struct HeaderTodayView: View {
    
    var viewModel : HeaderTodayViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text("MARDI 8 MARS")
                .foregroundColor(.gray)
                .font(.headline)
            HStack {
                Text("Aujourd'hui")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                ProfilPictureView(viewModel: viewModel.profilPictureViewModel)
            }
        }.padding(.horizontal)
    }
}

struct HeaderTodayView_Previews: PreviewProvider {
    
    private static var headerTodayViewModel = HeaderTodayViewModel(user: User.defaultUser)
    
    static var previews: some View {
        HeaderTodayView(viewModel: headerTodayViewModel)
            .previewLayout(.sizeThatFits)
    }
}
