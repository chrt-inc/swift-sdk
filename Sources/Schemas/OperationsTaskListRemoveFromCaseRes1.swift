import Foundation

/// Result of removing a Task List from a Case.
/// 
/// Only untouched (`not_started`) tasks are deleted; tasks an operator has
/// started, completed, or skipped are preserved and reported as `kept_count`.
public struct OperationsTaskListRemoveFromCaseRes1: Codable, Hashable, Sendable {
    public let deletedCount: Int
    public let keptCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deletedCount: Int,
        keptCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deletedCount = deletedCount
        self.keptCount = keptCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deletedCount = try container.decode(Int.self, forKey: .deletedCount)
        self.keptCount = try container.decode(Int.self, forKey: .keptCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deletedCount, forKey: .deletedCount)
        try container.encode(self.keptCount, forKey: .keptCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deletedCount = "deleted_count"
        case keptCount = "kept_count"
    }
}