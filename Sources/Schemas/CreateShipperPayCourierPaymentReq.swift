import Foundation

public struct CreateShipperPayCourierPaymentReq: Codable, Hashable, Sendable {
    public let orderIdOrShortId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderIdOrShortId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderIdOrShortId = orderIdOrShortId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderIdOrShortId = try container.decode(String.self, forKey: .orderIdOrShortId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderIdOrShortId, forKey: .orderIdOrShortId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderIdOrShortId = "order_id_or_short_id"
    }
}