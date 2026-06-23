import Foundation

public struct OperationsTasksBulkUpdateDeadlinesRes1: Codable, Hashable, Sendable {
    /// How many of the requested tasks were found in the caller's org and had their deadline set; a value below the number of requested updates means some ids were silently skipped (missing or cross-org).
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