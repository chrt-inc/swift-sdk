import Foundation

public struct TaskClientCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let location: JSONValue?
    public let action: JSONValue?
    public let shipperContactInfoIds: JSONValue?
    public let arriveBy: JSONValue?
    public let arriveAt: JSONValue?
    public let comments: JSONValue?
    public let flightNumber: JSONValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        location: JSONValue? = nil,
        action: JSONValue? = nil,
        shipperContactInfoIds: JSONValue? = nil,
        arriveBy: JSONValue? = nil,
        arriveAt: JSONValue? = nil,
        comments: JSONValue? = nil,
        flightNumber: JSONValue? = nil,
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
        self.location = try container.decodeIfPresent(JSONValue.self, forKey: .location)
        self.action = try container.decodeIfPresent(JSONValue.self, forKey: .action)
        self.shipperContactInfoIds = try container.decodeIfPresent(JSONValue.self, forKey: .shipperContactInfoIds)
        self.arriveBy = try container.decodeIfPresent(JSONValue.self, forKey: .arriveBy)
        self.arriveAt = try container.decodeIfPresent(JSONValue.self, forKey: .arriveAt)
        self.comments = try container.decodeIfPresent(JSONValue.self, forKey: .comments)
        self.flightNumber = try container.decodeIfPresent(JSONValue.self, forKey: .flightNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.shipperContactInfoIds, forKey: .shipperContactInfoIds)
        try container.encodeIfPresent(self.arriveBy, forKey: .arriveBy)
        try container.encodeIfPresent(self.arriveAt, forKey: .arriveAt)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
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