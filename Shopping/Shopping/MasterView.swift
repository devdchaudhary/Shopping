//
//  MasterView.swift
//  Shopping
//
//  Created by dddiehard on 20/01/22.
//

import SwiftUI

struct MasterView: View {
    
    init() {
        setupTabBar()
        return
    }
                        
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                SavedView()
                .tabItem {
                    Label("Saved", systemImage: "heart.fill")
                }
            Notifications()
                .tabItem {
                    Label("Notification", systemImage: "bell.fill")
            }
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
            }
            Cart()
                .tabItem {
                    Label("Card", systemImage: "cart")
            }
          }
        .accentColor(.red)
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}

extension MasterView {
  func setupTabBar() {
    UITabBar.appearance().barTintColor = .lightText
    UITabBar.appearance().tintColor = .blue
    UITabBar.appearance().layer.borderColor = UIColor.clear.cgColor
    UITabBar.appearance().clipsToBounds = true
  }
}

