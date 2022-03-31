//
//  LoginView.swift
//  aria
//
//  Created by apprenant72 on 22/03/2022.
//

import SwiftUI
import AVFoundation






struct modal: View {
    var body: some View {
        Text("User name (n / or) Passeword can be void").font(.title).bold().padding()
            .multilineTextAlignment(.center)
    }
}



struct LoginView: View {
    @State var testModal: Bool = false
    @State var username: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
        
            
                Image("TRAORE").resizable().frame(width: 300, height: 300).cornerRadius(50)
            
            
            TextField(text: $username, prompt: Text("User name"))
            {
               
            }.padding()
            SecureField(text: $password, prompt: Text("password")) {
               
            }.padding()
            
                
                
                if username.isEmpty || password.isEmpty
                {
                    Button("Button"){
                        let utterance = AVSpeechUtterance(string: "the password and user name are empty - Meow")


                        // Method 2: By langauge code
                        utterance.voice = AVSpeechSynthesisVoice(language: "en")

                        let synthesizer = AVSpeechSynthesizer()
                        
                        synthesizer.speak(utterance)
                        
                        
                        testModal = true
                        
                    }.buttonStyle(.borderedProminent)
                        .sheet(isPresented: $testModal)
                    {
                            modal()
                        }
                    
                    
                }else {
                    
                    NavigationLink {

                        ProfilView(userName: username, userPass: password)






                    }label: {
                        Text("Button")

                    }.buttonStyle(.borderedProminent)
                
                }
                
                
                
            
        }.padding()
            
                .navigationBarTitle(username.count > 0 ? "Bonjour \(username)" : "")
        }
        
        
        
        
}
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
