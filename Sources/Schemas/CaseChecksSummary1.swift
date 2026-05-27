import Foundation

/// Denormalized summary cache for `Case.checks` plus applied-Checklist log.
/// 
/// Embedded at `Case.checks_summary`. Rewritten on every mutation of
/// `Case.checks` (or `applied_checklist_ids`) so the operator dashboard
/// can filter / sort / count Cases without scanning the `checks` array.
/// Dismissed checks are excluded from every cache field.
/// 
/// `OperationsEventEnum` is exported alongside this model because the
/// Case-level event log (forthcoming) will key off the same vocabulary;
/// keeping the import here documents the shared dependency.
public struct CaseChecksSummary1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let appliedChecklistIds: [String]?
    public let successCount: Int?
    public let failureCount: Int?
    public let unsureCount: Int?
    public let errorCount: Int?
    public let failureCheckKeys: [CheckEnum]?
    public let unsureCheckKeys: [CheckEnum]?
    public let errorCheckKeys: [CheckEnum]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        appliedChecklistIds: [String]? = nil,
        successCount: Int? = nil,
        failureCount: Int? = nil,
        unsureCount: Int? = nil,
        errorCount: Int? = nil,
        failureCheckKeys: [CheckEnum]? = nil,
        unsureCheckKeys: [CheckEnum]? = nil,
        errorCheckKeys: [CheckEnum]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.appliedChecklistIds = appliedChecklistIds
        self.successCount = successCount
        self.failureCount = failureCount
        self.unsureCount = unsureCount
        self.errorCount = errorCount
        self.failureCheckKeys = failureCheckKeys
        self.unsureCheckKeys = unsureCheckKeys
        self.errorCheckKeys = errorCheckKeys
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.appliedChecklistIds = try container.decodeIfPresent([String].self, forKey: .appliedChecklistIds)
        self.successCount = try container.decodeIfPresent(Int.self, forKey: .successCount)
        self.failureCount = try container.decodeIfPresent(Int.self, forKey: .failureCount)
        self.unsureCount = try container.decodeIfPresent(Int.self, forKey: .unsureCount)
        self.errorCount = try container.decodeIfPresent(Int.self, forKey: .errorCount)
        self.failureCheckKeys = try container.decodeIfPresent([CheckEnum].self, forKey: .failureCheckKeys)
        self.unsureCheckKeys = try container.decodeIfPresent([CheckEnum].self, forKey: .unsureCheckKeys)
        self.errorCheckKeys = try container.decodeIfPresent([CheckEnum].self, forKey: .errorCheckKeys)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.appliedChecklistIds, forKey: .appliedChecklistIds)
        try container.encodeIfPresent(self.successCount, forKey: .successCount)
        try container.encodeIfPresent(self.failureCount, forKey: .failureCount)
        try container.encodeIfPresent(self.unsureCount, forKey: .unsureCount)
        try container.encodeIfPresent(self.errorCount, forKey: .errorCount)
        try container.encodeIfPresent(self.failureCheckKeys, forKey: .failureCheckKeys)
        try container.encodeIfPresent(self.unsureCheckKeys, forKey: .unsureCheckKeys)
        try container.encodeIfPresent(self.errorCheckKeys, forKey: .errorCheckKeys)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case appliedChecklistIds = "applied_checklist_ids"
        case successCount = "success_count"
        case failureCount = "failure_count"
        case unsureCount = "unsure_count"
        case errorCount = "error_count"
        case failureCheckKeys = "failure_check_keys"
        case unsureCheckKeys = "unsure_check_keys"
        case errorCheckKeys = "error_check_keys"
    }
}