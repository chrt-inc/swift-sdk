import Foundation

public enum ServiceLineEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case onDemand = "on_demand"
    case routed
}