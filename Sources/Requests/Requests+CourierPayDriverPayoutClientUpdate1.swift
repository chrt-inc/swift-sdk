import Foundation

extension Requests {
    public struct CourierPayDriverPayoutClientUpdate1: Codable, Hashable, Sendable {
        public let payoutStatus: Nullable<PayoutStatusEnum>?
        public let payoutCompletedAt: Nullable<Date>?
        /// Must be a string starting with `user_`
        public let payoutCompletedByUserId: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            payoutStatus: Nullable<PayoutStatusEnum>? = nil,
            payoutCompletedAt: Nullable<Date>? = nil,
            payoutCompletedByUserId: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.payoutStatus = payoutStatus
            self.payoutCompletedAt = payoutCompletedAt
            self.payoutCompletedByUserId = payoutCompletedByUserId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.payoutStatus = try container.decodeNullableIfPresent(PayoutStatusEnum.self, forKey: .payoutStatus)
            self.payoutCompletedAt = try container.decodeNullableIfPresent(Date.self, forKey: .payoutCompletedAt)
            self.payoutCompletedByUserId = try container.decodeNullableIfPresent(String.self, forKey: .payoutCompletedByUserId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.payoutStatus, forKey: .payoutStatus)
            try container.encodeNullableIfPresent(self.payoutCompletedAt, forKey: .payoutCompletedAt)
            try container.encodeNullableIfPresent(self.payoutCompletedByUserId, forKey: .payoutCompletedByUserId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case payoutStatus = "payout_status"
            case payoutCompletedAt = "payout_completed_at"
            case payoutCompletedByUserId = "payout_completed_by_user_id"
        }
    }
}