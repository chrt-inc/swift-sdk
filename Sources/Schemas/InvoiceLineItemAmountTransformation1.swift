import Foundation

public struct InvoiceLineItemAmountTransformation1: Codable, Hashable, Sendable {
    public let transformationType: InvoiceLineItemAmountTransformationTypeEnum1
    public let value: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        transformationType: InvoiceLineItemAmountTransformationTypeEnum1,
        value: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.transformationType = transformationType
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.transformationType = try container.decode(InvoiceLineItemAmountTransformationTypeEnum1.self, forKey: .transformationType)
        self.value = try container.decode(Double.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.transformationType, forKey: .transformationType)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case transformationType = "transformation_type"
        case value
    }
}