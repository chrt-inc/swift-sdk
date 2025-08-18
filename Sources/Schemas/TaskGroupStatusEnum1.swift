import Foundation

public enum TaskGroupStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case notStarted = "not_started"
    case inProgress = "in_progress"
    case completed
}