import Foundation

public struct GenerateInvoiceReq: Codable, Hashable, Sendable {
    public let shipperPayCourierPaymentId: String
    public let daysUntilDue: Int?
    public let description: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        shipperPayCourierPaymentId: String,
        daysUntilDue: Int? = nil,
        description: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.shipperPayCourierPaymentId = shipperPayCourierPaymentId
        self.daysUntilDue = daysUntilDue
        self.description = description
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.shipperPayCourierPaymentId = try container.decode(String.self, forKey: .shipperPayCourierPaymentId)
        self.daysUntilDue = try container.decodeIfPresent(Int.self, forKey: .daysUntilDue)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.shipperPayCourierPaymentId, forKey: .shipperPayCourierPaymentId)
        try container.encodeIfPresent(self.daysUntilDue, forKey: .daysUntilDue)
        try container.encodeIfPresent(self.description, forKey: .description)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case shipperPayCourierPaymentId = "shipper_pay_courier_payment_id"
        case daysUntilDue = "days_until_due"
        case description
    }
}