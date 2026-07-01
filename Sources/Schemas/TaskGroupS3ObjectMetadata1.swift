import Foundation

public struct TaskGroupS3ObjectMetadata1: Codable, Hashable, Sendable {
    public let id: String
    public let blurhash: String?
    /// MIME type of the uploaded file (e.g., 'image/jpeg', 'application/pdf')
    public let contentType: String?
    /// Original filename of the uploaded file
    public let filename: String?
    public let s3KeyPrefix: ShippingTaskGroupS3ObjectMetadata?
    public let schemaVersion: Int
    public let taskGroupId: String
    public let uploadedAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let uploadedByOrgId: String
    /// Must be a string starting with `user_`
    public let uploadedByUserId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        blurhash: String? = nil,
        contentType: String? = nil,
        filename: String? = nil,
        s3KeyPrefix: ShippingTaskGroupS3ObjectMetadata? = nil,
        schemaVersion: Int,
        taskGroupId: String,
        uploadedAtTimestamp: Date,
        uploadedByOrgId: String,
        uploadedByUserId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.blurhash = blurhash
        self.contentType = contentType
        self.filename = filename
        self.s3KeyPrefix = s3KeyPrefix
        self.schemaVersion = schemaVersion
        self.taskGroupId = taskGroupId
        self.uploadedAtTimestamp = uploadedAtTimestamp
        self.uploadedByOrgId = uploadedByOrgId
        self.uploadedByUserId = uploadedByUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.blurhash = try container.decodeIfPresent(String.self, forKey: .blurhash)
        self.contentType = try container.decodeIfPresent(String.self, forKey: .contentType)
        self.filename = try container.decodeIfPresent(String.self, forKey: .filename)
        self.s3KeyPrefix = try container.decodeIfPresent(ShippingTaskGroupS3ObjectMetadata.self, forKey: .s3KeyPrefix)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.uploadedAtTimestamp = try container.decode(Date.self, forKey: .uploadedAtTimestamp)
        self.uploadedByOrgId = try container.decode(String.self, forKey: .uploadedByOrgId)
        self.uploadedByUserId = try container.decode(String.self, forKey: .uploadedByUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.blurhash, forKey: .blurhash)
        try container.encodeIfPresent(self.contentType, forKey: .contentType)
        try container.encodeIfPresent(self.filename, forKey: .filename)
        try container.encodeIfPresent(self.s3KeyPrefix, forKey: .s3KeyPrefix)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.uploadedAtTimestamp, forKey: .uploadedAtTimestamp)
        try container.encode(self.uploadedByOrgId, forKey: .uploadedByOrgId)
        try container.encode(self.uploadedByUserId, forKey: .uploadedByUserId)
    }

    public enum ShippingTaskGroupS3ObjectMetadata: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupS3ObjectMetadata = "shipping/task_group_s3_object_metadata"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case blurhash
        case contentType = "content_type"
        case filename
        case s3KeyPrefix = "s3_key_prefix"
        case schemaVersion = "schema_version"
        case taskGroupId = "task_group_id"
        case uploadedAtTimestamp = "uploaded_at_timestamp"
        case uploadedByOrgId = "uploaded_by_org_id"
        case uploadedByUserId = "uploaded_by_user_id"
    }
}