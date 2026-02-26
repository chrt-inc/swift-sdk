import Foundation

public struct AgentRes: Codable, Hashable, Sendable {
    public let response: String
    public let logisticsFact: String
    public let topicsUsed: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        response: String,
        logisticsFact: String,
        topicsUsed: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.response = response
        self.logisticsFact = logisticsFact
        self.topicsUsed = topicsUsed
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.response = try container.decode(String.self, forKey: .response)
        self.logisticsFact = try container.decode(String.self, forKey: .logisticsFact)
        self.topicsUsed = try container.decode([String].self, forKey: .topicsUsed)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.response, forKey: .response)
        try container.encode(self.logisticsFact, forKey: .logisticsFact)
        try container.encode(self.topicsUsed, forKey: .topicsUsed)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case response
        case logisticsFact = "logistics_fact"
        case topicsUsed = "topics_used"
    }
}