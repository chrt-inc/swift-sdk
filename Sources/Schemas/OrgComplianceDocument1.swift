import Foundation

public struct OrgComplianceDocument1: Codable, Hashable, Sendable {
    public let id: String
    public let description: String?
    public let documentType: OrgComplianceDocumentTypeEnum1
    public let orgComplianceDocumentS3ObjectMetadataIds: [String]?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let orgType: OrgTypeEnum
    public let schemaVersion: Int
    public let validFrom: Date?
    public let validUntil: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        description: String? = nil,
        documentType: OrgComplianceDocumentTypeEnum1,
        orgComplianceDocumentS3ObjectMetadataIds: [String]? = nil,
        orgId: String,
        orgType: OrgTypeEnum,
        schemaVersion: Int,
        validFrom: Date? = nil,
        validUntil: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.description = description
        self.documentType = documentType
        self.orgComplianceDocumentS3ObjectMetadataIds = orgComplianceDocumentS3ObjectMetadataIds
        self.orgId = orgId
        self.orgType = orgType
        self.schemaVersion = schemaVersion
        self.validFrom = validFrom
        self.validUntil = validUntil
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.documentType = try container.decode(OrgComplianceDocumentTypeEnum1.self, forKey: .documentType)
        self.orgComplianceDocumentS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .orgComplianceDocumentS3ObjectMetadataIds)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.validFrom = try container.decodeIfPresent(Date.self, forKey: .validFrom)
        self.validUntil = try container.decodeIfPresent(Date.self, forKey: .validUntil)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encodeIfPresent(self.orgComplianceDocumentS3ObjectMetadataIds, forKey: .orgComplianceDocumentS3ObjectMetadataIds)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.orgType, forKey: .orgType)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.validFrom, forKey: .validFrom)
        try container.encodeIfPresent(self.validUntil, forKey: .validUntil)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case description
        case documentType = "document_type"
        case orgComplianceDocumentS3ObjectMetadataIds = "org_compliance_document_s3_object_metadata_ids"
        case orgId = "org_id"
        case orgType = "org_type"
        case schemaVersion = "schema_version"
        case validFrom = "valid_from"
        case validUntil = "valid_until"
    }
}