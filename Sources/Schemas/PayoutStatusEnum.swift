import Foundation

public enum PayoutStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case created
    case readyForReview = "ready_for_review"
    case completed
    case cancelled
}