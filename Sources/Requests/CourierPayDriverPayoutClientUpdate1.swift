import Foundation

public struct CourierPayDriverPayoutClientUpdate1: Codable, Hashable, Sendable {
    public let payoutStatus: JSONValue?
    public let payoutCompletedAt: JSONValue?
    /// Must be a string starting with `user_`
    public let payoutCompletedByUserId: JSONValue?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        payoutStatus: JSONValue? = nil,
        payoutCompletedAt: JSONValue? = nil,
        payoutCompletedByUserId: JSONValue? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.payoutStatus = payoutStatus
        self.payoutCompletedAt = payoutCompletedAt
        self.payoutCompletedByUserId = payoutCompletedByUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.payoutStatus = try container.decodeIfPresent(JSONValue.self, forKey: .payoutStatus)
        self.payoutCompletedAt = try container.decodeIfPresent(JSONValue.self, forKey: .payoutCompletedAt)
        self.payoutCompletedByUserId = try container.decodeIfPresent(JSONValue.self, forKey: .payoutCompletedByUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.payoutStatus, forKey: .payoutStatus)
        try container.encodeIfPresent(self.payoutCompletedAt, forKey: .payoutCompletedAt)
        try container.encodeIfPresent(self.payoutCompletedByUserId, forKey: .payoutCompletedByUserId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case payoutStatus = "payout_status"
        case payoutCompletedAt = "payout_completed_at"
        case payoutCompletedByUserId = "payout_completed_by_user_id"
    }
}