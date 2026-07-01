import Foundation

public struct FlightLegClientCreate1: Codable, Hashable, Sendable {
    public let carrierIata: String
    public let carrierIcao: String?
    public let destinationIata: String
    public let flightNumber: String
    public let originIata: String
    public let provenance: FlightLegProvenanceEnum1
    public let scheduledArrivalUtc: Date?
    public let scheduledDepartureUtc: Date
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        carrierIata: String,
        carrierIcao: String? = nil,
        destinationIata: String,
        flightNumber: String,
        originIata: String,
        provenance: FlightLegProvenanceEnum1,
        scheduledArrivalUtc: Date? = nil,
        scheduledDepartureUtc: Date,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.carrierIata = carrierIata
        self.carrierIcao = carrierIcao
        self.destinationIata = destinationIata
        self.flightNumber = flightNumber
        self.originIata = originIata
        self.provenance = provenance
        self.scheduledArrivalUtc = scheduledArrivalUtc
        self.scheduledDepartureUtc = scheduledDepartureUtc
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carrierIata = try container.decode(String.self, forKey: .carrierIata)
        self.carrierIcao = try container.decodeIfPresent(String.self, forKey: .carrierIcao)
        self.destinationIata = try container.decode(String.self, forKey: .destinationIata)
        self.flightNumber = try container.decode(String.self, forKey: .flightNumber)
        self.originIata = try container.decode(String.self, forKey: .originIata)
        self.provenance = try container.decode(FlightLegProvenanceEnum1.self, forKey: .provenance)
        self.scheduledArrivalUtc = try container.decodeIfPresent(Date.self, forKey: .scheduledArrivalUtc)
        self.scheduledDepartureUtc = try container.decode(Date.self, forKey: .scheduledDepartureUtc)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.carrierIata, forKey: .carrierIata)
        try container.encodeIfPresent(self.carrierIcao, forKey: .carrierIcao)
        try container.encode(self.destinationIata, forKey: .destinationIata)
        try container.encode(self.flightNumber, forKey: .flightNumber)
        try container.encode(self.originIata, forKey: .originIata)
        try container.encode(self.provenance, forKey: .provenance)
        try container.encodeIfPresent(self.scheduledArrivalUtc, forKey: .scheduledArrivalUtc)
        try container.encode(self.scheduledDepartureUtc, forKey: .scheduledDepartureUtc)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case carrierIata = "carrier_iata"
        case carrierIcao = "carrier_icao"
        case destinationIata = "destination_iata"
        case flightNumber = "flight_number"
        case originIata = "origin_iata"
        case provenance
        case scheduledArrivalUtc = "scheduled_arrival_utc"
        case scheduledDepartureUtc = "scheduled_departure_utc"
        case schemaVersion = "schema_version"
    }
}