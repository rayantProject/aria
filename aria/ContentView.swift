//
//  ContentView.swift
//  aria
//
//  Created by apprenant72 on 20/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray6

    }
    
    
    var body: some View {
        
       
    
            
            TabView {
                
               HomeView()
                    .tabItem {
                    Image(systemName: "house")
                    Text("home")
                    
                }
                
                
                MessagesView()
                    .tabItem {
                    Image(systemName: "message")
                    Text("message")
                                    }
                
                
                
                StoriesUIView().tabItem {
                    Image(systemName: "video")
                    Text("stories")
                }
                
                
                MapView().tabItem {
                    Image(systemName: "map")
                    Text("map")
                }
                
                
                
                Text("OneView").tabItem {
                    Image(systemName: "person")
                    Text("profil")
                }
                
                

            


        }
        
        
        
        
        
        
        
        
      
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


