import Foundation

public struct ChrtGptToolOutputEvent: Codable, Hashable, Sendable {
    /// The call_id of the tool_called event.
    public let callId: String
    /// Text of the tool result: the tool's JSON output or an error message.
    public let output: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        callId: String,
        output: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.callId = callId
        self.output = output
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.callId = try container.decode(String.self, forKey: .callId)
        self.output = try container.decode(String.self, forKey: .output)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.callId, forKey: .callId)
        try container.encode(self.output, forKey: .output)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case callId = "call_id"
        case output
    }
}