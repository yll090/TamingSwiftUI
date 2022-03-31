//
//  LoginViewModel.swift
//  SwiftUITemplate
//
//  Created by Yordan Lyubenov on 13.02.22.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var username: String
    @Published var password: String
    @Published var shouldNavigateToDashboard: Bool
    @AppStorage("logged_in") var loggedIn: Bool = false
    
    init() {
        username = ""
        password = ""
        shouldNavigateToDashboard = false
    }
    
    func login() {
        self.loggedIn = true
        navigateToDashboard()
    }
    
    func navigateToDashboard() {
        self.shouldNavigateToDashboard = true
    }
}
