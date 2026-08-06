import Foundation

public struct CreateInvoiceLineItemsFromAwbCostsCreatedAwb1: Codable, Hashable, Sendable {
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awbNumber: String
    public let createdInvoiceLineItemCount: Int
    public let orderId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        awbNumber: String,
        createdInvoiceLineItemCount: Int,
        orderId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.awbNumber = awbNumber
        self.createdInvoiceLineItemCount = createdInvoiceLineItemCount
        self.orderId = orderId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.awbNumber = try container.decode(String.self, forKey: .awbNumber)
        self.createdInvoiceLineItemCount = try container.decode(Int.self, forKey: .createdInvoiceLineItemCount)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.awbNumber, forKey: .awbNumber)
        try container.encode(self.createdInvoiceLineItemCount, forKey: .createdInvoiceLineItemCount)
        try container.encode(self.orderId, forKey: .orderId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case awbNumber = "awb_number"
        case createdInvoiceLineItemCount = "created_invoice_line_item_count"
        case orderId = "order_id"
    }
}