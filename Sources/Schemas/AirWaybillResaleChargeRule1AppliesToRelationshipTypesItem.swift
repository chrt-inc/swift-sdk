import Foundation

public enum AirWaybillResaleChargeRule1AppliesToRelationshipTypesItem: String, Codable, Hashable, CaseIterable, Sendable {
    case executorPayable = "executor_payable"
    case driverPayable = "driver_payable"
}