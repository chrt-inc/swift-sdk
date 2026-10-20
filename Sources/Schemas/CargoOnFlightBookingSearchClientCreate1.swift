import Foundation

public struct CargoOnFlightBookingSearchClientCreate1: Codable, Hashable, Sendable {
    public let airCanadaProduct: AirCanadaProductEnum1?
    public let airlineCargoAccountId: String?
    public let cargoaiProduct: CargoAiProductEnum1?
    public let destinationIata: String
    public let earliestDepartureDate: String
    public let iataCassOfficeId: String?
    public let offsetDays: Int?
    public let originIata: String
    public let schemaVersion: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        airCanadaProduct: AirCanadaProductEnum1? = nil,
        airlineCargoAccountId: String? = nil,
        cargoaiProduct: CargoAiProductEnum1? = nil,
        destinationIata: String,
        earliestDepartureDate: String,
        iataCassOfficeId: String? = nil,
        offsetDays: Int? = nil,
        originIata: String,
        schemaVersion: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.airCanadaProduct = airCanadaProduct
        self.airlineCargoAccountId = airlineCargoAccountId
        self.cargoaiProduct = cargoaiProduct
        self.destinationIata = destinationIata
        self.earliestDepartureDate = earliestDepartureDate
        self.iataCassOfficeId = iataCassOfficeId
        self.offsetDays = offsetDays
        self.originIata = originIata
        self.schemaVersion = schemaVersion
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.airCanadaProduct = try container.decodeIfPresent(AirCanadaProductEnum1.self, forKey: .airCanadaProduct)
        self.airlineCargoAccountId = try container.decodeIfPresent(String.self, forKey: .airlineCargoAccountId)
        self.cargoaiProduct = try container.decodeIfPresent(CargoAiProductEnum1.self, forKey: .cargoaiProduct)
        self.destinationIata = try container.decode(String.self, forKey: .destinationIata)
        self.earliestDepartureDate = try container.decode(String.self, forKey: .earliestDepartureDate)
        self.iataCassOfficeId = try container.decodeIfPresent(String.self, forKey: .iataCassOfficeId)
        self.offsetDays = try container.decodeIfPresent(Int.self, forKey: .offsetDays)
        self.originIata = try container.decode(String.self, forKey: .originIata)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.airCanadaProduct, forKey: .airCanadaProduct)
        try container.encodeIfPresent(self.airlineCargoAccountId, forKey: .airlineCargoAccountId)
        try container.encodeIfPresent(self.cargoaiProduct, forKey: .cargoaiProduct)
        try container.encode(self.destinationIata, forKey: .destinationIata)
        try container.encode(self.earliestDepartureDate, forKey: .earliestDepartureDate)
        try container.encodeIfPresent(self.iataCassOfficeId, forKey: .iataCassOfficeId)
        try container.encodeIfPresent(self.offsetDays, forKey: .offsetDays)
        try container.encode(self.originIata, forKey: .originIata)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case airCanadaProduct = "air_canada_product"
        case airlineCargoAccountId = "airline_cargo_account_id"
        case cargoaiProduct = "cargoai_product"
        case destinationIata = "destination_iata"
        case earliestDepartureDate = "earliest_departure_date"
        case iataCassOfficeId = "iata_cass_office_id"
        case offsetDays = "offset_days"
        case originIata = "origin_iata"
        case schemaVersion = "schema_version"
    }
}