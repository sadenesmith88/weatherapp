//
//  WeatherAppApp.swift
//  WeatherApp
//
//  Created by sade on 12/14/24.
//

import SwiftUI

@main
struct WeatherAppApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView(cityName: loadSavedCity(), viewModel: WeatherViewModel())
        }
    }
}
private func loadSavedCity() -> String {
  UserDefaults.standard.string(forKey: "savedCity") ?? "DefaultCity"
}
