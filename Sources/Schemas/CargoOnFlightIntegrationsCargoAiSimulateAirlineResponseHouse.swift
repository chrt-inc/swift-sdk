import Foundation

public struct CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseHouse: Codable, Hashable, Sendable {
    public let cargoOnFlightHouseAirWaybillId: String
    public let status: StatusType
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargoOnFlightHouseAirWaybillId: String,
        status: StatusType,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargoOnFlightHouseAirWaybillId = cargoOnFlightHouseAirWaybillId
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargoOnFlightHouseAirWaybillId = try container.decode(String.self, forKey: .cargoOnFlightHouseAirWaybillId)
        self.status = try container.decode(StatusType.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cargoOnFlightHouseAirWaybillId, forKey: .cargoOnFlightHouseAirWaybillId)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargoOnFlightHouseAirWaybillId = "cargo_on_flight_house_air_waybill_id"
        case status
    }
}