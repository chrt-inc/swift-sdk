import Foundation

/// Wrapped CXT order detail returned by ``GET /Orders/{orderId}/false``.
public struct CxtInetUserOrderResponse1: Codable, Hashable, Sendable {
    public let itemizedCharges: JSONValue?
    public let onDemandOrder: CxtOrderDetailResponse1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemizedCharges: JSONValue? = nil,
        onDemandOrder: CxtOrderDetailResponse1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemizedCharges = itemizedCharges
        self.onDemandOrder = onDemandOrder
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemizedCharges = try container.decodeIfPresent(JSONValue.self, forKey: .itemizedCharges)
        self.onDemandOrder = try container.decode(CxtOrderDetailResponse1.self, forKey: .onDemandOrder)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.itemizedCharges, forKey: .itemizedCharges)
        try container.encode(self.onDemandOrder, forKey: .onDemandOrder)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemizedCharges
        case onDemandOrder
    }
}