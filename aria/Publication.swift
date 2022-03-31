//
//  Publication.swift
//  aria
//
//  Created by apprenant72 on 21/03/2022.
//

import Foundation

struct publicationPerson: Identifiable
{
    let id = UUID()
    
    var image: String
    
    var item: User
}


var publicationPersons:[publicationPerson] =
[
    publicationPerson(image: "publication",  item: users[0]),
    
    publicationPerson(image: "publication2", item: users[1]),
    
    publicationPerson(image: "publication3", item: users[2])

]
