import Foundation

public struct TaskClientCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let location: LocationFeature?
    public let action: Action?
    public let timeWindows: [TimeWindow1]?
    public let orderPlacerComments: String?
    public let shipperContactInfoIds: [String]?
    public let flightNumber: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        location: LocationFeature? = nil,
        action: Action? = nil,
        timeWindows: [TimeWindow1]? = nil,
        orderPlacerComments: String? = nil,
        shipperContactInfoIds: [String]? = nil,
        flightNumber: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.location = location
        self.action = action
        self.timeWindows = timeWindows
        self.orderPlacerComments = orderPlacerComments
        self.shipperContactInfoIds = shipperContactInfoIds
        self.flightNumber = flightNumber
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
        self.action = try container.decodeIfPresent(Action.self, forKey: .action)
        self.timeWindows = try container.decodeIfPresent([TimeWindow1].self, forKey: .timeWindows)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.shipperContactInfoIds = try container.decodeIfPresent([String].self, forKey: .shipperContactInfoIds)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.location, forKey: .location)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.timeWindows, forKey: .timeWindows)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encodeIfPresent(self.shipperContactInfoIds, forKey: .shipperContactInfoIds)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case location
        case action
        case timeWindows = "time_windows"
        case orderPlacerComments = "order_placer_comments"
        case shipperContactInfoIds = "shipper_contact_info_ids"
        case flightNumber = "flight_number"
    }
}