//
//  messagesView.swift
//  aria
//
//  Created by apprenant72 on 20/03/2022.
//

import SwiftUI




struct oneMessage : View {
    
    var item: User
    

    var body: some View {
        
        
        HStack(alignment: .center) {
            Image(item.image).resizable().frame(width: 60, height: 60).clipShape(Circle()).overlay(Circle().stroke(LinearGradient(colors: [.yellow, .red], startPoint: .leading, endPoint: .bottom), lineWidth: 3))
            
            VStack(alignment: .leading) {
                Text(item.name).font(.title2).bold()
                Text(item.role).font(.callout)
            }
        }
    }
}




struct MessagesView: View {
    
    
    
    
    @State private var searchText = ""

    
   
    
   
    var body: some View {
        
        
        
        NavigationView {
            List(searchResults){item in
                    
                
                NavigationLink {
                    MessageDetailView()
                } label: {
                    oneMessage(item: item)
                }


                
            }.listStyle(.plain)
                    .searchable(text: $searchText)
                .navigationTitle("Messages")
                .toolbar {
                    
                    ToolbarItem(placement:
                            .navigationBarTrailing) {
                                Button {
                                    
                                }label: {
                                    Image(systemName: "camera")
                                }

                    }
                    
                        ToolbarItem(placement:
                                .navigationBarTrailing) {
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "square.and.pencil")
                                    }
                                    

                        }
                        
                   
                    
                    }
        }
        
    }
    
    var searchResults: [User] {
            if searchText.isEmpty {
                return users
            } else {
                return users.filter { $0.name.contains(searchText) }
            }
        }
        
        
    }


struct messagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}


