import Foundation

public enum ChampAirWaybillStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case submitted
    case accepted
    case rejected
}