import Foundation

public struct XceleratorOrderExtraResponse1: Codable, Hashable, Sendable {
    public let extra: String?
    public let extraId: Int?
    public let quantity: Double?
    public let totalCharge: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        extra: String? = nil,
        extraId: Int? = nil,
        quantity: Double? = nil,
        totalCharge: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.extra = extra
        self.extraId = extraId
        self.quantity = quantity
        self.totalCharge = totalCharge
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.extra = try container.decodeIfPresent(String.self, forKey: .extra)
        self.extraId = try container.decodeIfPresent(Int.self, forKey: .extraId)
        self.quantity = try container.decodeIfPresent(Double.self, forKey: .quantity)
        self.totalCharge = try container.decodeIfPresent(Double.self, forKey: .totalCharge)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.extra, forKey: .extra)
        try container.encodeIfPresent(self.extraId, forKey: .extraId)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.totalCharge, forKey: .totalCharge)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case extra = "Extra"
        case extraId = "ExtraId"
        case quantity = "Quantity"
        case totalCharge = "TotalCharge"
    }
}