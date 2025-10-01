import Foundation

public struct TaskClientCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let location: Nullable<LocationFeature>
    public let action: Nullable<Action>
    public let shipperContactInfoIds: Nullable<[String]>
    public let arriveBy: Nullable<Date>
    public let arriveAt: Nullable<Date>
    public let comments: Nullable<String>
    public let flightNumber: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        location: Nullable<LocationFeature>,
        action: Nullable<Action>,
        shipperContactInfoIds: Nullable<[String]>,
        arriveBy: Nullable<Date>,
        arriveAt: Nullable<Date>,
        comments: Nullable<String>,
        flightNumber: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.location = location
        self.action = action
        self.shipperContactInfoIds = shipperContactInfoIds
        self.arriveBy = arriveBy
        self.arriveAt = arriveAt
        self.comments = comments
        self.flightNumber = flightNumber
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.location = try container.decode(Nullable<LocationFeature>.self, forKey: .location)
        self.action = try container.decode(Nullable<Action>.self, forKey: .action)
        self.shipperContactInfoIds = try container.decode(Nullable<[String]>.self, forKey: .shipperContactInfoIds)
        self.arriveBy = try container.decode(Nullable<Date>.self, forKey: .arriveBy)
        self.arriveAt = try container.decode(Nullable<Date>.self, forKey: .arriveAt)
        self.comments = try container.decode(Nullable<String>.self, forKey: .comments)
        self.flightNumber = try container.decode(Nullable<String>.self, forKey: .flightNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.location, forKey: .location)
        try container.encode(self.action, forKey: .action)
        try container.encode(self.shipperContactInfoIds, forKey: .shipperContactInfoIds)
        try container.encode(self.arriveBy, forKey: .arriveBy)
        try container.encode(self.arriveAt, forKey: .arriveAt)
        try container.encode(self.comments, forKey: .comments)
        try container.encode(self.flightNumber, forKey: .flightNumber)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case location
        case action
        case shipperContactInfoIds = "shipper_contact_info_ids"
        case arriveBy = "arrive_by"
        case arriveAt = "arrive_at"
        case comments
        case flightNumber = "flight_number"
    }
}