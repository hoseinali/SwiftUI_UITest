//
//  LoginViewModel.swift
//  UITestSwiftUI
//
//  Created by Hossein Ali Alborzi on 12/2/21.
//

import Foundation

class LoginViewModel: ObservableObject {
    var username = ""
    var password = ""
    @Published var isAuthenticated: Bool = false
    
    var service: WebService
    
    init(service: WebService) {
        self.service = service
    }

    func login(_ username: String, _ password: String) {
        DispatchQueue.main.async {
            self.isAuthenticated = self.service.Login(username, password)
        }
    }
}
