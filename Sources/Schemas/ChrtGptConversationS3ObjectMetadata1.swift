import Foundation

public struct ChrtGptConversationS3ObjectMetadata1: Codable, Hashable, Sendable {
    public let id: String
    public let aiGeneratedDescription: String
    public let blurhash: String?
    /// MIME type detected from the file's bytes.
    public let contentType: String
    public let conversationId: String
    /// Original filename of the uploaded file
    public let filename: String?
    public let objectType: ChrtGptConversationS3ObjectTypeEnum1
    public let s3KeyPrefix: ChrtGptConversationS3ObjectMetadata?
    public let schemaVersion: Int
    public let sizeBytes: Int
    public let uploadedAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let uploadedByOrgId: String
    /// Must be a string starting with `user_`
    public let uploadedByUserId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        aiGeneratedDescription: String,
        blurhash: String? = nil,
        contentType: String,
        conversationId: String,
        filename: String? = nil,
        objectType: ChrtGptConversationS3ObjectTypeEnum1,
        s3KeyPrefix: ChrtGptConversationS3ObjectMetadata? = nil,
        schemaVersion: Int,
        sizeBytes: Int,
        uploadedAtTimestamp: Date,
        uploadedByOrgId: String,
        uploadedByUserId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.aiGeneratedDescription = aiGeneratedDescription
        self.blurhash = blurhash
        self.contentType = contentType
        self.conversationId = conversationId
        self.filename = filename
        self.objectType = objectType
        self.s3KeyPrefix = s3KeyPrefix
        self.schemaVersion = schemaVersion
        self.sizeBytes = sizeBytes
        self.uploadedAtTimestamp = uploadedAtTimestamp
        self.uploadedByOrgId = uploadedByOrgId
        self.uploadedByUserId = uploadedByUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.aiGeneratedDescription = try container.decode(String.self, forKey: .aiGeneratedDescription)
        self.blurhash = try container.decodeIfPresent(String.self, forKey: .blurhash)
        self.contentType = try container.decode(String.self, forKey: .contentType)
        self.conversationId = try container.decode(String.self, forKey: .conversationId)
        self.filename = try container.decodeIfPresent(String.self, forKey: .filename)
        self.objectType = try container.decode(ChrtGptConversationS3ObjectTypeEnum1.self, forKey: .objectType)
        self.s3KeyPrefix = try container.decodeIfPresent(ChrtGptConversationS3ObjectMetadata.self, forKey: .s3KeyPrefix)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.sizeBytes = try container.decode(Int.self, forKey: .sizeBytes)
        self.uploadedAtTimestamp = try container.decode(Date.self, forKey: .uploadedAtTimestamp)
        self.uploadedByOrgId = try container.decode(String.self, forKey: .uploadedByOrgId)
        self.uploadedByUserId = try container.decode(String.self, forKey: .uploadedByUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.aiGeneratedDescription, forKey: .aiGeneratedDescription)
        try container.encodeIfPresent(self.blurhash, forKey: .blurhash)
        try container.encode(self.contentType, forKey: .contentType)
        try container.encode(self.conversationId, forKey: .conversationId)
        try container.encodeIfPresent(self.filename, forKey: .filename)
        try container.encode(self.objectType, forKey: .objectType)
        try container.encodeIfPresent(self.s3KeyPrefix, forKey: .s3KeyPrefix)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.sizeBytes, forKey: .sizeBytes)
        try container.encode(self.uploadedAtTimestamp, forKey: .uploadedAtTimestamp)
        try container.encode(self.uploadedByOrgId, forKey: .uploadedByOrgId)
        try container.encode(self.uploadedByUserId, forKey: .uploadedByUserId)
    }

    public enum ChrtGptConversationS3ObjectMetadata: String, Codable, Hashable, CaseIterable, Sendable {
        case chrtGptConversationS3ObjectMetadata = "chrt_gpt/conversation_s3_object_metadata"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case aiGeneratedDescription = "ai_generated_description"
        case blurhash
        case contentType = "content_type"
        case conversationId = "conversation_id"
        case filename
        case objectType = "object_type"
        case s3KeyPrefix = "s3_key_prefix"
        case schemaVersion = "schema_version"
        case sizeBytes = "size_bytes"
        case uploadedAtTimestamp = "uploaded_at_timestamp"
        case uploadedByOrgId = "uploaded_by_org_id"
        case uploadedByUserId = "uploaded_by_user_id"
    }
}