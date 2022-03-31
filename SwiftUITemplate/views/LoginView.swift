//
//  LoginScreen.swift
//  SwiftUITemplate
//
//  Created by Yordan Lyubenov on 13.02.22.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel: LoginViewModel = LoginViewModel()
    @AppStorage("logged_in") var loggedIn: Bool = false
    
    var inputFields: some View {
        VStack(spacing: 10) {
            TextField("Username", text: $viewModel.username)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray, lineWidth: 1)
                )
            SecureField("Password", text: $viewModel.password)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray, lineWidth: 1)
                )
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Login into CoolStocks")
                
                Image(systemName: "wind.snow")
                    .resizable()
                    .frame(width: 75, height: 75, alignment: .center)
                
                inputFields
                
                Button(action: {
                    viewModel.login()
                }) {
                    Text("Login")
                        .frame(maxWidth:.infinity,maxHeight: 50)
                        .foregroundColor(Color.white)
                        .background((Color.blue).cornerRadius(30))
                }
                .padding(.top, 10)
            }
            .padding()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
