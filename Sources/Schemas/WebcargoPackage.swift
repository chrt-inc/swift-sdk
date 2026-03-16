import Foundation

public struct WebcargoPackage: Codable, Hashable, Sendable {
    public let packagingType: String?
    public let weight: WebcargoValueWithUnit?
    public let quantity: String?
    public let dimensions: [WebcargoDimension]?
    public let stackable: String?
    public let turnable: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        packagingType: String? = nil,
        weight: WebcargoValueWithUnit? = nil,
        quantity: String? = nil,
        dimensions: [WebcargoDimension]? = nil,
        stackable: String? = nil,
        turnable: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.packagingType = packagingType
        self.weight = weight
        self.quantity = quantity
        self.dimensions = dimensions
        self.stackable = stackable
        self.turnable = turnable
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.packagingType = try container.decodeIfPresent(String.self, forKey: .packagingType)
        self.weight = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .weight)
        self.quantity = try container.decodeIfPresent(String.self, forKey: .quantity)
        self.dimensions = try container.decodeIfPresent([WebcargoDimension].self, forKey: .dimensions)
        self.stackable = try container.decodeIfPresent(String.self, forKey: .stackable)
        self.turnable = try container.decodeIfPresent(String.self, forKey: .turnable)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.packagingType, forKey: .packagingType)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.dimensions, forKey: .dimensions)
        try container.encodeIfPresent(self.stackable, forKey: .stackable)
        try container.encodeIfPresent(self.turnable, forKey: .turnable)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case packagingType = "packaging_type"
        case weight
        case quantity
        case dimensions
        case stackable
        case turnable
    }
}