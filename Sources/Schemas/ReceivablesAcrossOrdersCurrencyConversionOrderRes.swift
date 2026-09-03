import Foundation

public struct ReceivablesAcrossOrdersCurrencyConversionOrderRes: Codable, Hashable, Sendable {
    public let convertedInvoiceLineItems: [InvoiceLineItem1]?
    public let failureReason: String?
    public let orderId: String
    public let status: StatusType
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        convertedInvoiceLineItems: [InvoiceLineItem1]? = nil,
        failureReason: String? = nil,
        orderId: String,
        status: StatusType,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.convertedInvoiceLineItems = convertedInvoiceLineItems
        self.failureReason = failureReason
        self.orderId = orderId
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.convertedInvoiceLineItems = try container.decodeIfPresent([InvoiceLineItem1].self, forKey: .convertedInvoiceLineItems)
        self.failureReason = try container.decodeIfPresent(String.self, forKey: .failureReason)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.status = try container.decode(StatusType.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.convertedInvoiceLineItems, forKey: .convertedInvoiceLineItems)
        try container.encodeIfPresent(self.failureReason, forKey: .failureReason)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case convertedInvoiceLineItems = "converted_invoice_line_items"
        case failureReason = "failure_reason"
        case orderId = "order_id"
        case status
    }
}