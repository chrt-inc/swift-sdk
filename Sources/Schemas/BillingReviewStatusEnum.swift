import Foundation

/// Operator-driven billing-review flag for an OrderGroup (group-level) or a
/// Case (per-order, per-org). Distinct from the derived billing *settlement*
/// state - this is a manual triage status the operator flips.
public enum BillingReviewStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case notStarted = "not_started"
    case inProgress = "in_progress"
    case disputed
    case completed
}