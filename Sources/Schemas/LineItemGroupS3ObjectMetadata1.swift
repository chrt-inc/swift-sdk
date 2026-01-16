import Foundation

public struct LineItemGroupS3ObjectMetadata1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let lineItemGroupId: String
    public let uploadedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let uploadedByUserId: String
    /// Must be a string starting with `org_`
    public let uploadedByOrgId: String
    public let s3KeyPrefix: BillingLineItemGroupS3ObjectMetadata?
    public let blurhash: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        lineItemGroupId: String,
        uploadedAtTimestamp: Date,
        uploadedByUserId: String,
        uploadedByOrgId: String,
        s3KeyPrefix: BillingLineItemGroupS3ObjectMetadata? = nil,
        blurhash: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.lineItemGroupId = lineItemGroupId
        self.uploadedAtTimestamp = uploadedAtTimestamp
        self.uploadedByUserId = uploadedByUserId
        self.uploadedByOrgId = uploadedByOrgId
        self.s3KeyPrefix = s3KeyPrefix
        self.blurhash = blurhash
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.lineItemGroupId = try container.decode(String.self, forKey: .lineItemGroupId)
        self.uploadedAtTimestamp = try container.decode(Date.self, forKey: .uploadedAtTimestamp)
        self.uploadedByUserId = try container.decode(String.self, forKey: .uploadedByUserId)
        self.uploadedByOrgId = try container.decode(String.self, forKey: .uploadedByOrgId)
        self.s3KeyPrefix = try container.decodeIfPresent(BillingLineItemGroupS3ObjectMetadata.self, forKey: .s3KeyPrefix)
        self.blurhash = try container.decodeIfPresent(String.self, forKey: .blurhash)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.lineItemGroupId, forKey: .lineItemGroupId)
        try container.encode(self.uploadedAtTimestamp, forKey: .uploadedAtTimestamp)
        try container.encode(self.uploadedByUserId, forKey: .uploadedByUserId)
        try container.encode(self.uploadedByOrgId, forKey: .uploadedByOrgId)
        try container.encodeIfPresent(self.s3KeyPrefix, forKey: .s3KeyPrefix)
        try container.encodeIfPresent(self.blurhash, forKey: .blurhash)
    }

    public enum BillingLineItemGroupS3ObjectMetadata: String, Codable, Hashable, CaseIterable, Sendable {
        case billingLineItemGroupS3ObjectMetadata = "billing/line_item_group_s3_object_metadata"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case lineItemGroupId = "line_item_group_id"
        case uploadedAtTimestamp = "uploaded_at_timestamp"
        case uploadedByUserId = "uploaded_by_user_id"
        case uploadedByOrgId = "uploaded_by_org_id"
        case s3KeyPrefix = "s3_key_prefix"
        case blurhash
    }
}