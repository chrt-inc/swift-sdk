import Foundation

public struct FlightLegClientCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let flightNumber: String
    public let provenance: FlightLegProvenanceEnum1
    public let carrierIata: String?
    public let carrierIcao: String?
    public let originIata: String?
    public let destinationIata: String?
    public let scheduledDepartureUtc: Date?
    public let scheduledArrivalUtc: Date?
    public let faFlightIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        flightNumber: String,
        provenance: FlightLegProvenanceEnum1,
        carrierIata: String? = nil,
        carrierIcao: String? = nil,
        originIata: String? = nil,
        destinationIata: String? = nil,
        scheduledDepartureUtc: Date? = nil,
        scheduledArrivalUtc: Date? = nil,
        faFlightIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.flightNumber = flightNumber
        self.provenance = provenance
        self.carrierIata = carrierIata
        self.carrierIcao = carrierIcao
        self.originIata = originIata
        self.destinationIata = destinationIata
        self.scheduledDepartureUtc = scheduledDepartureUtc
        self.scheduledArrivalUtc = scheduledArrivalUtc
        self.faFlightIds = faFlightIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.flightNumber = try container.decode(String.self, forKey: .flightNumber)
        self.provenance = try container.decode(FlightLegProvenanceEnum1.self, forKey: .provenance)
        self.carrierIata = try container.decodeIfPresent(String.self, forKey: .carrierIata)
        self.carrierIcao = try container.decodeIfPresent(String.self, forKey: .carrierIcao)
        self.originIata = try container.decodeIfPresent(String.self, forKey: .originIata)
        self.destinationIata = try container.decodeIfPresent(String.self, forKey: .destinationIata)
        self.scheduledDepartureUtc = try container.decodeIfPresent(Date.self, forKey: .scheduledDepartureUtc)
        self.scheduledArrivalUtc = try container.decodeIfPresent(Date.self, forKey: .scheduledArrivalUtc)
        self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.flightNumber, forKey: .flightNumber)
        try container.encode(self.provenance, forKey: .provenance)
        try container.encodeIfPresent(self.carrierIata, forKey: .carrierIata)
        try container.encodeIfPresent(self.carrierIcao, forKey: .carrierIcao)
        try container.encodeIfPresent(self.originIata, forKey: .originIata)
        try container.encodeIfPresent(self.destinationIata, forKey: .destinationIata)
        try container.encodeIfPresent(self.scheduledDepartureUtc, forKey: .scheduledDepartureUtc)
        try container.encodeIfPresent(self.scheduledArrivalUtc, forKey: .scheduledArrivalUtc)
        try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case flightNumber = "flight_number"
        case provenance
        case carrierIata = "carrier_iata"
        case carrierIcao = "carrier_icao"
        case originIata = "origin_iata"
        case destinationIata = "destination_iata"
        case scheduledDepartureUtc = "scheduled_departure_utc"
        case scheduledArrivalUtc = "scheduled_arrival_utc"
        case faFlightIds = "fa_flight_ids"
    }
}