import Foundation

public struct OperationsTasksDeadlineTimestampsUpdateRes1: Codable, Hashable, Sendable {
    /// How many requested tasks were found in the caller's org and updated; a lower count means missing or cross-org task ids were skipped.
    public let updatedCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        updatedCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.updatedCount = updatedCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.updatedCount = try container.decode(Int.self, forKey: .updatedCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.updatedCount, forKey: .updatedCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case updatedCount = "updated_count"
    }
}