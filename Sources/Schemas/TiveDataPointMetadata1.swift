import Foundation

public struct TiveDataPointMetadata1: Codable, Hashable, Sendable {
    public let tiveShipmentId: String
    public let tiveDeviceId: String
    public let pytest: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        tiveShipmentId: String,
        tiveDeviceId: String,
        pytest: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.tiveShipmentId = tiveShipmentId
        self.tiveDeviceId = tiveDeviceId
        self.pytest = pytest
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tiveShipmentId = try container.decode(String.self, forKey: .tiveShipmentId)
        self.tiveDeviceId = try container.decode(String.self, forKey: .tiveDeviceId)
        self.pytest = try container.decodeIfPresent(Bool.self, forKey: .pytest)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.tiveShipmentId, forKey: .tiveShipmentId)
        try container.encode(self.tiveDeviceId, forKey: .tiveDeviceId)
        try container.encodeIfPresent(self.pytest, forKey: .pytest)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case tiveShipmentId = "tive_shipment_id"
        case tiveDeviceId = "tive_device_id"
        case pytest
    }
}