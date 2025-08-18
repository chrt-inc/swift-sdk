import Foundation

public enum RouteTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case routed
    case onDemand = "on-demand"
}