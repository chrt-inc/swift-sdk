import Foundation

public struct DriverLimited1: Codable, Hashable, Sendable {
    public let id: String
    public let firstName: String?
    public let lastName: String?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let vehicleTypes: [VehicleTypeEnum]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        firstName: String? = nil,
        lastName: String? = nil,
        orgId: String,
        schemaVersion: Int,
        vehicleTypes: [VehicleTypeEnum]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.vehicleTypes = vehicleTypes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        self.lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.firstName, forKey: .firstName)
        try container.encodeIfPresent(self.lastName, forKey: .lastName)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case firstName = "first_name"
        case lastName = "last_name"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case vehicleTypes = "vehicle_types"
    }
}