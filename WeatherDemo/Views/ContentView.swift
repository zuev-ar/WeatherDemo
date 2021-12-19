//
//  ContentView.swift
//  WeatherDemo
//
//  Created by Arkasha Zuev on 19.12.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    @State var weather: ResponseBody?
    
    var weatherManager = WeatherManager()
    
    var body: some View {
        VStack {
            WeatherView(weather: previewWeather)
//            if let location = locationManager.location {
//                if let weather = weather {
//                    WeatherView(weather: weather)
//                } else {
//                    LoadingView()
//                        .task {
//                            do {
//                                weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
//                            } catch {
//                                print("Error getting weather: \(error)")
//                            }
//                        }
//                }
//            } else {
//                if locationManager.isLoading {
//                    LoadingView()
//                } else {
//                    WelcomeView()
//                        .environmentObject(locationManager)
//                }
//            }
        }
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
