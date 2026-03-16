import Foundation

/// Prepaid/Collect indicator.
public enum CargojsonPaymentCondition: String, Codable, Hashable, CaseIterable, Sendable {
    case collect = "Collect"
    case prepaid = "Prepaid"
}