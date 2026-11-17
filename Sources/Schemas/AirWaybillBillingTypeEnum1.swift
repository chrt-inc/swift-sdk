import Foundation

public enum AirWaybillBillingTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case billed
    case trackedOnly = "tracked_only"
}