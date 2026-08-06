import Foundation

public struct CreateInvoiceLineItemsFromAwbCostsRejectedAwb1: Codable, Hashable, Sendable {
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awbNumber: String
    public let reason: CreateInvoiceLineItemsFromAwbCostsRejectedReasonEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        awbNumber: String,
        reason: CreateInvoiceLineItemsFromAwbCostsRejectedReasonEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.awbNumber = awbNumber
        self.reason = reason
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.awbNumber = try container.decode(String.self, forKey: .awbNumber)
        self.reason = try container.decode(CreateInvoiceLineItemsFromAwbCostsRejectedReasonEnum1.self, forKey: .reason)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.awbNumber, forKey: .awbNumber)
        try container.encode(self.reason, forKey: .reason)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case awbNumber = "awb_number"
        case reason
    }
}