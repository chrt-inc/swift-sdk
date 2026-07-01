import Foundation

public struct TiveDataPointMetadata1: Codable, Hashable, Sendable {
    public let pytest: Bool?
    public let tiveDeviceId: String
    public let tiveShipmentId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        pytest: Bool? = nil,
        tiveDeviceId: String,
        tiveShipmentId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.pytest = pytest
        self.tiveDeviceId = tiveDeviceId
        self.tiveShipmentId = tiveShipmentId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pytest = try container.decodeIfPresent(Bool.self, forKey: .pytest)
        self.tiveDeviceId = try container.decode(String.self, forKey: .tiveDeviceId)
        self.tiveShipmentId = try container.decode(String.self, forKey: .tiveShipmentId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.pytest, forKey: .pytest)
        try container.encode(self.tiveDeviceId, forKey: .tiveDeviceId)
        try container.encode(self.tiveShipmentId, forKey: .tiveShipmentId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case pytest
        case tiveDeviceId = "tive_device_id"
        case tiveShipmentId = "tive_shipment_id"
    }
}