import Foundation

extension Requests {
    public struct CargoOnFlightBookingSearchClientCreate1: Codable, Hashable, Sendable {
        public let destinationIata: String
        public let earliestDepartureDate: String
        public let iataCassOfficeId: String
        public let originIata: String
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            destinationIata: String,
            earliestDepartureDate: String,
            iataCassOfficeId: String,
            originIata: String,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.destinationIata = destinationIata
            self.earliestDepartureDate = earliestDepartureDate
            self.iataCassOfficeId = iataCassOfficeId
            self.originIata = originIata
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.destinationIata = try container.decode(String.self, forKey: .destinationIata)
            self.earliestDepartureDate = try container.decode(String.self, forKey: .earliestDepartureDate)
            self.iataCassOfficeId = try container.decode(String.self, forKey: .iataCassOfficeId)
            self.originIata = try container.decode(String.self, forKey: .originIata)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.destinationIata, forKey: .destinationIata)
            try container.encode(self.earliestDepartureDate, forKey: .earliestDepartureDate)
            try container.encode(self.iataCassOfficeId, forKey: .iataCassOfficeId)
            try container.encode(self.originIata, forKey: .originIata)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case destinationIata = "destination_iata"
            case earliestDepartureDate = "earliest_departure_date"
            case iataCassOfficeId = "iata_cass_office_id"
            case originIata = "origin_iata"
            case schemaVersion = "schema_version"
        }
    }
}