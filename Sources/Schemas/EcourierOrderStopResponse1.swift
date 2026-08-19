import Foundation

/// One stop on an order.
///
/// `stop_type` is the authoritative origin/destination marker: `P` for pickup,
/// `D` for delivery. No sequence-number inference is needed, which is
/// cleaner than most integrations give us.
public struct EcourierOrderStopResponse1: Codable, Hashable, Sendable {
    public let address: String?
    public let city: String?
    public let country: String?
    public let latitude: String?
    public let longitude: String?
    public let name: String?
    public let pieces: String?
    public let scheduledDateTime: String?
    public let scheduledDateTimeTz: String?
    public let sequence: String?
    public let state: String?
    public let stopId: String?
    public let stopType: String?
    public let weight: String?
    public let zip: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address: String? = nil,
        city: String? = nil,
        country: String? = nil,
        latitude: String? = nil,
        longitude: String? = nil,
        name: String? = nil,
        pieces: String? = nil,
        scheduledDateTime: String? = nil,
        scheduledDateTimeTz: String? = nil,
        sequence: String? = nil,
        state: String? = nil,
        stopId: String? = nil,
        stopType: String? = nil,
        weight: String? = nil,
        zip: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address = address
        self.city = city
        self.country = country
        self.latitude = latitude
        self.longitude = longitude
        self.name = name
        self.pieces = pieces
        self.scheduledDateTime = scheduledDateTime
        self.scheduledDateTimeTz = scheduledDateTimeTz
        self.sequence = sequence
        self.state = state
        self.stopId = stopId
        self.stopType = stopType
        self.weight = weight
        self.zip = zip
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decodeIfPresent(String.self, forKey: .address)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.latitude = try container.decodeIfPresent(String.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(String.self, forKey: .longitude)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.pieces = try container.decodeIfPresent(String.self, forKey: .pieces)
        self.scheduledDateTime = try container.decodeIfPresent(String.self, forKey: .scheduledDateTime)
        self.scheduledDateTimeTz = try container.decodeIfPresent(String.self, forKey: .scheduledDateTimeTz)
        self.sequence = try container.decodeIfPresent(String.self, forKey: .sequence)
        self.state = try container.decodeIfPresent(String.self, forKey: .state)
        self.stopId = try container.decodeIfPresent(String.self, forKey: .stopId)
        self.stopType = try container.decodeIfPresent(String.self, forKey: .stopType)
        self.weight = try container.decodeIfPresent(String.self, forKey: .weight)
        self.zip = try container.decodeIfPresent(String.self, forKey: .zip)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.latitude, forKey: .latitude)
        try container.encodeIfPresent(self.longitude, forKey: .longitude)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.pieces, forKey: .pieces)
        try container.encodeIfPresent(self.scheduledDateTime, forKey: .scheduledDateTime)
        try container.encodeIfPresent(self.scheduledDateTimeTz, forKey: .scheduledDateTimeTz)
        try container.encodeIfPresent(self.sequence, forKey: .sequence)
        try container.encodeIfPresent(self.state, forKey: .state)
        try container.encodeIfPresent(self.stopId, forKey: .stopId)
        try container.encodeIfPresent(self.stopType, forKey: .stopType)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.zip, forKey: .zip)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address = "@Address"
        case city = "@City"
        case country = "@Country"
        case latitude = "@Latitude"
        case longitude = "@Longitude"
        case name = "@Name"
        case pieces = "@Pieces"
        case scheduledDateTime = "@ScheduledDateTime"
        case scheduledDateTimeTz = "@ScheduledDateTimeTZ"
        case sequence = "@Sequence"
        case state = "@State"
        case stopId = "@StopID"
        case stopType = "@StopType"
        case weight = "@Weight"
        case zip = "@Zip"
    }
}