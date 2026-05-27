import Foundation

/// One evaluation of a check against a specific event-entity instance.
/// 
/// Embedded as a list element on `Case.checks`. Uniqueness on the Case
/// is `(check, entity_id)` — each Checklist'd check fans out into one
/// `Check1` per event-entity it fires against. `entity_id` is whatever
/// identifies the unique "instance of this event" — `order_id` for
/// `order.*` events (1× per Case), `task_group_id` for
/// `task_group.driver_assigned`, `task_artifact_id` for
/// `task_artifact.*`, `task_id` for `task.completed`. See
/// `CheckEnum`'s docstring for the per-event mapping.
/// 
/// The workflow that runs the check writes `status` and
/// `completed_at_timestamp` back when it finishes. Operators dismiss a
/// specific run (one `(check, entity_id)`) by transitioning its
/// `status` to `DISMISSED`; dismissing does *not* affect future runs
/// of the same check on different `entity_id`s. `DISMISSED` is just
/// another status, not a side-flag, so workflows can short-circuit
/// with a single predicate and the dashboard cache counts naturally
/// exclude it. The *who* / *when* of every status transition lives in
/// the forthcoming Case event log, not on `Check1`.
public struct Check1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let check: CheckEnum
    public let entityId: String
    public let status: CheckStatusEnum?
    public let completedAtTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        check: CheckEnum,
        entityId: String,
        status: CheckStatusEnum? = nil,
        completedAtTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.check = check
        self.entityId = entityId
        self.status = status
        self.completedAtTimestamp = completedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.check = try container.decode(CheckEnum.self, forKey: .check)
        self.entityId = try container.decode(String.self, forKey: .entityId)
        self.status = try container.decodeIfPresent(CheckStatusEnum.self, forKey: .status)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.check, forKey: .check)
        try container.encode(self.entityId, forKey: .entityId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case check
        case entityId = "entity_id"
        case status
        case completedAtTimestamp = "completed_at_timestamp"
    }
}