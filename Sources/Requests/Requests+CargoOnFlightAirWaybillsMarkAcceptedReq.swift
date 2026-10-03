import Foundation

extension Requests {
    public struct CargoOnFlightAirWaybillsMarkAcceptedReq: Codable, Hashable, Sendable {
        public let cargoOnFlightHouseAirWaybillIds: [String]?
        public let markFwb: Bool
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cargoOnFlightHouseAirWaybillIds: [String]? = nil,
            markFwb: Bool,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cargoOnFlightHouseAirWaybillIds = cargoOnFlightHouseAirWaybillIds
            self.markFwb = markFwb
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cargoOnFlightHouseAirWaybillIds = try container.decodeIfPresent([String].self, forKey: .cargoOnFlightHouseAirWaybillIds)
            self.markFwb = try container.decode(Bool.self, forKey: .markFwb)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.cargoOnFlightHouseAirWaybillIds, forKey: .cargoOnFlightHouseAirWaybillIds)
            try container.encode(self.markFwb, forKey: .markFwb)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cargoOnFlightHouseAirWaybillIds = "cargo_on_flight_house_air_waybill_ids"
            case markFwb = "mark_fwb"
        }
    }
}