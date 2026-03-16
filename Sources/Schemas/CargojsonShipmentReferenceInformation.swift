import Foundation

/// [CUSTOMER] Shipment reference info (supplementary reference for the AWB).
public struct CargojsonShipmentReferenceInformation: Codable, Hashable, Sendable {
    public let referenceNumber: String?
    public let info: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        referenceNumber: String? = nil,
        info: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.referenceNumber = referenceNumber
        self.info = info
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.referenceNumber = try container.decodeIfPresent(String.self, forKey: .referenceNumber)
        self.info = try container.decodeIfPresent(String.self, forKey: .info)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.referenceNumber, forKey: .referenceNumber)
        try container.encodeIfPresent(self.info, forKey: .info)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case referenceNumber
        case info
    }
}