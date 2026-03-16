import Foundation

public struct WebcargoProduct: Codable, Hashable, Sendable {
    public let productCode: String?
    public let productDescription: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        productCode: String? = nil,
        productDescription: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.productCode = productCode
        self.productDescription = productDescription
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.productCode = try container.decodeIfPresent(String.self, forKey: .productCode)
        self.productDescription = try container.decodeIfPresent(String.self, forKey: .productDescription)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.productCode, forKey: .productCode)
        try container.encodeIfPresent(self.productDescription, forKey: .productDescription)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case productCode = "product_code"
        case productDescription = "product_description"
    }
}