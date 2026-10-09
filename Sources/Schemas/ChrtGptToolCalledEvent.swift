import Foundation

/// ChrtGPT called a chrt-mcp tool; its tool_output event follows.
public struct ChrtGptToolCalledEvent: Codable, Hashable, Sendable {
    /// JSON-encoded tool arguments.
    public let arguments: String
    public let callId: String
    public let name: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        arguments: String,
        callId: String,
        name: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.arguments = arguments
        self.callId = callId
        self.name = name
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.arguments = try container.decode(String.self, forKey: .arguments)
        self.callId = try container.decode(String.self, forKey: .callId)
        self.name = try container.decode(String.self, forKey: .name)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.arguments, forKey: .arguments)
        try container.encode(self.callId, forKey: .callId)
        try container.encode(self.name, forKey: .name)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case arguments
        case callId = "call_id"
        case name
    }
}