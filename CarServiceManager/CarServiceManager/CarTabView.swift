//
//  CarTabView.swift
//  CarServiceManager
//
//  Created by Eden Harvey on 11/27/24.
//

import SwiftUI

public struct CarTabView: View {
    var car: Car
    
    public var body: some View {
            HStack {
                ZStack {
                    Group {
                        if let image = car.image {
                            Image(uiImage: image)
                                .scaledToFit()
                        } else {
                            Image(systemName: "car.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.black)
                        }
                    }
                    Image(systemName: "exclamationmark.circle")
                        .resizable()
                        .foregroundStyle(.red)
                        .padding()
                        .opacity(car.needsService ? 1.0 : 0.0)
                }
                
                .frame(width: 150, height: 150)
                Spacer()
                VStack {
                    Text(car.make)
                        .font(.title)
                    Text(car.model)
                        .font(.headline)
                }
            }
            .padding(.horizontal)
            //TODO: Styling
            .border(Color.black, width: 5)
            .background(.gray)
    }
}
#Preview {
    CarListView(viewModel: CarListViewModel(cars: [
        Car(id: UUID(), make: "Subaru", model: "Crosstrek", year: 2015, milage: 19023, serviceRecords: []),
        Car(id: UUID(), make: "Subaru", model: "Crosstrek", year: 2015, milage: 19023, serviceRecords: []),
        Car(id: UUID(), make: "Subaru", model: "Crosstrek", year: 2015, milage: 19023, serviceRecords: []),
        Car(id: UUID(), make: "Subaru", model: "Crosstrek", year: 2015, milage: 19023, serviceRecords: []),
        Car(id: UUID(), make: "Subaru", model: "Crosstrek", year: 2015, milage: 19023, serviceRecords: [])
    ]))
}
