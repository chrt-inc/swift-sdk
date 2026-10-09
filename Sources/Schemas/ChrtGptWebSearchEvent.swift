import Foundation

/// OpenAI ran a web search for ChrtGPT; it has no tool_output event.
public struct ChrtGptWebSearchEvent: Codable, Hashable, Sendable {
    public let action: ActionModel
    public let itemId: String
    /// What was searched for, on the web or within a page. OpenAI omits it on some searches.
    public let queries: [String]
    /// The page opened or searched within.
    public let url: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: ActionModel,
        itemId: String,
        queries: [String],
        url: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.itemId = itemId
        self.queries = queries
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decode(ActionModel.self, forKey: .action)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.queries = try container.decode([String].self, forKey: .queries)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.action, forKey: .action)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.queries, forKey: .queries)
        try container.encodeIfPresent(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case itemId = "item_id"
        case queries
        case url
    }
}