import Foundation

/// Per-item dimensions and weight.
///
/// Values are **per piece**, not per entry: the spec's `quantity` note says
/// "quantity 5 with weight 10 is 5 pieces weighing 50 lbs in total". Anything
/// summing weight must multiply by `quantity` first.
public struct CouriePackageItemResponse1: Codable, Hashable, Sendable {
    public let height: Double?
    public let length: Double?
    public let quantity: Int?
    public let weight: Double?
    public let width: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        height: Double? = nil,
        length: Double? = nil,
        quantity: Int? = nil,
        weight: Double? = nil,
        width: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.height = height
        self.length = length
        self.quantity = quantity
        self.weight = weight
        self.width = width
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.height = try container.decodeIfPresent(Double.self, forKey: .height)
        self.length = try container.decodeIfPresent(Double.self, forKey: .length)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.weight = try container.decodeIfPresent(Double.self, forKey: .weight)
        self.width = try container.decodeIfPresent(Double.self, forKey: .width)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.height, forKey: .height)
        try container.encodeIfPresent(self.length, forKey: .length)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.width, forKey: .width)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case height
        case length
        case quantity
        case weight
        case width
    }
}