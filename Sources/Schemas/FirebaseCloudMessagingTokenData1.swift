import Foundation

public struct FirebaseCloudMessagingTokenData1: Codable, Hashable, Sendable {
    public let firebaseCloudMessagingToken: String
    public let platform: PlatformEnum?
    public let lastUsedTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        firebaseCloudMessagingToken: String,
        platform: PlatformEnum? = nil,
        lastUsedTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.firebaseCloudMessagingToken = firebaseCloudMessagingToken
        self.platform = platform
        self.lastUsedTimestamp = lastUsedTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.firebaseCloudMessagingToken = try container.decode(String.self, forKey: .firebaseCloudMessagingToken)
        self.platform = try container.decodeIfPresent(PlatformEnum.self, forKey: .platform)
        self.lastUsedTimestamp = try container.decode(Date.self, forKey: .lastUsedTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.firebaseCloudMessagingToken, forKey: .firebaseCloudMessagingToken)
        try container.encodeIfPresent(self.platform, forKey: .platform)
        try container.encode(self.lastUsedTimestamp, forKey: .lastUsedTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case firebaseCloudMessagingToken = "firebase_cloud_messaging_token"
        case platform
        case lastUsedTimestamp = "last_used_timestamp"
    }
}