import Foundation

public struct WebcargoCarrier: Codable, Hashable, Sendable {
    public let carrierCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        carrierCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.carrierCode = carrierCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.carrierCode = try container.decodeIfPresent(String.self, forKey: .carrierCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.carrierCode, forKey: .carrierCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case carrierCode = "carrier_code"
    }
}