import Foundation

public enum StatementStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case created
    case readyForReview = "ready_for_review"
    case completed
    case cancelled
}