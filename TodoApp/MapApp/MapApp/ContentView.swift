//
//  ContentView.swift
//  MapApp
//
//  Created by 新井拓希 on 2023/11/10.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var showText = false
    @State var showMap = false
    
    var body: some View {
        VStack {
            Spacer()
            if showText {
                Text("🚀 Hello World! 🌎")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                Image("Ubie")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .onTapGesture {
                        showMap.toggle()
                    }
                    .sheet(isPresented: $showMap, content: {
                        MapView(address: "〒965-0006 福島県会津若松市一箕町大字鶴賀上居合９０")
                    })
                Text("Click the Ubie logo and see what happens")
                    .font(.headline)
                    .foregroundColor(.gray)
            } else {
                Button(action: {
                    showText.toggle()
                }) {
                    Text("Click and see what happens")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }
                .padding(.top, 100)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MapView: UIViewRepresentable {
    var address: String
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(address) { (placemarks, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let placemarks = placemarks,
                  let location = placemarks.first?.location else { return }
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = location.coordinate
            
            uiView.addAnnotation(annotation)
            uiView.centerCoordinate = annotation.coordinate
            
            let region = MKCoordinateRegion(center: annotation.coordinate,
                                            span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
            
            uiView.setRegion(region, animated: true)
        }
    }
}
