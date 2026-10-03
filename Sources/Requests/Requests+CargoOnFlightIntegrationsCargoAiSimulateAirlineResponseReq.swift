import Foundation

extension Requests {
    public struct CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseReq: Codable, Hashable, Sendable {
        public let airlineResponse: String?
        public let fwbStatus: CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseReqFwbStatus?
        public let houses: [CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseHouse]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            airlineResponse: String? = nil,
            fwbStatus: CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseReqFwbStatus? = nil,
            houses: [CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseHouse]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.airlineResponse = airlineResponse
            self.fwbStatus = fwbStatus
            self.houses = houses
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.airlineResponse = try container.decodeIfPresent(String.self, forKey: .airlineResponse)
            self.fwbStatus = try container.decodeIfPresent(CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseReqFwbStatus.self, forKey: .fwbStatus)
            self.houses = try container.decodeIfPresent([CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseHouse].self, forKey: .houses)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.airlineResponse, forKey: .airlineResponse)
            try container.encodeIfPresent(self.fwbStatus, forKey: .fwbStatus)
            try container.encodeIfPresent(self.houses, forKey: .houses)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case airlineResponse = "airline_response"
            case fwbStatus = "fwb_status"
            case houses
        }
    }
}