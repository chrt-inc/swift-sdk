import Foundation

public enum TaskArtifactTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case image
    case file
    case signature
    case scan
    case other
}