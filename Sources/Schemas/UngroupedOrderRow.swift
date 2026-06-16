import Foundation

public struct UngroupedOrderRow: Codable, Hashable, Sendable {
    public let order: Order1
    public let billingReviewStatus: BillingReviewStatusEnum
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        order: Order1,
        billingReviewStatus: BillingReviewStatusEnum,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.order = order
        self.billingReviewStatus = billingReviewStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.order = try container.decode(Order1.self, forKey: .order)
        self.billingReviewStatus = try container.decode(BillingReviewStatusEnum.self, forKey: .billingReviewStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.order, forKey: .order)
        try container.encode(self.billingReviewStatus, forKey: .billingReviewStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case order
        case billingReviewStatus = "billing_review_status"
    }
}