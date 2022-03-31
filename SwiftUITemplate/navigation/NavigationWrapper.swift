//
//  NavigationWrapper.swift
//  SwiftUITemplate
//
//  Created by Yordan Lyubenov on 19.03.22.
//
import Foundation
import SwiftUI

struct NavigationWrapper: View {
    
    @StateObject var navigation: Navigation = Navigation()
    
    var body: some View {
        switch(navigation.navigationState) {
        case .LOGIN:
            LoginView()
                .environmentObject(navigation)
        case .DASHBOARD:
            DashboardView()
                .environmentObject(navigation)
        }
    }
       
}

struct NavigationWrapper_Previews: PreviewProvider {
    static var previews: some View {
        NavigationWrapper()
    }
}
