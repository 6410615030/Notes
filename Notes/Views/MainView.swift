//
//  ContentView.swift
//  Notes
//
//  Created by Babypowder on 3/4/2567 BE.
//

import SwiftUI
import FirebaseAuth

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
    }
    
    var accountView: some View {
        TabView {
            NotesListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
            
        }
    }
}

#Preview {
    MainView()
}
