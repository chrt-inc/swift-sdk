import Foundation

/// Lifecycle + stoplight outcome of a single check on a Case.
/// 
/// ```
/// NOT_STARTED  →  IN_PROGRESS  →  SUCCESS | UNSURE | FAILURE | ERROR
///     ↑                                         ↓
///     └────────── undismiss ────────── DISMISSED ── dismiss (from any status)
/// ```
/// 
/// - `UNSURE` — yellow stoplight; signal borderline (e.g. vision confidence
///   on the edge). Counts as "needs attention" in roll-ups, filterable
///   separately for triage.
/// - `ERROR` — workflow couldn't produce a measurement (distinct from
///   `FAILURE` so broken pipelines are triaged separately from data issues).
/// - `DISMISSED` — operator override; excludes from needs-attention
///   roll-ups *and* from event re-runs. The prior stoplight outcome is
///   intentionally lost on `Check1` — the Case event log (forthcoming)
///   holds the full status-transition history.
public enum CheckStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case notStarted = "not_started"
    case inProgress = "in_progress"
    case success
    case unsure
    case failure
    case error
    case dismissed
}