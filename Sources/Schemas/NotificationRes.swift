import Foundation

public struct NotificationRes: Codable, Hashable, Sendable {
    public let success: Bool
    public let name: String
    public let message: String
    public let recipient: String
    public let requestId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        success: Bool,
        name: String,
        message: String,
        recipient: String,
        requestId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.success = success
        self.name = name
        self.message = message
        self.recipient = recipient
        self.requestId = requestId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.success = try container.decode(Bool.self, forKey: .success)
        self.name = try container.decode(String.self, forKey: .name)
        self.message = try container.decode(String.self, forKey: .message)
        self.recipient = try container.decode(String.self, forKey: .recipient)
        self.requestId = try container.decode(String.self, forKey: .requestId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.success, forKey: .success)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.recipient, forKey: .recipient)
        try container.encode(self.requestId, forKey: .requestId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case success
        case name
        case message
        case recipient
        case requestId = "request_id"
    }
}