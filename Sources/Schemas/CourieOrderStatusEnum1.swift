import Foundation

/// Courie's own order status.
///
/// The spec documents these only as a bare enum list with no per-value meaning.
/// `IN_TRANSIT`, `ON_HOLD` and `DELETED` have not been observed live. `unified.py`
/// derives progress from the pickup milestone rather than this field.
public enum CourieOrderStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case created = "CREATED"
    case assigned = "ASSIGNED"
    case inTransit = "IN_TRANSIT"
    case completed = "COMPLETED"
    case attempted = "ATTEMPTED"
    case onHold = "ON_HOLD"
    case deleted = "DELETED"
    case failed = "FAILED"
}