import Foundation

/// Role a provider org plays on an order.
public enum OrderProviderRoleEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case coordinator
    case executor
}