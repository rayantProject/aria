//
//  MapView.swift
//  aria
//
//  Created by apprenant72 on 21/03/2022.
//

import SwiftUI

import MapKit







struct MapView: View {
    
    @State var boolOfModal = false
    
    @State var searchText: String = ""
    var searchResults: [Event] {
        if searchText.isEmpty {
            return events
        } else {
            return events.filter { $0.user.name.contains(searchText) }
        }
    }
    
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 45.75709, longitude: 4.89698), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    var body: some View {
        NavigationView {
            
            Map(coordinateRegion: $mapRegion, annotationItems: searchResults) { city in
                MapAnnotation(coordinate: city.coordinate) {
                    
                    VStack{
                        
                         
                        Button {
                            
                            
                           
                            
                            
                        } label: {
                            
                            VStack {
                            
                            Image(city.user.image).resizable().frame(width: 60, height: 60).clipShape(Circle()).overlay(Circle().stroke(LinearGradient(colors: [.yellow, .red], startPoint: .leading, endPoint: .bottom), lineWidth: 3))
                            
                                Text(city.user.name)
                            }
                        }
                    }
                    }
                }
                .navigationBarTitle("MAP")
                .searchable(text: $searchText)
            }
        }
    }
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
        }
    }
