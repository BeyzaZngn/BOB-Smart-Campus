//
//  ContentView.swift
//  Social Media App
//
//  Created by alex on 4/22/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        if loginViewModel.isCurrentlyLoggedOut {
            LoginView(loginViewModel: loginViewModel)
        } else {
            TabView {
                CommunitiesView()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Topluluk")
                    }
                PostsView()
                    .tabItem {
                        Image(systemName: "rectangle.portrait.on.rectangle.portrait.angled")
                        Text("İlanlar")
                    }
                
                ProfileView(loginViewModel: loginViewModel)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Profil")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
