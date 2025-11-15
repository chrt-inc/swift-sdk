import Foundation

public enum TaskStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case staged
    case completed
    case exception
}