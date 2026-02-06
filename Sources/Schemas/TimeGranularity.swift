import Foundation

public enum TimeGranularity: String, Codable, Hashable, CaseIterable, Sendable {
    case hour
    case day
    case week
    case month
    case year
}