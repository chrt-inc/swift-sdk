import Foundation

public enum StripeConnectAccountEventEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case created
    case removed
}