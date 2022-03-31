//
//  User.swift
//  aria
//
//  Created by apprenant72 on 21/03/2022.
//

import Foundation


struct User: Identifiable {
    
    let id = UUID()
    
    var name: String
    
    var role: String
    
    var image: String
    
}

let users:[User] =
[
    User(name: "Rayan Traore", role: "Developper", image: "profil0"),
    User(name: "Danilo Santana", role: "Music", image: "profil2"),
    User(name: "Gwendo Paki", role: "Music", image: "profil1")
]
