import Foundation

public struct DriverComplianceDocument1: Codable, Hashable, Sendable {
    public let id: String
    public let description: String?
    public let documentType: DriverComplianceDocumentTypeEnum1
    public let driverComplianceDocumentS3ObjectMetadataIds: [String]?
    public let driverId: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let validFrom: Date?
    public let validUntil: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        description: String? = nil,
        documentType: DriverComplianceDocumentTypeEnum1,
        driverComplianceDocumentS3ObjectMetadataIds: [String]? = nil,
        driverId: String,
        orgId: String,
        schemaVersion: Int,
        validFrom: Date? = nil,
        validUntil: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.description = description
        self.documentType = documentType
        self.driverComplianceDocumentS3ObjectMetadataIds = driverComplianceDocumentS3ObjectMetadataIds
        self.driverId = driverId
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.validFrom = validFrom
        self.validUntil = validUntil
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.documentType = try container.decode(DriverComplianceDocumentTypeEnum1.self, forKey: .documentType)
        self.driverComplianceDocumentS3ObjectMetadataIds = try container.decodeIfPresent([String].self, forKey: .driverComplianceDocumentS3ObjectMetadataIds)
        self.driverId = try container.decode(String.self, forKey: .driverId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
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
        try container.encodeIfPresent(self.driverComplianceDocumentS3ObjectMetadataIds, forKey: .driverComplianceDocumentS3ObjectMetadataIds)
        try container.encode(self.driverId, forKey: .driverId)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.validFrom, forKey: .validFrom)
        try container.encodeIfPresent(self.validUntil, forKey: .validUntil)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case description
        case documentType = "document_type"
        case driverComplianceDocumentS3ObjectMetadataIds = "driver_compliance_document_s3_object_metadata_ids"
        case driverId = "driver_id"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case validFrom = "valid_from"
        case validUntil = "valid_until"
    }
}