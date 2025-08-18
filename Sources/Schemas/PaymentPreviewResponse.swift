import Foundation

public struct PaymentPreviewResponse: Codable, Hashable, Sendable {
    public let taskGroups: [TaskGroup1]
    public let lineItemGroups: [ShipperPayCourierLineItemGroup1]
    public let totalAmount: Double
    public let paymentReady: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroups: [TaskGroup1],
        lineItemGroups: [ShipperPayCourierLineItemGroup1],
        totalAmount: Double,
        paymentReady: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroups = taskGroups
        self.lineItemGroups = lineItemGroups
        self.totalAmount = totalAmount
        self.paymentReady = paymentReady
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroups = try container.decode([TaskGroup1].self, forKey: .taskGroups)
        self.lineItemGroups = try container.decode([ShipperPayCourierLineItemGroup1].self, forKey: .lineItemGroups)
        self.totalAmount = try container.decode(Double.self, forKey: .totalAmount)
        self.paymentReady = try container.decode(Bool.self, forKey: .paymentReady)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroups, forKey: .taskGroups)
        try container.encode(self.lineItemGroups, forKey: .lineItemGroups)
        try container.encode(self.totalAmount, forKey: .totalAmount)
        try container.encode(self.paymentReady, forKey: .paymentReady)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroups = "task_groups"
        case lineItemGroups = "line_item_groups"
        case totalAmount = "total_amount"
        case paymentReady = "payment_ready"
    }
}