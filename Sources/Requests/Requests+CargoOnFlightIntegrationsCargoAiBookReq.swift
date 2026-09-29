import Foundation

extension Requests {
    public struct CargoOnFlightIntegrationsCargoAiBookReq: Codable, Hashable, Sendable {
        /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
        public let awbNumber: String?
        public let cargoOnFlightBookingSearchId: String
        public let integrationRateId: String
        public let integrationResultId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            awbNumber: String? = nil,
            cargoOnFlightBookingSearchId: String,
            integrationRateId: String,
            integrationResultId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.awbNumber = awbNumber
            self.cargoOnFlightBookingSearchId = cargoOnFlightBookingSearchId
            self.integrationRateId = integrationRateId
            self.integrationResultId = integrationResultId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.awbNumber = try container.decodeIfPresent(String.self, forKey: .awbNumber)
            self.cargoOnFlightBookingSearchId = try container.decode(String.self, forKey: .cargoOnFlightBookingSearchId)
            self.integrationRateId = try container.decode(String.self, forKey: .integrationRateId)
            self.integrationResultId = try container.decode(String.self, forKey: .integrationResultId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.awbNumber, forKey: .awbNumber)
            try container.encode(self.cargoOnFlightBookingSearchId, forKey: .cargoOnFlightBookingSearchId)
            try container.encode(self.integrationRateId, forKey: .integrationRateId)
            try container.encode(self.integrationResultId, forKey: .integrationResultId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case awbNumber = "awb_number"
            case cargoOnFlightBookingSearchId = "cargo_on_flight_booking_search_id"
            case integrationRateId = "integration_rate_id"
            case integrationResultId = "integration_result_id"
        }
    }
}