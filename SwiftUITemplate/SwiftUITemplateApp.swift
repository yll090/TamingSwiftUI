//
//  SwiftUITemplateApp.swift
//  SwiftUITemplate
//
//  Created by Yordan Lyubenov on 13.02.22.
//

import SwiftUI

@main
struct SwiftUITemplateApp: App {
    @AppStorage("logged_in") var loggedIn: Bool = false
    var body: some Scene {
        WindowGroup {
            if (loggedIn) {
                DashboardView()
            } else {
                LoginView()
            }
        }
    }
}

