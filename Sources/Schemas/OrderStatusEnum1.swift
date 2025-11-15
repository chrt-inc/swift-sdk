import Foundation

public enum OrderStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case staged
    case inProgress = "in_progress"
    case completed
    case exception
}