import Foundation

public struct CargoOnFlightBookingSearch1: Codable, Hashable, Sendable {
    public let id: String
    public let cargoOnFlightBookingId: String
    public let cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1
    public let createdAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    public let destinationIata: String
    public let earliestDepartureDate: String
    public let iataCassOfficeId: String
    public let integrationSearchId: String
    public let originIata: String
    public let results: [CargoOnFlightBookingSearchResult1]?
    public let schemaVersion: Int
    public let searchCompleted: Bool
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        cargoOnFlightBookingId: String,
        cargoOnFlightIntegration: CargoOnFlightIntegrationEnum1,
        createdAtTimestamp: Date,
        createdByOrgId: String,
        createdByUserId: String? = nil,
        destinationIata: String,
        earliestDepartureDate: String,
        iataCassOfficeId: String,
        integrationSearchId: String,
        originIata: String,
        results: [CargoOnFlightBookingSearchResult1]? = nil,
        schemaVersion: Int,
        searchCompleted: Bool,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.cargoOnFlightBookingId = cargoOnFlightBookingId
        self.cargoOnFlightIntegration = cargoOnFlightIntegration
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.destinationIata = destinationIata
        self.earliestDepartureDate = earliestDepartureDate
        self.iataCassOfficeId = iataCassOfficeId
        self.integrationSearchId = integrationSearchId
        self.originIata = originIata
        self.results = results
        self.schemaVersion = schemaVersion
        self.searchCompleted = searchCompleted
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.cargoOnFlightBookingId = try container.decode(String.self, forKey: .cargoOnFlightBookingId)
        self.cargoOnFlightIntegration = try container.decode(CargoOnFlightIntegrationEnum1.self, forKey: .cargoOnFlightIntegration)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.destinationIata = try container.decode(String.self, forKey: .destinationIata)
        self.earliestDepartureDate = try container.decode(String.self, forKey: .earliestDepartureDate)
        self.iataCassOfficeId = try container.decode(String.self, forKey: .iataCassOfficeId)
        self.integrationSearchId = try container.decode(String.self, forKey: .integrationSearchId)
        self.originIata = try container.decode(String.self, forKey: .originIata)
        self.results = try container.decodeIfPresent([CargoOnFlightBookingSearchResult1].self, forKey: .results)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.searchCompleted = try container.decode(Bool.self, forKey: .searchCompleted)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.cargoOnFlightBookingId, forKey: .cargoOnFlightBookingId)
        try container.encode(self.cargoOnFlightIntegration, forKey: .cargoOnFlightIntegration)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.destinationIata, forKey: .destinationIata)
        try container.encode(self.earliestDepartureDate, forKey: .earliestDepartureDate)
        try container.encode(self.iataCassOfficeId, forKey: .iataCassOfficeId)
        try container.encode(self.integrationSearchId, forKey: .integrationSearchId)
        try container.encode(self.originIata, forKey: .originIata)
        try container.encodeIfPresent(self.results, forKey: .results)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.searchCompleted, forKey: .searchCompleted)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case cargoOnFlightBookingId = "cargo_on_flight_booking_id"
        case cargoOnFlightIntegration = "cargo_on_flight_integration"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case destinationIata = "destination_iata"
        case earliestDepartureDate = "earliest_departure_date"
        case iataCassOfficeId = "iata_cass_office_id"
        case integrationSearchId = "integration_search_id"
        case originIata = "origin_iata"
        case results
        case schemaVersion = "schema_version"
        case searchCompleted = "search_completed"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}