import Foundation

public enum PaymentRoleFilterEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case origin
    case destination
}