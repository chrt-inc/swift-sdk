import Foundation

public enum BillingRelationshipTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case receivable
    case executorPayable = "executor_payable"
    case driverPayable = "driver_payable"
}