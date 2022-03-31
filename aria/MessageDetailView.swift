//
//  MessageDetailView.swift
//  aria
//
//  Created by apprenant72 on 22/03/2022.
//

import SwiftUI

struct MsgContent: View {

    let msg: Chat
    
    var body: some View {
        
       
       
            Text(msg.message)
                .padding(10)
                
                .foregroundColor(msg.isUser ? Color.white : Color.black)
                .background(msg.isUser ? Color.blue : Color(UIColor.systemGray3))
                .cornerRadius(10)
        
}

}


struct Msg: View {
    
    let chat: Chat
    var body: some View {
     
        HStack {
        if !chat.isUser
        {
            Image(chat.user.image).resizable().frame(width: 70, height: 70) .clipShape(Circle())
        }else
        {
            Spacer()
        }
        MsgContent(msg: chat)
            if !chat.isUser
            {
                Spacer()
            }
            
        }.padding()
    }
}





struct MessageDetailView: View {
    
@State var typingMessage =  ""
    
    let J = Chat(user: users[1], message: "I do test", isUser: false)
    let v = Chat(user: users[0], message: "I do test to", isUser: true)
    
   
    var body: some View {
            
        
        
        VStack{
            ScrollView
            {
                
                
                
                Msg(chat: J)
                Msg(chat: v)
//
//                ForEach(chats)
//                {
//                    chat in
//
//                    Msg(chat: chat)
//
//
//                }
//
//
              
            }
            
            VStack {
                   TextField("Message...", text: $typingMessage)
                      .textFieldStyle(RoundedBorderTextFieldStyle())
                      .frame(minHeight: CGFloat(30))
                }.frame(minHeight: CGFloat(50)).padding()
            
            
            Button("Envoyer") {
                
            }
            
            
            
        }
            .navigationBarTitle("Message Details")
            .navigationBarTitleDisplayMode(.inline)
        
        
        
        
        
        
    }
}

struct MessageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MessageDetailView()
    }
}
