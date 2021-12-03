//
//  UITestSwiftUIApp.swift
//  UITestSwiftUI
//
//  Created by Hossein Ali Alborzi on 11/30/21.
//

import SwiftUI

@main
struct UITestSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            let webserviceFactory = WebServiceFactory()
            let loginVm = LoginViewModel(service: webserviceFactory.Create())
            LoginView(loginVM: loginVm)
        }
    }
}
