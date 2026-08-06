import Foundation

public struct OrderAwbBillingListItem1: Codable, Hashable, Sendable {
    public let accounts: [OrderAwbBillingAccount1]?
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awbNumber: String
    public let completedAtTimestamp: Date?
    public let orderId: String
    public let orderShortId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accounts: [OrderAwbBillingAccount1]? = nil,
        awbNumber: String,
        completedAtTimestamp: Date? = nil,
        orderId: String,
        orderShortId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accounts = accounts
        self.awbNumber = awbNumber
        self.completedAtTimestamp = completedAtTimestamp
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accounts = try container.decodeIfPresent([OrderAwbBillingAccount1].self, forKey: .accounts)
        self.awbNumber = try container.decode(String.self, forKey: .awbNumber)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accounts, forKey: .accounts)
        try container.encode(self.awbNumber, forKey: .awbNumber)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accounts
        case awbNumber = "awb_number"
        case completedAtTimestamp = "completed_at_timestamp"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
    }
}