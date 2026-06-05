import Foundation

/// Event `additionalInformation` (notifications, delivery, transfer).
public struct CargoAiTrackAndTraceAdditionalInformation: Codable, Hashable, Sendable {
    public let receivedFromName: String?
    public let notificationToName: String?
    public let deliveryToName: String?
    public let transferredToCarrier: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        receivedFromName: String? = nil,
        notificationToName: String? = nil,
        deliveryToName: String? = nil,
        transferredToCarrier: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.receivedFromName = receivedFromName
        self.notificationToName = notificationToName
        self.deliveryToName = deliveryToName
        self.transferredToCarrier = transferredToCarrier
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.receivedFromName = try container.decodeIfPresent(String.self, forKey: .receivedFromName)
        self.notificationToName = try container.decodeIfPresent(String.self, forKey: .notificationToName)
        self.deliveryToName = try container.decodeIfPresent(String.self, forKey: .deliveryToName)
        self.transferredToCarrier = try container.decodeIfPresent(String.self, forKey: .transferredToCarrier)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.receivedFromName, forKey: .receivedFromName)
        try container.encodeIfPresent(self.notificationToName, forKey: .notificationToName)
        try container.encodeIfPresent(self.deliveryToName, forKey: .deliveryToName)
        try container.encodeIfPresent(self.transferredToCarrier, forKey: .transferredToCarrier)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case receivedFromName
        case notificationToName
        case deliveryToName
        case transferredToCarrier
    }
}