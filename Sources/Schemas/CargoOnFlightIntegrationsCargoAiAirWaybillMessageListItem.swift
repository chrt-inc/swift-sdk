import Foundation

public struct CargoOnFlightIntegrationsCargoAiAirWaybillMessageListItem: Codable, Hashable, Sendable {
    public let cargoaiAirWaybillMessage: CargoAiAirWaybillMessage1
    public let cargoaiAirWaybillMessageWebhookEvents: [CargoAiAirWaybillMessageWebhookEvent1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargoaiAirWaybillMessage: CargoAiAirWaybillMessage1,
        cargoaiAirWaybillMessageWebhookEvents: [CargoAiAirWaybillMessageWebhookEvent1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargoaiAirWaybillMessage = cargoaiAirWaybillMessage
        self.cargoaiAirWaybillMessageWebhookEvents = cargoaiAirWaybillMessageWebhookEvents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargoaiAirWaybillMessage = try container.decode(CargoAiAirWaybillMessage1.self, forKey: .cargoaiAirWaybillMessage)
        self.cargoaiAirWaybillMessageWebhookEvents = try container.decode([CargoAiAirWaybillMessageWebhookEvent1].self, forKey: .cargoaiAirWaybillMessageWebhookEvents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cargoaiAirWaybillMessage, forKey: .cargoaiAirWaybillMessage)
        try container.encode(self.cargoaiAirWaybillMessageWebhookEvents, forKey: .cargoaiAirWaybillMessageWebhookEvents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargoaiAirWaybillMessage = "cargoai_air_waybill_message"
        case cargoaiAirWaybillMessageWebhookEvents = "cargoai_air_waybill_message_webhook_events"
    }
}