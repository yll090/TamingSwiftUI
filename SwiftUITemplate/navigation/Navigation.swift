//
//  Navigation.swift
//  SwiftUITemplate
//
//  Created by Yordan Lyubenov on 19.03.22.
//

import Foundation
import SwiftUI

class Navigation: ObservableObject {
    @AppStorage("logged_in") var loggedIn: Bool = false
    @Published var navigationState: NavigationState = .LOGIN
    init() {
        navigationState = loggedIn ? .DASHBOARD : .LOGIN
    }
    func navigateTo(_ newState: NavigationState) {
        self.navigationState = newState
    }
}

enum NavigationState {
    case LOGIN, DASHBOARD
}
