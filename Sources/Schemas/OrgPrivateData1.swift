import Foundation

public struct OrgPrivateData1: Codable, Hashable, Sendable {
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let orgSubscription: Bool?
    public let orgType: OrgTypeEnum
    public let schemaVersion: Int
    public let stripeConnectAccountId: String?
    public let stripeCustomerId: String?
    public let svixAppId: String?
    public let webcargoApiKey: String?
    public let webcargoCountries: [String]?
    public let webcargoEmail: String?
    public let webhookEnabled: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        orgId: String,
        orgSubscription: Bool? = nil,
        orgType: OrgTypeEnum,
        schemaVersion: Int,
        stripeConnectAccountId: String? = nil,
        stripeCustomerId: String? = nil,
        svixAppId: String? = nil,
        webcargoApiKey: String? = nil,
        webcargoCountries: [String]? = nil,
        webcargoEmail: String? = nil,
        webhookEnabled: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.orgId = orgId
        self.orgSubscription = orgSubscription
        self.orgType = orgType
        self.schemaVersion = schemaVersion
        self.stripeConnectAccountId = stripeConnectAccountId
        self.stripeCustomerId = stripeCustomerId
        self.svixAppId = svixAppId
        self.webcargoApiKey = webcargoApiKey
        self.webcargoCountries = webcargoCountries
        self.webcargoEmail = webcargoEmail
        self.webhookEnabled = webhookEnabled
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.orgSubscription = try container.decodeIfPresent(Bool.self, forKey: .orgSubscription)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.stripeConnectAccountId = try container.decodeIfPresent(String.self, forKey: .stripeConnectAccountId)
        self.stripeCustomerId = try container.decodeIfPresent(String.self, forKey: .stripeCustomerId)
        self.svixAppId = try container.decodeIfPresent(String.self, forKey: .svixAppId)
        self.webcargoApiKey = try container.decodeIfPresent(String.self, forKey: .webcargoApiKey)
        self.webcargoCountries = try container.decodeIfPresent([String].self, forKey: .webcargoCountries)
        self.webcargoEmail = try container.decodeIfPresent(String.self, forKey: .webcargoEmail)
        self.webhookEnabled = try container.decodeIfPresent(Bool.self, forKey: .webhookEnabled)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.orgSubscription, forKey: .orgSubscription)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.stripeConnectAccountId, forKey: .stripeConnectAccountId)
        try container.encodeIfPresent(self.stripeCustomerId, forKey: .stripeCustomerId)
        try container.encodeIfPresent(self.svixAppId, forKey: .svixAppId)
        try container.encodeIfPresent(self.webcargoApiKey, forKey: .webcargoApiKey)
        try container.encodeIfPresent(self.webcargoCountries, forKey: .webcargoCountries)
        try container.encodeIfPresent(self.webcargoEmail, forKey: .webcargoEmail)
        try container.encodeIfPresent(self.webhookEnabled, forKey: .webhookEnabled)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case orgId = "org_id"
        case orgSubscription = "org_subscription"
        case orgType = "org_type"
        case schemaVersion = "schema_version"
        case stripeConnectAccountId = "stripe_connect_account_id"
        case stripeCustomerId = "stripe_customer_id"
        case svixAppId = "svix_app_id"
        case webcargoApiKey = "webcargo_api_key"
        case webcargoCountries = "webcargo_countries"
        case webcargoEmail = "webcargo_email"
        case webhookEnabled = "webhook_enabled"
    }
}