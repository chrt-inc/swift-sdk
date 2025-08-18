import Foundation

public enum OrderStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case notStarted = "not_started"
    case inProgress = "in_progress"
    case completed
    case cancelled
}