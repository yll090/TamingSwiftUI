//
//  DashboardScreen.swift
//  SwiftUITemplate
//
//  Created by Yordan Lyubenov on 13.02.22.
//

import SwiftUI

struct DashboardView: View {
    @StateObject var viewModel: DashboardViewModel = DashboardViewModel()
    @State var shouldNavigateToDetails = false
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    Button(action: {
                        viewModel.logout()
                    }) {
                        Text("Logout")
                    }
                    Button(action: {
                        shouldNavigateToDetails = true
                    }) {
                        Text("Open details")
                    }
                    NavigationLink("", destination: Text("Next screen"), isActive: $shouldNavigateToDetails)
                }
            }
            .navigationBarBackButtonHidden(true)
                .tabItem {
                    Image(systemName: "house")
                        .renderingMode(.template)
                    Text("Home")
            }
            Text("Stocks")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                        .renderingMode(.template)
                    Text("Stocks")
            }
            Text("Documents")
                .tabItem {
                    Image(systemName: "doc")
                        .renderingMode(.template)
                    Text("Documents")
            }
            
        }
        .font(.headline)
        .accentColor(.blue)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
