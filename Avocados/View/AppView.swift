//
//  AppView.swift
//  Avocados
//
//  Created by Denis Yaremenko on 15.04.2024.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
                })
            
            RecipesView()
                .tabItem({
                    Image("tabicon-book")
                    Text("Recipes")
                })
            
            RipeStageView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripening")
                })
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .accentColor(Color.primary)
    }
}

#Preview {
    AppView()
}
