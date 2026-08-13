import Foundation

public enum ShippingIntegrationOrderStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case staged
    case inProgress = "in_progress"
    case completed
    case cancelled
    case exception
}