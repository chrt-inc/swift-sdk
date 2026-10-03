import Foundation

public struct LiveKitHelloWorldStartRes: Codable, Hashable, Sendable {
    public let participantToken: String
    public let roomName: String
    public let serverUrl: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        participantToken: String,
        roomName: String,
        serverUrl: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.participantToken = participantToken
        self.roomName = roomName
        self.serverUrl = serverUrl
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.participantToken = try container.decode(String.self, forKey: .participantToken)
        self.roomName = try container.decode(String.self, forKey: .roomName)
        self.serverUrl = try container.decode(String.self, forKey: .serverUrl)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.participantToken, forKey: .participantToken)
        try container.encode(self.roomName, forKey: .roomName)
        try container.encode(self.serverUrl, forKey: .serverUrl)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case participantToken = "participant_token"
        case roomName = "room_name"
        case serverUrl = "server_url"
    }
}