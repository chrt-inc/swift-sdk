import Foundation

public enum ServiceTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case onDemand = "on_demand"
    case routed
}