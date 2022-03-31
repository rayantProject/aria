//
//  Map.swift
//  aria
//
//  Created by apprenant72 on 21/03/2022.
//

import Foundation

import MapKit


struct Event: Identifiable {
    let id = UUID()
    let user: User
    let coordinate: CLLocationCoordinate2D
}


var events: [Event] =

[
    Event(user: users[0], coordinate: CLLocationCoordinate2D(latitude: 45.75709, longitude: 4.89698)),
    Event(user: users[1], coordinate: CLLocationCoordinate2D(latitude: 45.75709, longitude: 4.88688)),
    Event(user: users[2], coordinate: CLLocationCoordinate2D(latitude: 45.74709, longitude: 4.90698))
]





