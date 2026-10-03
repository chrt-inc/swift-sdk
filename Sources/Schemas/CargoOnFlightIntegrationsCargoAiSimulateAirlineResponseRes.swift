import Foundation

public struct CargoOnFlightIntegrationsCargoAiSimulateAirlineResponseRes: Codable, Hashable, Sendable {
    public let cargoOnFlightAirWaybill: CargoOnFlightAirWaybill1
    public let cargoOnFlightHouseAirWaybills: [CargoOnFlightHouseAirWaybill1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargoOnFlightAirWaybill: CargoOnFlightAirWaybill1,
        cargoOnFlightHouseAirWaybills: [CargoOnFlightHouseAirWaybill1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargoOnFlightAirWaybill = cargoOnFlightAirWaybill
        self.cargoOnFlightHouseAirWaybills = cargoOnFlightHouseAirWaybills
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargoOnFlightAirWaybill = try container.decode(CargoOnFlightAirWaybill1.self, forKey: .cargoOnFlightAirWaybill)
        self.cargoOnFlightHouseAirWaybills = try container.decodeIfPresent([CargoOnFlightHouseAirWaybill1].self, forKey: .cargoOnFlightHouseAirWaybills)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cargoOnFlightAirWaybill, forKey: .cargoOnFlightAirWaybill)
        try container.encodeIfPresent(self.cargoOnFlightHouseAirWaybills, forKey: .cargoOnFlightHouseAirWaybills)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargoOnFlightAirWaybill = "cargo_on_flight_air_waybill"
        case cargoOnFlightHouseAirWaybills = "cargo_on_flight_house_air_waybills"
    }
}