import Foundation

public enum TrackingOrgScopeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case owned
    case shared
    case ownedAndShared = "owned_and_shared"
}