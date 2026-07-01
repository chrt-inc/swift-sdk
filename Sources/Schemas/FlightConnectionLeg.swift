import Foundation

public struct FlightConnectionLeg: Codable, Hashable, Sendable {
    public let arrivalTimeUtc: Date?
    public let carrierIata: String?
    public let carrierName: String?
    public let departureTimeUtc: Date?
    public let destinationIata: String?
    public let destinationLatitude: Double?
    public let destinationLongitude: Double?
    public let destinationName: String?
    public let destinationTimeZone: String?
    public let equipmentName: String?
    public let flightNumber: String?
    public let isCodeshare: Bool?
    public let originIata: String?
    public let originLatitude: Double?
    public let originLongitude: Double?
    public let originName: String?
    public let originTimeZone: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        arrivalTimeUtc: Date? = nil,
        carrierIata: String? = nil,
        carrierName: String? = nil,
        departureTimeUtc: Date? = nil,
        destinationIata: String? = nil,
        destinationLatitude: Double? = nil,
        destinationLongitude: Double? = nil,
        destinationName: String? = nil,
        destinationTimeZone: String? = nil,
        equipmentName: String? = nil,
        flightNumber: String? = nil,
        isCodeshare: Bool? = nil,
        originIata: String? = nil,
        originLatitude: Double? = nil,
        originLongitude: Double? = nil,
        originName: String? = nil,
        originTimeZone: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.arrivalTimeUtc = arrivalTimeUtc
        self.carrierIata = carrierIata
        self.carrierName = carrierName
        self.departureTimeUtc = departureTimeUtc
        self.destinationIata = destinationIata
        self.destinationLatitude = destinationLatitude
        self.destinationLongitude = destinationLongitude
        self.destinationName = destinationName
        self.destinationTimeZone = destinationTimeZone
        self.equipmentName = equipmentName
        self.flightNumber = flightNumber
        self.isCodeshare = isCodeshare
        self.originIata = originIata
        self.originLatitude = originLatitude
        self.originLongitude = originLongitude
        self.originName = originName
        self.originTimeZone = originTimeZone
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.arrivalTimeUtc = try container.decodeIfPresent(Date.self, forKey: .arrivalTimeUtc)
        self.carrierIata = try container.decodeIfPresent(String.self, forKey: .carrierIata)
        self.carrierName = try container.decodeIfPresent(String.self, forKey: .carrierName)
        self.departureTimeUtc = try container.decodeIfPresent(Date.self, forKey: .departureTimeUtc)
        self.destinationIata = try container.decodeIfPresent(String.self, forKey: .destinationIata)
        self.destinationLatitude = try container.decodeIfPresent(Double.self, forKey: .destinationLatitude)
        self.destinationLongitude = try container.decodeIfPresent(Double.self, forKey: .destinationLongitude)
        self.destinationName = try container.decodeIfPresent(String.self, forKey: .destinationName)
        self.destinationTimeZone = try container.decodeIfPresent(String.self, forKey: .destinationTimeZone)
        self.equipmentName = try container.decodeIfPresent(String.self, forKey: .equipmentName)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.isCodeshare = try container.decodeIfPresent(Bool.self, forKey: .isCodeshare)
        self.originIata = try container.decodeIfPresent(String.self, forKey: .originIata)
        self.originLatitude = try container.decodeIfPresent(Double.self, forKey: .originLatitude)
        self.originLongitude = try container.decodeIfPresent(Double.self, forKey: .originLongitude)
        self.originName = try container.decodeIfPresent(String.self, forKey: .originName)
        self.originTimeZone = try container.decodeIfPresent(String.self, forKey: .originTimeZone)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.arrivalTimeUtc, forKey: .arrivalTimeUtc)
        try container.encodeIfPresent(self.carrierIata, forKey: .carrierIata)
        try container.encodeIfPresent(self.carrierName, forKey: .carrierName)
        try container.encodeIfPresent(self.departureTimeUtc, forKey: .departureTimeUtc)
        try container.encodeIfPresent(self.destinationIata, forKey: .destinationIata)
        try container.encodeIfPresent(self.destinationLatitude, forKey: .destinationLatitude)
        try container.encodeIfPresent(self.destinationLongitude, forKey: .destinationLongitude)
        try container.encodeIfPresent(self.destinationName, forKey: .destinationName)
        try container.encodeIfPresent(self.destinationTimeZone, forKey: .destinationTimeZone)
        try container.encodeIfPresent(self.equipmentName, forKey: .equipmentName)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.isCodeshare, forKey: .isCodeshare)
        try container.encodeIfPresent(self.originIata, forKey: .originIata)
        try container.encodeIfPresent(self.originLatitude, forKey: .originLatitude)
        try container.encodeIfPresent(self.originLongitude, forKey: .originLongitude)
        try container.encodeIfPresent(self.originName, forKey: .originName)
        try container.encodeIfPresent(self.originTimeZone, forKey: .originTimeZone)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case arrivalTimeUtc = "arrival_time_utc"
        case carrierIata = "carrier_iata"
        case carrierName = "carrier_name"
        case departureTimeUtc = "departure_time_utc"
        case destinationIata = "destination_iata"
        case destinationLatitude = "destination_latitude"
        case destinationLongitude = "destination_longitude"
        case destinationName = "destination_name"
        case destinationTimeZone = "destination_time_zone"
        case equipmentName = "equipment_name"
        case flightNumber = "flight_number"
        case isCodeshare = "is_codeshare"
        case originIata = "origin_iata"
        case originLatitude = "origin_latitude"
        case originLongitude = "origin_longitude"
        case originName = "origin_name"
        case originTimeZone = "origin_time_zone"
    }
}