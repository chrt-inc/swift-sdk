import Foundation

public struct ShipperPayCourierLineItemGroupCreateReq: Codable, Hashable, Sendable {
    /// ID of the shipper pay courier rate sheet
    public let shipperPayCourierRateSheetId: String
    /// ID of the task group
    public let taskGroupId: String
    /// Whether the shipment contains dangerous goods
    public let dangerousGoods: Bool?
    /// Whether the delivery is on a holiday
    public let holiday: Bool?
    /// Whether the delivery is on a weekend
    public let weekend: Bool?
    /// Whether the delivery is after hours
    public let afterHours: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        shipperPayCourierRateSheetId: String,
        taskGroupId: String,
        dangerousGoods: Bool? = nil,
        holiday: Bool? = nil,
        weekend: Bool? = nil,
        afterHours: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.shipperPayCourierRateSheetId = shipperPayCourierRateSheetId
        self.taskGroupId = taskGroupId
        self.dangerousGoods = dangerousGoods
        self.holiday = holiday
        self.weekend = weekend
        self.afterHours = afterHours
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.shipperPayCourierRateSheetId = try container.decode(String.self, forKey: .shipperPayCourierRateSheetId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.dangerousGoods = try container.decodeIfPresent(Bool.self, forKey: .dangerousGoods)
        self.holiday = try container.decodeIfPresent(Bool.self, forKey: .holiday)
        self.weekend = try container.decodeIfPresent(Bool.self, forKey: .weekend)
        self.afterHours = try container.decodeIfPresent(Bool.self, forKey: .afterHours)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.shipperPayCourierRateSheetId, forKey: .shipperPayCourierRateSheetId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.dangerousGoods, forKey: .dangerousGoods)
        try container.encodeIfPresent(self.holiday, forKey: .holiday)
        try container.encodeIfPresent(self.weekend, forKey: .weekend)
        try container.encodeIfPresent(self.afterHours, forKey: .afterHours)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case shipperPayCourierRateSheetId = "shipper_pay_courier_rate_sheet_id"
        case taskGroupId = "task_group_id"
        case dangerousGoods = "dangerous_goods"
        case holiday
        case weekend
        case afterHours = "after_hours"
    }
}