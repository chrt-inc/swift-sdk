import Foundation

public enum DriverStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case unassigned
    case assigned
    case inProgress = "in_progress"
}