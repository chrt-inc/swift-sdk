import Foundation

public struct BillingInvoiceApprovedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: BillingInvoiceApproved?
    /// The invoice that was approved
    public let invoiceId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: BillingInvoiceApproved? = nil,
        invoiceId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.invoiceId = invoiceId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(BillingInvoiceApproved.self, forKey: .eventType)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.invoiceId, forKey: .invoiceId)
    }

    public enum BillingInvoiceApproved: String, Codable, Hashable, CaseIterable, Sendable {
        case billingInvoiceApproved = "billing.invoice.approved"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case invoiceId = "invoice_id"
    }
}