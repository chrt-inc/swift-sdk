import Foundation

public struct UserPrivateData1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    public let firebaseCloudMessagingTokenData: [FirebaseCloudMessagingTokenData1]?
    public let phoneNumber: String?
    public let primaryEmailAddress: String?
    public let schemaVersion: Int
    public let stripeCustomerId: String?
    public let userId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        firebaseCloudMessagingTokenData: [FirebaseCloudMessagingTokenData1]? = nil,
        phoneNumber: String? = nil,
        primaryEmailAddress: String? = nil,
        schemaVersion: Int,
        stripeCustomerId: String? = nil,
        userId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.firebaseCloudMessagingTokenData = firebaseCloudMessagingTokenData
        self.phoneNumber = phoneNumber
        self.primaryEmailAddress = primaryEmailAddress
        self.schemaVersion = schemaVersion
        self.stripeCustomerId = stripeCustomerId
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.firebaseCloudMessagingTokenData = try container.decodeIfPresent([FirebaseCloudMessagingTokenData1].self, forKey: .firebaseCloudMessagingTokenData)
        self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        self.primaryEmailAddress = try container.decodeIfPresent(String.self, forKey: .primaryEmailAddress)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.stripeCustomerId = try container.decodeIfPresent(String.self, forKey: .stripeCustomerId)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.firebaseCloudMessagingTokenData, forKey: .firebaseCloudMessagingTokenData)
        try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(self.primaryEmailAddress, forKey: .primaryEmailAddress)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.stripeCustomerId, forKey: .stripeCustomerId)
        try container.encode(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case firebaseCloudMessagingTokenData = "firebase_cloud_messaging_token_data"
        case phoneNumber = "phone_number"
        case primaryEmailAddress = "primary_email_address"
        case schemaVersion = "schema_version"
        case stripeCustomerId = "stripe_customer_id"
        case userId = "user_id"
    }
}