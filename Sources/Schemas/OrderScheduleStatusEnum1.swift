import Foundation

public enum OrderScheduleStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case paused
    case archived
}