import Foundation

public enum CaseStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case inProgress = "in_progress"
    case closed
}