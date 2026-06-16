import Foundation

extension Requests {
    public struct CaseSetBillingReviewStatusReq: Codable, Hashable, Sendable {
        public let billingReviewStatus: BillingReviewStatusEnum
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            billingReviewStatus: BillingReviewStatusEnum,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.billingReviewStatus = billingReviewStatus
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.billingReviewStatus = try container.decode(BillingReviewStatusEnum.self, forKey: .billingReviewStatus)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.billingReviewStatus, forKey: .billingReviewStatus)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case billingReviewStatus = "billing_review_status"
        }
    }
}