//
//  ProfilView.swift
//  aria
//
//  Created by apprenant72 on 22/03/2022.
//

import SwiftUI

struct ProfilView: View {
@State  var userName: String = ""
@State  var userPass: String = ""
    
    var body: some View {
        
        VStack {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 200, height: 200)
            
            
            Text("your name : "+userName).font(.title)
            Text("your pass : "+userPass)
        
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
