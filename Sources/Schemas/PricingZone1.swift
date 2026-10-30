import Foundation

public struct PricingZone1: Codable, Hashable, Sendable {
    public let id: String
    public let archivedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let archivedByUserId: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let lastEditedByUserId: String
    public let mapArea: PricingZone1MapArea?
    public let name: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let postalCodeCountryCode: String?
    public let postalCodes: [String]?
    public let schemaVersion: Int
    public let shipperAccountIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        archivedAtTimestamp: Date? = nil,
        archivedByUserId: String? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        lastEditedAtTimestamp: Date,
        lastEditedByUserId: String,
        mapArea: PricingZone1MapArea? = nil,
        name: String,
        ownedByOrgId: String,
        postalCodeCountryCode: String? = nil,
        postalCodes: [String]? = nil,
        schemaVersion: Int,
        shipperAccountIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.archivedAtTimestamp = archivedAtTimestamp
        self.archivedByUserId = archivedByUserId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastEditedByUserId = lastEditedByUserId
        self.mapArea = mapArea
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.postalCodeCountryCode = postalCodeCountryCode
        self.postalCodes = postalCodes
        self.schemaVersion = schemaVersion
        self.shipperAccountIds = shipperAccountIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.archivedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .archivedAtTimestamp)
        self.archivedByUserId = try container.decodeIfPresent(String.self, forKey: .archivedByUserId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastEditedByUserId = try container.decode(String.self, forKey: .lastEditedByUserId)
        self.mapArea = try container.decodeIfPresent(PricingZone1MapArea.self, forKey: .mapArea)
        self.name = try container.decode(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.postalCodeCountryCode = try container.decodeIfPresent(String.self, forKey: .postalCodeCountryCode)
        self.postalCodes = try container.decodeIfPresent([String].self, forKey: .postalCodes)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperAccountIds = try container.decodeIfPresent([String].self, forKey: .shipperAccountIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.archivedAtTimestamp, forKey: .archivedAtTimestamp)
        try container.encodeIfPresent(self.archivedByUserId, forKey: .archivedByUserId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.lastEditedByUserId, forKey: .lastEditedByUserId)
        try container.encodeIfPresent(self.mapArea, forKey: .mapArea)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.postalCodeCountryCode, forKey: .postalCodeCountryCode)
        try container.encodeIfPresent(self.postalCodes, forKey: .postalCodes)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperAccountIds, forKey: .shipperAccountIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case archivedAtTimestamp = "archived_at_timestamp"
        case archivedByUserId = "archived_by_user_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastEditedByUserId = "last_edited_by_user_id"
        case mapArea = "map_area"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case postalCodeCountryCode = "postal_code_country_code"
        case postalCodes = "postal_codes"
        case schemaVersion = "schema_version"
        case shipperAccountIds = "shipper_account_ids"
    }
}