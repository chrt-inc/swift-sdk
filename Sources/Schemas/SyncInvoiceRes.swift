import Foundation

public struct SyncInvoiceRes: Codable, Hashable, Sendable {
    public let statement: Statement1
    /// True if any changes were synced from Stripe
    public let synced: Bool
    public let stripeInvoiceStatus: StripeConnectInvoiceStatusEnum?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        statement: Statement1,
        synced: Bool,
        stripeInvoiceStatus: StripeConnectInvoiceStatusEnum? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.statement = statement
        self.synced = synced
        self.stripeInvoiceStatus = stripeInvoiceStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.statement = try container.decode(Statement1.self, forKey: .statement)
        self.synced = try container.decode(Bool.self, forKey: .synced)
        self.stripeInvoiceStatus = try container.decodeIfPresent(StripeConnectInvoiceStatusEnum.self, forKey: .stripeInvoiceStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.statement, forKey: .statement)
        try container.encode(self.synced, forKey: .synced)
        try container.encodeIfPresent(self.stripeInvoiceStatus, forKey: .stripeInvoiceStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case statement
        case synced
        case stripeInvoiceStatus = "stripe_invoice_status"
    }
}