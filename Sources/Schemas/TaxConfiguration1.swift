import Foundation

public struct TaxConfiguration1: Codable, Hashable, Sendable {
    public let id: String
    public let archived: Bool?
    public let counterpartyDriverId: String?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let lastEditedByUserId: String
    public let name: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let schemaVersion: Int
    public let shipperAccountId: String?
    public let taxRules: [TaxRule1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        archived: Bool? = nil,
        counterpartyDriverId: String? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        lastEditedAtTimestamp: Date,
        lastEditedByUserId: String,
        name: String,
        ownedByOrgId: String,
        schemaVersion: Int,
        shipperAccountId: String? = nil,
        taxRules: [TaxRule1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.archived = archived
        self.counterpartyDriverId = counterpartyDriverId
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastEditedByUserId = lastEditedByUserId
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.schemaVersion = schemaVersion
        self.shipperAccountId = shipperAccountId
        self.taxRules = taxRules
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
        self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastEditedByUserId = try container.decode(String.self, forKey: .lastEditedByUserId)
        self.name = try container.decode(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
        self.taxRules = try container.decodeIfPresent([TaxRule1].self, forKey: .taxRules)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.archived, forKey: .archived)
        try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.lastEditedByUserId, forKey: .lastEditedByUserId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
        try container.encodeIfPresent(self.taxRules, forKey: .taxRules)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case archived
        case counterpartyDriverId = "counterparty_driver_id"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastEditedByUserId = "last_edited_by_user_id"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case schemaVersion = "schema_version"
        case shipperAccountId = "shipper_account_id"
        case taxRules = "tax_rules"
    }
}