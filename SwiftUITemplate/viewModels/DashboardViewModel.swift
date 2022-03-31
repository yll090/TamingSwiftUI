//
//  DashboardViewModel.swift
//  SwiftUITemplate
//
//  Created by Yordan Lyubenov on 13.02.22.
//

import Foundation
import SwiftUI

class DashboardViewModel: ObservableObject {
    
    @AppStorage("logged_in") var loggedIn: Bool = false
    @Published var navigateToLogin: Bool = false
    
    func logout() {
        self.loggedIn = false
        self.navigateToLogin = true
    }
}
