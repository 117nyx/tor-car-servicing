//
//  CarServiceManagerApp.swift
//  CarServiceManager
//
//  Created by Eden Harvey on 11/22/24.
//

import SwiftUI

@main
struct CarServiceManagerApp: App {
    var body: some Scene {
        WindowGroup {
            CarListView(viewModel: CarListViewModel(cars: []))
        }
    }
}
