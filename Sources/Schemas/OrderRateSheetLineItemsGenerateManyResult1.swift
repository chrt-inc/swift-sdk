import Foundation

public struct OrderRateSheetLineItemsGenerateManyResult1: Codable, Hashable, Sendable {
    public let createdInvoiceLineItems: [InvoiceLineItem1]?
    public let errorDetail: String?
    public let errorStatusCode: Int?
    public let orderId: String
    public let status: OrderRateSheetLineItemsGenerateManyStatusEnum
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        createdInvoiceLineItems: [InvoiceLineItem1]? = nil,
        errorDetail: String? = nil,
        errorStatusCode: Int? = nil,
        orderId: String,
        status: OrderRateSheetLineItemsGenerateManyStatusEnum,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.createdInvoiceLineItems = createdInvoiceLineItems
        self.errorDetail = errorDetail
        self.errorStatusCode = errorStatusCode
        self.orderId = orderId
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.createdInvoiceLineItems = try container.decodeIfPresent([InvoiceLineItem1].self, forKey: .createdInvoiceLineItems)
        self.errorDetail = try container.decodeIfPresent(String.self, forKey: .errorDetail)
        self.errorStatusCode = try container.decodeIfPresent(Int.self, forKey: .errorStatusCode)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.status = try container.decode(OrderRateSheetLineItemsGenerateManyStatusEnum.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.createdInvoiceLineItems, forKey: .createdInvoiceLineItems)
        try container.encodeIfPresent(self.errorDetail, forKey: .errorDetail)
        try container.encodeIfPresent(self.errorStatusCode, forKey: .errorStatusCode)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case createdInvoiceLineItems = "created_invoice_line_items"
        case errorDetail = "error_detail"
        case errorStatusCode = "error_status_code"
        case orderId = "order_id"
        case status
    }
}