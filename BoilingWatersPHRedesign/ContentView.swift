//
//  ContentView.swift
//  BoilingWatersPHRedesign
//
//  Created by Viennarz Curtiz on 4/10/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.red // custom color.
    }
    var body: some View {
        
            
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Explore")
                }
            
            DatingView()
                .tabItem {
                    Image(systemName: "suit.heart")
                    Text("Matches")
                }
            
            Text("Messages")
                .tabItem {
                    Image(systemName: "envelope")
                    Text("Messages")
                }
            
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
             

        }
        .accentColor(.red)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct HomeView: View {
    var body: some View {
        ZStack {
            Color(UIColor.white)
                   .ignoresSafeArea()
            
            ScrollView(.vertical) {
                Spacer(minLength: 48)
                
                HStack {
                    
                    Text("Hi, Jahmicah")
                        .font(.largeTitle.weight(.bold))
                        .foregroundColor(.black.opacity(0.8))
                    
                    
                    Spacer()
                    
                    Image("profile-photo1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40, alignment: .center)
                        .clipShape(Circle())
                }
                .padding(.horizontal)
                
                
                HStack {
                    Text("What are you up to, today?")
                        .foregroundColor(.gray)
                    .padding(.horizontal)
                    
                    Spacer()
                }
                
                Spacer(minLength: 32)
                
                VStack(spacing: 16) {
                    
                    HStack(spacing: 16) {
                        
                        HomeCardItem(title: "Dating", imageSystemName: "person.2")
                        HomeCardItem(title: "Relationship Tips", imageSystemName: "text.book.closed")
                        
                        
                    }
                    
                    HStack(spacing: 16) {
                        
                        HomeCardItem(title: "Maturity Journey", imageSystemName: "checklist")
                        HomeCardItem(title: "Pokmaru Radar", imageSystemName: "dot.radiowaves.left.and.right")
                        
                        
                    }
                    
                    HStack(spacing: 16) {
                        
                        HomeCardItem(title: "Coaching", imageSystemName: "quote.bubble")
                        HomeCardItem(title: "Boards", imageSystemName: "newspaper")
                        
                        
                    }
                }
                
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                
                
            }
        }
    }
}

struct HomeCardItem: View {
    var title: String
    var imageSystemName: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.black.opacity(0.8)
            
            VStack(alignment: .leading) {
                Image(systemName: imageSystemName)
                    .font(.title3.weight(.bold))
                    .foregroundColor(.red)
                
                Spacer()
                
                Text(title)
                    .foregroundColor(.white)
                    .font(.body.weight(.semibold))
                
            }
            .padding()
        }
        .frame(height: 120)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}


