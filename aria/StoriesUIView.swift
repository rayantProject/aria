//
//  StoriesUIView.swift
//  aria
//
//  Created by apprenant72 on 21/03/2022.
//

import SwiftUI

struct StoriesUIView: View {
    @State private var searchText = ""
    var searchResults: [User] {
            if searchText.isEmpty {
                return users
            } else {
                return users.filter { $0.name.contains(searchText) }
            }
        }
    var body: some View {
        NavigationView {
        
        List(searchResults) {person in
            storyView(item: person)
        }.listStyle(.plain)
        .searchable(text: $searchText)
        .navigationBarTitle("Stories")
        .toolbar {
                ToolbarItem(placement:
                        .navigationBarTrailing) {
                            Button {
                                
                            } label: {
                                Image(systemName: "video.badge.plus")
                            }

                }
                
//            ToolbarItem(placement:
//                    .navigationBarLeading) {
//                        Button("Help ") {
//
//                        }
//
//            }
//
            }
        }
    }
}

struct StoriesUIView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesUIView()
    }
}

struct storyView: View {
    
    var item: User
    

    var body: some View {
        
        
        HStack(alignment: .center) {
            Image(item.image).resizable().frame(width: 60, height: 60).clipShape(Circle()).overlay(Circle().stroke(LinearGradient(colors: [.yellow, .red], startPoint: .leading, endPoint: .bottom), lineWidth: 3))
            
            
                Text(item.name).font(.title2).bold()
                
            
        }
    }
}
