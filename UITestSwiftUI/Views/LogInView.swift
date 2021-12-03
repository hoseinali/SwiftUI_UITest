//
//  ContentView.swift
//  UITestSwiftUI
//
//  Created by Hossein Ali Alborzi on 11/30/21.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @StateObject var loginVM: LoginViewModel

    var body: some View {
        ZStack {
            VStack {
                BackgroundImageView(image: Image.logo)
            }
            VStack {
                CustomTextFiled(text: $username, placeHolder: "Username").accessibility(identifier: "UsernameCustomTextFiled")
                CustomTextFiled(text: $password , placeHolder: "password").accessibility(identifier: "passwordCustomTextFiled")
                    .textContentType(.oneTimeCode)
                CustomButton(onClick: {
                    loginVM.login(username, password)
                }, title: "Login")
                .padding(.top, 15)
                .accessibility(identifier: "loginCustomButton")
                
            }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(loginVM: LoginViewModel(service: TestUIService()))
    }
}
