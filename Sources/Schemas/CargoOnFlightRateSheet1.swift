import Foundation

public struct CargoOnFlightRateSheet1: Codable, Hashable, Sendable {
    public let id: String
    public let airlineName: String?
    public let archived: Bool?
    public let comments: String?
    public let name: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let quantity: Double?
    public let rate: Double?
    public let schemaVersion: Int
    public let serviceTypeName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        airlineName: String? = nil,
        archived: Bool? = nil,
        comments: String? = nil,
        name: String? = nil,
        ownedByOrgId: String,
        quantity: Double? = nil,
        rate: Double? = nil,
        schemaVersion: Int,
        serviceTypeName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.airlineName = airlineName
        self.archived = archived
        self.comments = comments
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.quantity = quantity
        self.rate = rate
        self.schemaVersion = schemaVersion
        self.serviceTypeName = serviceTypeName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.airlineName = try container.decodeIfPresent(String.self, forKey: .airlineName)
        self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.quantity = try container.decodeIfPresent(Double.self, forKey: .quantity)
        self.rate = try container.decodeIfPresent(Double.self, forKey: .rate)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.serviceTypeName = try container.decodeIfPresent(String.self, forKey: .serviceTypeName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.airlineName, forKey: .airlineName)
        try container.encodeIfPresent(self.archived, forKey: .archived)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.rate, forKey: .rate)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.serviceTypeName, forKey: .serviceTypeName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case airlineName = "airline_name"
        case archived
        case comments
        case name
        case ownedByOrgId = "owned_by_org_id"
        case quantity
        case rate
        case schemaVersion = "schema_version"
        case serviceTypeName = "service_type_name"
    }
}