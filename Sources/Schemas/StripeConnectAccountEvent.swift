import Foundation

public struct StripeConnectAccountEvent: Codable, Hashable, Sendable {
    public let timestamp: Date
    /// Must be a string starting with `user_`
    public let userId: String
    public let stripeConnectAccountId: String
    public let event: StripeConnectAccountEventEnum
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        timestamp: Date,
        userId: String,
        stripeConnectAccountId: String,
        event: StripeConnectAccountEventEnum,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.timestamp = timestamp
        self.userId = userId
        self.stripeConnectAccountId = stripeConnectAccountId
        self.event = event
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.stripeConnectAccountId = try container.decode(String.self, forKey: .stripeConnectAccountId)
        self.event = try container.decode(StripeConnectAccountEventEnum.self, forKey: .event)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.timestamp, forKey: .timestamp)
        try container.encode(self.userId, forKey: .userId)
        try container.encode(self.stripeConnectAccountId, forKey: .stripeConnectAccountId)
        try container.encode(self.event, forKey: .event)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case timestamp
        case userId = "user_id"
        case stripeConnectAccountId = "stripe_connect_account_id"
        case event
    }
}