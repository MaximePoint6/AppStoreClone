//
//  MyAccountView.swift
//  AppStoreClone
//
//  Created by Maxime Point on 11/03/2022.
//

import SwiftUI

struct MyAccountView: View {
    
    @ObservedObject var viewModel : MyAccountViewModel
    
    var body: some View {
        NavigationView {
            Form {
                NavigationLink {
                    MyAccountDetailsView(viewModel: viewModel.myAccountDetailsViewModel)
                } label : {
                    HStack {
                        Image(systemName: viewModel.imageName)
                            .font(.largeTitle)
                            .padding(.trailing, 10)
                        VStack (alignment: .leading){
                            Text(viewModel.firstName + " " + viewModel.lastName)
                                .fontWeight(.light)
                            Text(viewModel.email)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Compte")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MyAccountView_Previews: PreviewProvider {
    
    static var myAccountViewModel = MyAccountViewModel(user: User.defaultUser)
    
    static var previews: some View {
        MyAccountView(viewModel: myAccountViewModel)
    }
}
