import Foundation

public enum OrderScheduleOrchestratorScheduleStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case notCreated = "not_created"
    case created
    case createFailed = "create_failed"
    case syncFailed = "sync_failed"
}