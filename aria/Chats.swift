//
//  Chats.swift
//  aria
//
//  Created by apprenant72 on 22/03/2022.
//

import Foundation

struct Chat: Identifiable
{
    let id = UUID()
    
    let user : User
    
    let message: String
    
    let isUser: Bool
    
}

var chats: [Chat] = []



