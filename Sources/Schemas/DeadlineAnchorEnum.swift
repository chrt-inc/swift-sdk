import Foundation

/// What an entry's `deadline_offset_seconds` is measured from.
/// 
/// Resolved in a single forward pass at apply time (see module docstring).
public enum DeadlineAnchorEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case fromFirstTask = "from_first_task"
    case fromPreviousTask = "from_previous_task"
}