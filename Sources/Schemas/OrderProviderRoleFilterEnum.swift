import Foundation

public enum OrderProviderRoleFilterEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case all
    case coordinator
    case executor
}