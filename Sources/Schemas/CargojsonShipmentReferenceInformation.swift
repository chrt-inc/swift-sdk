import Foundation

/// [CUSTOMER] Shipment reference info (supplementary reference for the AWB).
public struct CargojsonShipmentReferenceInformation: Codable, Hashable, Sendable {
    public let info: String?
    public let referenceNumber: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        info: String? = nil,
        referenceNumber: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.info = info
        self.referenceNumber = referenceNumber
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.info = try container.decodeIfPresent(String.self, forKey: .info)
        self.referenceNumber = try container.decodeIfPresent(String.self, forKey: .referenceNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.info, forKey: .info)
        try container.encodeIfPresent(self.referenceNumber, forKey: .referenceNumber)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case info
        case referenceNumber
    }
}