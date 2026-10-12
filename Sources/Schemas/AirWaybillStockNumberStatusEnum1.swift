import Foundation

public enum AirWaybillStockNumberStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case available
    case reserved
    case used
    case void
}