import Foundation

public struct CargoAiFwbAndFhlExecution1: Codable, Hashable, Sendable {
    public let carrierSignature: String
    public let date: String
    public let place: String
    public let shipperSignature: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        carrierSignature: String,
        date: String,
        place: String,
        shipperSignature: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.carrierSignature = carrierSignature
        self.date = date
        self.place = place
        self.shipperSignature = shipperSignature
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carrierSignature = try container.decode(String.self, forKey: .carrierSignature)
        self.date = try container.decode(String.self, forKey: .date)
        self.place = try container.decode(String.self, forKey: .place)
        self.shipperSignature = try container.decode(String.self, forKey: .shipperSignature)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.carrierSignature, forKey: .carrierSignature)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.place, forKey: .place)
        try container.encode(self.shipperSignature, forKey: .shipperSignature)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case carrierSignature = "carrier_signature"
        case date
        case place
        case shipperSignature = "shipper_signature"
    }
}