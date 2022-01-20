//
//  HomeView.swift
//  QuantumTest
//
//  Created by dddiehard on 11/01/22.
//

import SwiftUI
import UIKit

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Search ...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(UIColor.systemGray5))
                .foregroundColor(.gray)
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                 
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
            }
        }
    }
}

struct OnboardingView: View {
    var body: some View {
        TabView {
            
            Image("netflix")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
                .font(.system(size: 40, weight: .bold))
                .background(Color(UIColor.systemGray5))
            
            Image("cc")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
                .font(.system(size: 40, weight: .bold))
                .background(Color(UIColor.systemGray5))

            Image("disney")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
                .font(.system(size: 40, weight: .bold))
                .background(Color(UIColor.systemGray5))
            
            Image("sb")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
                .font(.system(size: 40, weight: .bold))
                .background(Color(UIColor.systemGray5))
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct HomeView: View {
    
    @State var shouldshowOnboarding: Bool = true
    @State var searchText: String = "Search for Product, Brand and Shops"

    let columns = [
        GridItem(.fixed(100)),
        GridItem(.flexible()),
    ]
        
var body: some View {
                    
    ZStack {
            
    Color(.white)
            .ignoresSafeArea()
        
        VStack {
        
        VStack(spacing: 0) {
            
            HStack(spacing: 0) {
                
                Text("Your location")
                    .frame(width: 250, height: 15, alignment: .leading)
                    .font(.system(size: 18))
                    .padding()
                    .foregroundColor(.black)
                    .background(Color(UIColor.white))
                    .padding(.leading, 10)
                    .padding(.bottom, 0)
                
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .font(.system(size: 40, weight: .bold))
                    .clipShape(Circle())
                    .background(Color(UIColor.white))
                    .padding(.top, 10)
            }
            .background(Color(UIColor.white))

            HStack(spacing: 50) {
                
            Text("88 Janpath Road New Delhi 110010")
                .frame(width: 180, height: 30, alignment: .leading)
                .font(.system(size: 12))
                .foregroundColor(.black)
                .background(Color(UIColor.white))
                .padding(.trailing, 10)
        
                Image(systemName: "pencil")
                .frame(width: 50, height: 52, alignment: .leading)
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.black)
                .background(Color(UIColor.white))
                .padding(.all, 5)
                
            }
            .padding(.all, 0)
            SearchBar(text: $searchText)
            .background(Color.white)
            .border(Color(UIColor.white), width: 2)
          }
        .background(Color(UIColor.white))

        VStack(alignment: .center, spacing: 5) {

            Text("Explore By Category")
                .frame(width: UIScreen.main.bounds.width, height: 15, alignment: .center)
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(.black)
                .background(Color(.white))
                .padding(.bottom, 2)
                
            Text("Everything we have. Everything you need.")
                .frame(width: UIScreen.main.bounds.width, height: 15, alignment: .center)
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.black)
                .background(Color(.white))
                .padding(.bottom, 5)
            
            HStack(alignment: .center, spacing: 30) {
                
                Button(action: {}) {
                    VStack {
                        Image(systemName: "archivebox.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40, alignment: .center)
                        Text("Product")
                        .font(.system(size: 10))
                    }
                }
                .padding(.all, 0)
                .frame(width: 75, height: 75, alignment: .center)
                .accentColor(.red)
                .font(.system(size: 10, weight: .bold))
                .foregroundColor(.white)
                .background(Color(.red))
                
                Button(action: {}) {
                    VStack {
                        Image(systemName: "figure.wave")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40, alignment: .center)
                        Text("Services")
                            .font(.system(size: 10))
                    }
                }
                .padding(.all, 0)
                .frame(width: 75, height: 75, alignment: .center)
                .accentColor(.red)
                .font(.system(size: 10, weight: .bold))
                .foregroundColor(.red)
                .background(Color(UIColor.white))
                .border(Color(UIColor.red), width: 5)
          }
            
        OnboardingView()
            
            ScrollView {
                LazyVGrid(columns: columns, alignment: .center, spacing: 10) {
                    Image("grocery")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .center)
                        .background(Color(UIColor.systemGray5))
                        .border(Color(UIColor.systemGray2), width: 5)
                        .overlay(
                            Text("Kirana/Grocery")
                            .font(.system(size: 8, weight: .medium))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 30, alignment: .center)
                            .background(Color.black.opacity(0.5))
                            .padding(.top, 60)
                        )
                    
                    Image("clothes")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .background(Color(UIColor.systemGray5))
                        .border(Color(UIColor.systemGray2), width: 5)
                        .overlay(
                            Text("Clothes and Garments")
                            .font(.system(size: 8, weight: .medium))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 30, alignment: .center)
                            .background(Color.black.opacity(0.5))
                            .padding(.top, 60)
                        )
                    
                    Image("gs")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .background(Color(UIColor.systemGray2))
                        .border(Color(UIColor.systemGray2), width: 5)
                        .overlay(
                            Text("General Stores")
                            .font(.system(size: 8, weight: .medium))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 30, alignment: .center)
                            .background(Color.black.opacity(0.5))
                            .padding(.top, 60)
                        )

                    Image("stationary")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .background(Color(UIColor.systemGray5))
                        .border(Color(UIColor.systemGray2), width: 5)
                        .overlay(
                            Text("Stationary")
                            .font(.system(size: 8, weight: .medium))
                            .foregroundColor(.white)
                            .frame(width: 90, height: 30, alignment: .center)
                            .background(Color.black.opacity(0.5))
                            .padding(.top, 60)
                        )
                }
                .padding(.leading, 60)
                .padding(.bottom, 60)
                .padding(.top, 10)
              }
            }
          }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

