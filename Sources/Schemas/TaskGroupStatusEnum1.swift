import Foundation

public enum TaskGroupStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case staged
    case inProgress = "in_progress"
    case completed
    case skipped
    case exception
}