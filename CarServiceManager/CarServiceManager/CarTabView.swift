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
            Group {
                if let image = car.image {
                    Image(uiImage: image)
                        .scaledToFit()
                } else {
                    Image(systemName: "car.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.gray)
                }
            }
            
            .frame(width: 100, height: 100)
            Spacer()
            VStack {
                Text(car.make)
                    .font(.title)
                Text(car.model)
                    .font(.headline)
            }
        }
        .padding(.horizontal)
        .background(.red)
    }
}
#Preview {
    CarListView(viewModel: CarListViewModel(cars: [Car(id: UUID(), make: "Subaru", model: "Crosstrek", year: 2015, milage: 19023, serviceRecords: [])]))
}
