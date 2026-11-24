import Foundation

public enum ChrtManagedRoleEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case viewer
    case contributor
    case `operator`
    case operationsManager
    case sales
    case billingContributor
    case billingManager
    case admin
    case superUser
}