import Foundation

public struct FlightConnectionLeg: Codable, Hashable, Sendable {
    public let carrierIata: String?
    public let carrierName: String?
    public let flightNumber: String?
    public let originIata: String?
    public let originName: String?
    public let originTimeZone: String?
    public let originLatitude: Double?
    public let originLongitude: Double?
    public let destinationIata: String?
    public let destinationName: String?
    public let destinationTimeZone: String?
    public let destinationLatitude: Double?
    public let destinationLongitude: Double?
    public let departureTimeLocal: Date?
    public let arrivalTimeLocal: Date?
    public let equipmentName: String?
    public let isCodeshare: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        carrierIata: String? = nil,
        carrierName: String? = nil,
        flightNumber: String? = nil,
        originIata: String? = nil,
        originName: String? = nil,
        originTimeZone: String? = nil,
        originLatitude: Double? = nil,
        originLongitude: Double? = nil,
        destinationIata: String? = nil,
        destinationName: String? = nil,
        destinationTimeZone: String? = nil,
        destinationLatitude: Double? = nil,
        destinationLongitude: Double? = nil,
        departureTimeLocal: Date? = nil,
        arrivalTimeLocal: Date? = nil,
        equipmentName: String? = nil,
        isCodeshare: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.carrierIata = carrierIata
        self.carrierName = carrierName
        self.flightNumber = flightNumber
        self.originIata = originIata
        self.originName = originName
        self.originTimeZone = originTimeZone
        self.originLatitude = originLatitude
        self.originLongitude = originLongitude
        self.destinationIata = destinationIata
        self.destinationName = destinationName
        self.destinationTimeZone = destinationTimeZone
        self.destinationLatitude = destinationLatitude
        self.destinationLongitude = destinationLongitude
        self.departureTimeLocal = departureTimeLocal
        self.arrivalTimeLocal = arrivalTimeLocal
        self.equipmentName = equipmentName
        self.isCodeshare = isCodeshare
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carrierIata = try container.decodeIfPresent(String.self, forKey: .carrierIata)
        self.carrierName = try container.decodeIfPresent(String.self, forKey: .carrierName)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.originIata = try container.decodeIfPresent(String.self, forKey: .originIata)
        self.originName = try container.decodeIfPresent(String.self, forKey: .originName)
        self.originTimeZone = try container.decodeIfPresent(String.self, forKey: .originTimeZone)
        self.originLatitude = try container.decodeIfPresent(Double.self, forKey: .originLatitude)
        self.originLongitude = try container.decodeIfPresent(Double.self, forKey: .originLongitude)
        self.destinationIata = try container.decodeIfPresent(String.self, forKey: .destinationIata)
        self.destinationName = try container.decodeIfPresent(String.self, forKey: .destinationName)
        self.destinationTimeZone = try container.decodeIfPresent(String.self, forKey: .destinationTimeZone)
        self.destinationLatitude = try container.decodeIfPresent(Double.self, forKey: .destinationLatitude)
        self.destinationLongitude = try container.decodeIfPresent(Double.self, forKey: .destinationLongitude)
        self.departureTimeLocal = try container.decodeIfPresent(Date.self, forKey: .departureTimeLocal)
        self.arrivalTimeLocal = try container.decodeIfPresent(Date.self, forKey: .arrivalTimeLocal)
        self.equipmentName = try container.decodeIfPresent(String.self, forKey: .equipmentName)
        self.isCodeshare = try container.decodeIfPresent(Bool.self, forKey: .isCodeshare)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.carrierIata, forKey: .carrierIata)
        try container.encodeIfPresent(self.carrierName, forKey: .carrierName)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encodeIfPresent(self.originIata, forKey: .originIata)
        try container.encodeIfPresent(self.originName, forKey: .originName)
        try container.encodeIfPresent(self.originTimeZone, forKey: .originTimeZone)
        try container.encodeIfPresent(self.originLatitude, forKey: .originLatitude)
        try container.encodeIfPresent(self.originLongitude, forKey: .originLongitude)
        try container.encodeIfPresent(self.destinationIata, forKey: .destinationIata)
        try container.encodeIfPresent(self.destinationName, forKey: .destinationName)
        try container.encodeIfPresent(self.destinationTimeZone, forKey: .destinationTimeZone)
        try container.encodeIfPresent(self.destinationLatitude, forKey: .destinationLatitude)
        try container.encodeIfPresent(self.destinationLongitude, forKey: .destinationLongitude)
        try container.encodeIfPresent(self.departureTimeLocal, forKey: .departureTimeLocal)
        try container.encodeIfPresent(self.arrivalTimeLocal, forKey: .arrivalTimeLocal)
        try container.encodeIfPresent(self.equipmentName, forKey: .equipmentName)
        try container.encodeIfPresent(self.isCodeshare, forKey: .isCodeshare)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case carrierIata = "carrier_iata"
        case carrierName = "carrier_name"
        case flightNumber = "flight_number"
        case originIata = "origin_iata"
        case originName = "origin_name"
        case originTimeZone = "origin_time_zone"
        case originLatitude = "origin_latitude"
        case originLongitude = "origin_longitude"
        case destinationIata = "destination_iata"
        case destinationName = "destination_name"
        case destinationTimeZone = "destination_time_zone"
        case destinationLatitude = "destination_latitude"
        case destinationLongitude = "destination_longitude"
        case departureTimeLocal = "departure_time_local"
        case arrivalTimeLocal = "arrival_time_local"
        case equipmentName = "equipment_name"
        case isCodeshare = "is_codeshare"
    }
}