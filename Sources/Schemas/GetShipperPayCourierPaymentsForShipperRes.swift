import Foundation

public struct GetShipperPayCourierPaymentsForShipperRes: Codable, Hashable, Sendable {
    public let payments: [ShipperPayCourierPayment1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        payments: [ShipperPayCourierPayment1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.payments = payments
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.payments = try container.decode([ShipperPayCourierPayment1].self, forKey: .payments)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.payments, forKey: .payments)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case payments
    }
}