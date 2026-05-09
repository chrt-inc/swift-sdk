import Foundation

public struct AttachBillingLedgerPeriodReq: Codable, Hashable, Sendable {
    public let billingLedgerPeriodId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        billingLedgerPeriodId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.billingLedgerPeriodId = billingLedgerPeriodId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.billingLedgerPeriodId = try container.decode(String.self, forKey: .billingLedgerPeriodId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.billingLedgerPeriodId, forKey: .billingLedgerPeriodId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case billingLedgerPeriodId = "billing_ledger_period_id"
    }
}