//
//  ProfilPictureView.swift
//  AppStoreClone
//
//  Created by Maxime Point on 08/03/2022.
//

import SwiftUI

struct ProfilPictureView: View {
    
    @State var isShowingMyAccount: Bool = false
    var viewModel : ProfilPictureViewModel
    
    var body: some View {
        
        Button {
                isShowingMyAccount.toggle()
        } label: {
            Image(systemName: viewModel.imageName)
                .font(.largeTitle)
        }.sheet(isPresented: $isShowingMyAccount, content: {MyAccountView(viewModel: viewModel.myAccountViewModel)})

//        VStack {
//            Image("ProfilPicture")
//                .resizable()
//                .scaledToFill()
//                .frame(width:40, height:40)
//                .clipShape(Circle())
//        }
    }
}

struct ProfilPictureView_Previews: PreviewProvider {
    
    static var profilPictureViewModel = ProfilPictureViewModel(user: User.defaultUser)
    
    static var previews: some View {
        
        ProfilPictureView(viewModel: profilPictureViewModel)
            .previewLayout(.sizeThatFits)
            .padding(10.0)
    }
}
