import Foundation

public enum RateSheetBillingTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case billed
    case notBilled = "not_billed"
}