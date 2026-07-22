import Foundation

public struct ReelablesWorkspaceSyncRes: Codable, Hashable, Sendable {
    public let createdCount: Int
    public let items: [ReelablesWorkspace1]
    public let updatedCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        createdCount: Int,
        items: [ReelablesWorkspace1],
        updatedCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.createdCount = createdCount
        self.items = items
        self.updatedCount = updatedCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.createdCount = try container.decode(Int.self, forKey: .createdCount)
        self.items = try container.decode([ReelablesWorkspace1].self, forKey: .items)
        self.updatedCount = try container.decode(Int.self, forKey: .updatedCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.createdCount, forKey: .createdCount)
        try container.encode(self.items, forKey: .items)
        try container.encode(self.updatedCount, forKey: .updatedCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case createdCount = "created_count"
        case items
        case updatedCount = "updated_count"
    }
}