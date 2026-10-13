import Foundation

public struct AirlineCargoAccount1: Codable, Hashable, Sendable {
    public let id: String
    public let accountNumber: String
    public let archivedAtTimestamp: Date?
    public let cargoOnFlightIntegration: AirlineCargoAccountIntegrationEnum1
    public let createdAtTimestamp: Date
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
        accountNumber: String,
        archivedAtTimestamp: Date? = nil,
        cargoOnFlightIntegration: AirlineCargoAccountIntegrationEnum1,
        createdAtTimestamp: Date,
        name: String,
        ownedByOrgId: String,
        ownedByUserId: String,
        schemaVersion: Int,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.accountNumber = accountNumber
        self.archivedAtTimestamp = archivedAtTimestamp
        self.cargoOnFlightIntegration = cargoOnFlightIntegration
        self.createdAtTimestamp = createdAtTimestamp
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
        self.accountNumber = try container.decode(String.self, forKey: .accountNumber)
        self.archivedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .archivedAtTimestamp)
        self.cargoOnFlightIntegration = try container.decode(AirlineCargoAccountIntegrationEnum1.self, forKey: .cargoOnFlightIntegration)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
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
        try container.encode(self.accountNumber, forKey: .accountNumber)
        try container.encodeIfPresent(self.archivedAtTimestamp, forKey: .archivedAtTimestamp)
        try container.encode(self.cargoOnFlightIntegration, forKey: .cargoOnFlightIntegration)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case accountNumber = "account_number"
        case archivedAtTimestamp = "archived_at_timestamp"
        case cargoOnFlightIntegration = "cargo_on_flight_integration"
        case createdAtTimestamp = "created_at_timestamp"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case ownedByUserId = "owned_by_user_id"
        case schemaVersion = "schema_version"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}