//
//  meteoUIView.swift
//  aria
//
//  Created by apprenant72 on 21/03/2022.
//

import SwiftUI

struct meteoUIView: View {
    var body: some View {
        NavigationView {
            
            
            List {
                
                
                Meteo("sun.max.fill", "sun")
            
            }
        }
    }
}

struct meteoUIView_Previews: PreviewProvider {
    static var previews: some View {
        meteoUIView()
    }
}

struct Meteo: View {
    let image: String
    let text: String
    
    
    var body: some View {
        HStack {
            
            Image(systemName: image)
            Text(text)
            
        }
        
        .navigationBarTitle(Text("Weather"))
    }
}
