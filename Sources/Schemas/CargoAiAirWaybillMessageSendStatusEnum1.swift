import Foundation

public enum CargoAiAirWaybillMessageSendStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case transmitted
    case refused
    case unanswered
}