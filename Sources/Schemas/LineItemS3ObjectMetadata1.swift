import Foundation

public struct LineItemS3ObjectMetadata1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let lineItemId: String
    public let uploadedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let uploadedByUserId: String
    /// Must be a string starting with `org_`
    public let uploadedByOrgId: String
    public let s3KeyPrefix: BillingLineItemS3ObjectMetadata?
    public let blurhash: String?
    /// MIME type of the uploaded file (e.g., 'image/jpeg', 'application/pdf')
    public let contentType: String?
    /// Original filename of the uploaded file
    public let filename: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        lineItemId: String,
        uploadedAtTimestamp: Date,
        uploadedByUserId: String,
        uploadedByOrgId: String,
        s3KeyPrefix: BillingLineItemS3ObjectMetadata? = nil,
        blurhash: String? = nil,
        contentType: String? = nil,
        filename: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.lineItemId = lineItemId
        self.uploadedAtTimestamp = uploadedAtTimestamp
        self.uploadedByUserId = uploadedByUserId
        self.uploadedByOrgId = uploadedByOrgId
        self.s3KeyPrefix = s3KeyPrefix
        self.blurhash = blurhash
        self.contentType = contentType
        self.filename = filename
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.lineItemId = try container.decode(String.self, forKey: .lineItemId)
        self.uploadedAtTimestamp = try container.decode(Date.self, forKey: .uploadedAtTimestamp)
        self.uploadedByUserId = try container.decode(String.self, forKey: .uploadedByUserId)
        self.uploadedByOrgId = try container.decode(String.self, forKey: .uploadedByOrgId)
        self.s3KeyPrefix = try container.decodeIfPresent(BillingLineItemS3ObjectMetadata.self, forKey: .s3KeyPrefix)
        self.blurhash = try container.decodeIfPresent(String.self, forKey: .blurhash)
        self.contentType = try container.decodeIfPresent(String.self, forKey: .contentType)
        self.filename = try container.decodeIfPresent(String.self, forKey: .filename)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.lineItemId, forKey: .lineItemId)
        try container.encode(self.uploadedAtTimestamp, forKey: .uploadedAtTimestamp)
        try container.encode(self.uploadedByUserId, forKey: .uploadedByUserId)
        try container.encode(self.uploadedByOrgId, forKey: .uploadedByOrgId)
        try container.encodeIfPresent(self.s3KeyPrefix, forKey: .s3KeyPrefix)
        try container.encodeIfPresent(self.blurhash, forKey: .blurhash)
        try container.encodeIfPresent(self.contentType, forKey: .contentType)
        try container.encodeIfPresent(self.filename, forKey: .filename)
    }

    public enum BillingLineItemS3ObjectMetadata: String, Codable, Hashable, CaseIterable, Sendable {
        case billingLineItemS3ObjectMetadata = "billing/line_item_s3_object_metadata"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case lineItemId = "line_item_id"
        case uploadedAtTimestamp = "uploaded_at_timestamp"
        case uploadedByUserId = "uploaded_by_user_id"
        case uploadedByOrgId = "uploaded_by_org_id"
        case s3KeyPrefix = "s3_key_prefix"
        case blurhash
        case contentType = "content_type"
        case filename
    }
}