import Foundation

public struct AgentRes: Codable, Hashable, Sendable {
    public let logisticsFact: String
    public let response: String
    public let topicsUsed: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        logisticsFact: String,
        response: String,
        topicsUsed: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.logisticsFact = logisticsFact
        self.response = response
        self.topicsUsed = topicsUsed
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.logisticsFact = try container.decode(String.self, forKey: .logisticsFact)
        self.response = try container.decode(String.self, forKey: .response)
        self.topicsUsed = try container.decode([String].self, forKey: .topicsUsed)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.logisticsFact, forKey: .logisticsFact)
        try container.encode(self.response, forKey: .response)
        try container.encode(self.topicsUsed, forKey: .topicsUsed)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case logisticsFact = "logistics_fact"
        case response
        case topicsUsed = "topics_used"
    }
}