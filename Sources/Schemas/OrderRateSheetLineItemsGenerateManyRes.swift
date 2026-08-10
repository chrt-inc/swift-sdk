import Foundation

public struct OrderRateSheetLineItemsGenerateManyRes: Codable, Hashable, Sendable {
    public let createdInvoiceLineItemCount: Int
    public let failedOrderCount: Int
    public let results: [OrderRateSheetLineItemsGenerateManyResult1]?
    public let skippedOrderCount: Int
    public let succeededOrderCount: Int
    public let totalOrderCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        createdInvoiceLineItemCount: Int,
        failedOrderCount: Int,
        results: [OrderRateSheetLineItemsGenerateManyResult1]? = nil,
        skippedOrderCount: Int,
        succeededOrderCount: Int,
        totalOrderCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.createdInvoiceLineItemCount = createdInvoiceLineItemCount
        self.failedOrderCount = failedOrderCount
        self.results = results
        self.skippedOrderCount = skippedOrderCount
        self.succeededOrderCount = succeededOrderCount
        self.totalOrderCount = totalOrderCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.createdInvoiceLineItemCount = try container.decode(Int.self, forKey: .createdInvoiceLineItemCount)
        self.failedOrderCount = try container.decode(Int.self, forKey: .failedOrderCount)
        self.results = try container.decodeIfPresent([OrderRateSheetLineItemsGenerateManyResult1].self, forKey: .results)
        self.skippedOrderCount = try container.decode(Int.self, forKey: .skippedOrderCount)
        self.succeededOrderCount = try container.decode(Int.self, forKey: .succeededOrderCount)
        self.totalOrderCount = try container.decode(Int.self, forKey: .totalOrderCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.createdInvoiceLineItemCount, forKey: .createdInvoiceLineItemCount)
        try container.encode(self.failedOrderCount, forKey: .failedOrderCount)
        try container.encodeIfPresent(self.results, forKey: .results)
        try container.encode(self.skippedOrderCount, forKey: .skippedOrderCount)
        try container.encode(self.succeededOrderCount, forKey: .succeededOrderCount)
        try container.encode(self.totalOrderCount, forKey: .totalOrderCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case createdInvoiceLineItemCount = "created_invoice_line_item_count"
        case failedOrderCount = "failed_order_count"
        case results
        case skippedOrderCount = "skipped_order_count"
        case succeededOrderCount = "succeeded_order_count"
        case totalOrderCount = "total_order_count"
    }
}