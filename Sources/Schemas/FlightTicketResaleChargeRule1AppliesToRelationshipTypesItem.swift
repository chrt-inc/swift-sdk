import Foundation

public enum FlightTicketResaleChargeRule1AppliesToRelationshipTypesItem: String, Codable, Hashable, CaseIterable, Sendable {
    case executorPayable = "executor_payable"
    case driverPayable = "driver_payable"
}