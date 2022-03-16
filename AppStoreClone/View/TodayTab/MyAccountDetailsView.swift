//
//  MyAccountDetailsView.swift
//  AppStoreClone
//
//  Created by Maxime Point on 15/03/2022.
//

import SwiftUI

struct MyAccountDetailsView: View {
    
    @ObservedObject var viewModel : MyAccountDetailsViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Form {
            TextField("Nom", text: $viewModel.lastName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Prénom", text: $viewModel.firstName)
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }.navigationTitle("Modification du compte")
            .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {
                    viewModel.save(newUser: viewModel.user)
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Enregistrer")
                })
            }
        }
    }
}
struct MyAccountDetailsView_Previews: PreviewProvider {
    
    @StateObject private static var myAccountDetailsViewModel = MyAccountDetailsViewModel(user: User.defaultUser)
    
    static var previews: some View {
        NavigationView {
            MyAccountDetailsView(viewModel: myAccountDetailsViewModel)
        }
    }
}
