import Foundation

public enum TaskArtifactStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case staged
    case completed
    case exception
}