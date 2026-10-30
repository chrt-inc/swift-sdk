import Foundation

public struct FuelSurchargeConfiguration1: Codable, Hashable, Sendable {
    public let id: String
    public let archivedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let archivedByUserId: String?
    public let counterpartyDriverId: String?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let invoiceType: InvoiceTypeEnum1
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let lastEditedByUserId: String
    public let name: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let rates: [FuelSurchargeConfigurationRate1]
    public let schemaVersion: Int
    public let shipperAccountId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        archivedAtTimestamp: Date? = nil,
        archivedByUserId: String? = nil,
        counterpartyDriverId: String? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        invoiceType: InvoiceTypeEnum1,
        lastEditedAtTimestamp: Date,
        lastEditedByUserId: String,
        name: String,
        ownedByOrgId: String,
        rates: [FuelSurchargeConfigurationRate1],
        schemaVersion: Int,
        shipperAccountId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.archivedAtTimestamp = archivedAtTimestamp
        self.archivedByUserId = archivedByUserId
        self.counterpartyDriverId = counterpartyDriverId
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.invoiceType = invoiceType
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastEditedByUserId = lastEditedByUserId
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.rates = rates
        self.schemaVersion = schemaVersion
        self.shipperAccountId = shipperAccountId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.archivedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .archivedAtTimestamp)
        self.archivedByUserId = try container.decodeIfPresent(String.self, forKey: .archivedByUserId)
        self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastEditedByUserId = try container.decode(String.self, forKey: .lastEditedByUserId)
        self.name = try container.decode(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.rates = try container.decode([FuelSurchargeConfigurationRate1].self, forKey: .rates)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.archivedAtTimestamp, forKey: .archivedAtTimestamp)
        try container.encodeIfPresent(self.archivedByUserId, forKey: .archivedByUserId)
        try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.lastEditedByUserId, forKey: .lastEditedByUserId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.rates, forKey: .rates)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case archivedAtTimestamp = "archived_at_timestamp"
        case archivedByUserId = "archived_by_user_id"
        case counterpartyDriverId = "counterparty_driver_id"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case invoiceType = "invoice_type"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastEditedByUserId = "last_edited_by_user_id"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case rates
        case schemaVersion = "schema_version"
        case shipperAccountId = "shipper_account_id"
    }
}