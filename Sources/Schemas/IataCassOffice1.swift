import Foundation

public struct IataCassOffice1: Codable, Hashable, Sendable {
    public let id: String
    public let archivedAtTimestamp: Date?
    public let companyName: String
    public let contactEmailAddress: String
    public let contactFirstName: String
    public let contactLastName: String
    public let countryCode: String
    public let createdAtTimestamp: Date
    public let iataCargoAgentCassAddress: String
    public let iataCargoAgentNumericCode: String
    public let name: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    /// Must be a string starting with `user_`
    public let ownedByUserId: String
    public let schemaVersion: Int
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        archivedAtTimestamp: Date? = nil,
        companyName: String,
        contactEmailAddress: String,
        contactFirstName: String,
        contactLastName: String,
        countryCode: String,
        createdAtTimestamp: Date,
        iataCargoAgentCassAddress: String,
        iataCargoAgentNumericCode: String,
        name: String,
        ownedByOrgId: String,
        ownedByUserId: String,
        schemaVersion: Int,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.archivedAtTimestamp = archivedAtTimestamp
        self.companyName = companyName
        self.contactEmailAddress = contactEmailAddress
        self.contactFirstName = contactFirstName
        self.contactLastName = contactLastName
        self.countryCode = countryCode
        self.createdAtTimestamp = createdAtTimestamp
        self.iataCargoAgentCassAddress = iataCargoAgentCassAddress
        self.iataCargoAgentNumericCode = iataCargoAgentNumericCode
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.ownedByUserId = ownedByUserId
        self.schemaVersion = schemaVersion
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.archivedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .archivedAtTimestamp)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.contactEmailAddress = try container.decode(String.self, forKey: .contactEmailAddress)
        self.contactFirstName = try container.decode(String.self, forKey: .contactFirstName)
        self.contactLastName = try container.decode(String.self, forKey: .contactLastName)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.iataCargoAgentCassAddress = try container.decode(String.self, forKey: .iataCargoAgentCassAddress)
        self.iataCargoAgentNumericCode = try container.decode(String.self, forKey: .iataCargoAgentNumericCode)
        self.name = try container.decode(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.ownedByUserId = try container.decode(String.self, forKey: .ownedByUserId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.archivedAtTimestamp, forKey: .archivedAtTimestamp)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.contactEmailAddress, forKey: .contactEmailAddress)
        try container.encode(self.contactFirstName, forKey: .contactFirstName)
        try container.encode(self.contactLastName, forKey: .contactLastName)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.iataCargoAgentCassAddress, forKey: .iataCargoAgentCassAddress)
        try container.encode(self.iataCargoAgentNumericCode, forKey: .iataCargoAgentNumericCode)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case archivedAtTimestamp = "archived_at_timestamp"
        case companyName = "company_name"
        case contactEmailAddress = "contact_email_address"
        case contactFirstName = "contact_first_name"
        case contactLastName = "contact_last_name"
        case countryCode = "country_code"
        case createdAtTimestamp = "created_at_timestamp"
        case iataCargoAgentCassAddress = "iata_cargo_agent_cass_address"
        case iataCargoAgentNumericCode = "iata_cargo_agent_numeric_code"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case ownedByUserId = "owned_by_user_id"
        case schemaVersion = "schema_version"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}