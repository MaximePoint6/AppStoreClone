//
//  AppCellView.swift
//  AppStoreClone
//
//  Created by Maxime Point on 08/03/2022.
//

import SwiftUI

struct AppCellView: View {
    
    @ObservedObject var viewModel: AppCellViewModel
    
    var body: some View {
        HStack {
            Image(viewModel.logo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 65, height: 65)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 0.2)
                )
                .padding(.trailing ,10)
            VStack (alignment: .leading){
                Text(viewModel.name)
                Text(viewModel.subtitle)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            VStack{
                Button  {
                    viewModel.changePurchaseStatus()
                } label: {
                    Text(viewModel.purchased ? "OUVRIR" : "OBTENIR")
                        .font(.system(size: 13))
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(Color.primary.opacity(0.08))
                        .clipShape(Capsule())
                }
                Text("Achats intégrés")
                    .foregroundColor(.gray)
                    .font(.system(size: 10))
            }
        }.padding(.vertical, 10)
            .padding(.horizontal)
    }
}

struct AppCellView_Previews: PreviewProvider {
    
    @StateObject static var app = AppCellViewModel(appDetails: AppDetails.appOfTheDay)
    
    static var previews: some View {
        AppCellView(viewModel: app)
            .previewLayout(.sizeThatFits)
    }
}
