import Foundation

public struct ScheduledOrdersNewDraftReq: Codable, Hashable, Sendable {
    public let orderManifest: OrderManifest1
    public let orderScheduleId: String
    public let orderScheduleRunIdempotencyKey: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderManifest: OrderManifest1,
        orderScheduleId: String,
        orderScheduleRunIdempotencyKey: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderManifest = orderManifest
        self.orderScheduleId = orderScheduleId
        self.orderScheduleRunIdempotencyKey = orderScheduleRunIdempotencyKey
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderManifest = try container.decode(OrderManifest1.self, forKey: .orderManifest)
        self.orderScheduleId = try container.decode(String.self, forKey: .orderScheduleId)
        self.orderScheduleRunIdempotencyKey = try container.decode(String.self, forKey: .orderScheduleRunIdempotencyKey)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderManifest, forKey: .orderManifest)
        try container.encode(self.orderScheduleId, forKey: .orderScheduleId)
        try container.encode(self.orderScheduleRunIdempotencyKey, forKey: .orderScheduleRunIdempotencyKey)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderManifest = "order_manifest"
        case orderScheduleId = "order_schedule_id"
        case orderScheduleRunIdempotencyKey = "order_schedule_run_idempotency_key"
    }
}