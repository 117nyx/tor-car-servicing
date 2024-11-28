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
        ScrollView {
            ForEach(viewModel.cars) { car in
                Button {
                    viewModel.highlightCar(car: car)
                } label: {
                    CarTabView(car: car)
                }
            }
            Button {
                viewModel.isShowingAddCarSheet.toggle()
            } label: {
                Text("Add New Car")
                    .font(.title)
            }
            .buttonStyle(.plain)
            .background(.pink)
        }
        .edgesIgnoringSafeArea(.horizontal)
        .sheet(isPresented: $viewModel.isShowingCarDetail) {
            Text(viewModel.selectedCar?.make ?? "unknown")
            Text(viewModel.selectedCar?.model ?? "model")
        }
        .sheet(isPresented: $viewModel.isShowingAddCarSheet, content: {
            Button {
                viewModel.newCar()
            } label: {
                Text("Add New Car")
                    .font(.title)
            }
            .buttonStyle(.plain)
            .background(.pink)
        })
    }
}

#Preview {
    CarListView(viewModel: CarListViewModel(cars: [
        Car(id: UUID(), make: "Subaru", model: "Crosstrek", year: 2015, milage: 19023, serviceRecords: [])
//        Car(id: UUID(), make: "Subaru", model: "Outback", year: 2015, milage: 19023, serviceRecords: []),
//        Car(id: UUID(), make: "Subaru", model: "WRX", year: 2015, milage: 19023, serviceRecords: []),
//        Car(id: UUID(), make: "Toyota", model: "Corolla", year: 2015, milage: 19023, serviceRecords: []),
//        Car(id: UUID(), make: "BMW", model: "i5", year: 2015, milage: 19023, serviceRecords: []),
//        Car(id: UUID(), make: "Subaru", model: "Crosstrek", year: 2015, milage: 19023, serviceRecords: []),
//        Car(id: UUID(), make: "Subaru", model: "Outback", year: 2015, milage: 19023, serviceRecords: []),
//        Car(id: UUID(), make: "Subaru", model: "WRX", year: 2015, milage: 19023, serviceRecords: []),
//        Car(id: UUID(), make: "Toyota", model: "Corolla", year: 2015, milage: 19023, serviceRecords: []),
//        Car(id: UUID(), make: "BMW", model: "i5", year: 2015, milage: 19023, serviceRecords: [])
    ]))
}

