//
//  ContentView.swift
//  CarServiceManager
//
//  Created by Eden Harvey on 11/22/24.
//

import SwiftUI

struct CarListView: View {
    @State
    var viewModel: CarListViewModel
    var body: some View {
        VStack {
            ForEach(viewModel.cars) { car in
                CarTabView(car: car)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    CarListView(viewModel: CarListViewModel(cars: [Car(id: UUID(), make: "Subaru", model: "Crosstrek", year: 2015, milage: 19023, serviceRecords: [])]))
}
