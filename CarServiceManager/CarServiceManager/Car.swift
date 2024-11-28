//
//  Car.swift
//  CarServiceManager
//
//  Created by Eden Harvey on 11/27/24.
//
import Foundation
import UIKit

public struct Car: Equatable, Identifiable {
    public var id: UUID
    
    let make: String
    let model: String
    var image: UIImage?
    let year: Int
    var milage: Double
    
    var serviceRecords: [ServiceRecord]
    
}

public struct ServiceRecord: Equatable, Identifiable {
    public var id: UUID
    
    let type: ServiceRecordType
    let serviceProvider: String?
    let date: Date
}

public enum ServiceRecordType: String {
    case oilChange
    case tireRotation
    case tireBalancing
    case tireAlignment
    case tireReplacement
    case brakePadReplacement
    case brakeFluidFlush
    case rotorReplacement
    case transmissionFluidChange
    case coolantFluidChange
    case powerSteeringFluidChange
    case brakeFluidChange
    case windshieldWasherFluidChange
    case batteryInspection
    case batteryReplacement
    case engineAirFilterReplacement
    case cabinAirFilterReplacement
    case sparkPlugReplacement
    case timingBeltReplacement
    case wiperBladeReplacement
    case exhaustSystemInspection
    case suspensionInspection
    case steeringSystemInspection
    case fuelFilterReplacement
    case fuelInjectorCleaning
    case acSystemMaintenance
    case headlightBulbReplacement
    case taillightBulbReplacement
    case beltsHosesInspection
    case driveBeltReplacement
    case differentialFluidChange
    case vehicleDiagnostics
    case wheelBearingInspection
    case cvJointInspection
    case climateControlServicing
    case transmissionServicing
    case paintAndBodyworkServices
    case alignmentCheck
    case vehicleInspection
    case emissionsTesting
    case keyFobBatteryReplacement
    case windshieldRepair
}

