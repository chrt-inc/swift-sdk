import Foundation

public struct WebcargoPackage: Codable, Hashable, Sendable {
    public let dimensions: [WebcargoDimension]?
    public let packagingType: String?
    public let quantity: String?
    public let stackable: String?
    public let turnable: String?
    public let weight: WebcargoValueWithUnit?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dimensions: [WebcargoDimension]? = nil,
        packagingType: String? = nil,
        quantity: String? = nil,
        stackable: String? = nil,
        turnable: String? = nil,
        weight: WebcargoValueWithUnit? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dimensions = dimensions
        self.packagingType = packagingType
        self.quantity = quantity
        self.stackable = stackable
        self.turnable = turnable
        self.weight = weight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dimensions = try container.decodeIfPresent([WebcargoDimension].self, forKey: .dimensions)
        self.packagingType = try container.decodeIfPresent(String.self, forKey: .packagingType)
        self.quantity = try container.decodeIfPresent(String.self, forKey: .quantity)
        self.stackable = try container.decodeIfPresent(String.self, forKey: .stackable)
        self.turnable = try container.decodeIfPresent(String.self, forKey: .turnable)
        self.weight = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .weight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.dimensions, forKey: .dimensions)
        try container.encodeIfPresent(self.packagingType, forKey: .packagingType)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.stackable, forKey: .stackable)
        try container.encodeIfPresent(self.turnable, forKey: .turnable)
        try container.encodeIfPresent(self.weight, forKey: .weight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dimensions
        case packagingType = "packaging_type"
        case quantity
        case stackable
        case turnable
        case weight
    }
}