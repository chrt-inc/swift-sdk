import Foundation

public struct WebcargoMessageHeader: Codable, Hashable, Sendable {
    public let messageId: String?
    public let requestId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        messageId: String? = nil,
        requestId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.messageId = messageId
        self.requestId = requestId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.messageId = try container.decodeIfPresent(String.self, forKey: .messageId)
        self.requestId = try container.decodeIfPresent(String.self, forKey: .requestId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.messageId, forKey: .messageId)
        try container.encodeIfPresent(self.requestId, forKey: .requestId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId = "message_id"
        case requestId = "request_id"
    }
}