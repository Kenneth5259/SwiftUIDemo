//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Kenneth Carroll on 9/20/20.
//

import SwiftUI

// import required for map functionality
import MapKit

// UIViewRepresentable needs 2 functions, a make and an update
struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // sets initial coordinates
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        
        //sets the span
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        
        //sets the overall region
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        // creates the view over the given region
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
