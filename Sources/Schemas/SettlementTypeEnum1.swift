import Foundation

public enum SettlementTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case stripeConnect = "stripe_connect"
    case offChrt = "off_chrt"
}