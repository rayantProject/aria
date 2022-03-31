//
//  homeView.swift
//  aria
//
//  Created by apprenant72 on 21/03/2022.
//

import SwiftUI




struct HomeView: View {
    
    
    
    
    
    
    var body: some View {
        
        NavigationView {
            
            
            ScrollView {
                
                ForEach(publicationPersons){p in
                
                publication(item: p.item, photo: p.image)

            }
            }

                .navigationBarTitle("Home")
                .toolbar {
                        ToolbarItem(placement:
                                .navigationBarTrailing) {
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "envelope.badge")
                                    }

                        }
                        
                    ToolbarItem(placement:
                            .navigationBarLeading) {
                                Button("Help ") {
                                    
                                }

                    }
                    
                    }
                
        }
            
            
           
        
        
    }}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct publication: View {
    
    
    var item: User
    
    var photo: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                
                
                oneMessage(item: item).padding(.trailing, 10)
                Spacer()
                Image(systemName: "ellipsis")
                    .padding()
                
                
            }.padding()
            
            Image(photo)
                .resizable()
                .aspectRatio(contentMode:.fill)
//                .frame(width: 450.0, height: 450.0, alignment: .center)
//                .padding(.horizontal, 10)
            HStack {
                
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                   
                Spacer()
                Image(systemName: "bookmark")
                
                    
                
            }.padding()

        }
    }
}
