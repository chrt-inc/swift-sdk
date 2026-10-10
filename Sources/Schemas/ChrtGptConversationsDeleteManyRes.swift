import Foundation

public struct ChrtGptConversationsDeleteManyRes: Codable, Hashable, Sendable {
    /// The requested conversations this call deleted; skipped IDs are left out.
    public let deletedConversationIds: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deletedConversationIds: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deletedConversationIds = deletedConversationIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deletedConversationIds = try container.decode([String].self, forKey: .deletedConversationIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deletedConversationIds, forKey: .deletedConversationIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deletedConversationIds = "deleted_conversation_ids"
    }
}