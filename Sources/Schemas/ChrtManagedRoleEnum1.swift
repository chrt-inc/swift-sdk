import Foundation

public enum ChrtManagedRoleEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case superUser
    case manager
    case contributor
    case viewer
}