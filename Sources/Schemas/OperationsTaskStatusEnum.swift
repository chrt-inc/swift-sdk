import Foundation

/// Operator-driven lifecycle of an operations task.
/// 
/// Manually driven by operators for now (no automatic transitions). Kept
/// structurally parallel to the Check status model in anticipation of the
/// eventual Task <-> Check merge.
public enum OperationsTaskStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case notStarted = "not_started"
    case inProgress = "in_progress"
    case completed
    case skipped
}