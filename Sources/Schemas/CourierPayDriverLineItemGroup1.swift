import Foundation

public struct CourierPayDriverLineItemGroup1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let driverId: String
    public let taskGroupId: String
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let orderCancelled: Bool?
    public let lineItems: [LineItem1]
    public let rateSheetId: String
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        driverId: String,
        taskGroupId: String,
        courierOrgId: String,
        orderCancelled: Bool? = nil,
        lineItems: [LineItem1],
        rateSheetId: String,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.driverId = driverId
        self.taskGroupId = taskGroupId
        self.courierOrgId = courierOrgId
        self.orderCancelled = orderCancelled
        self.lineItems = lineItems
        self.rateSheetId = rateSheetId
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.driverId = try container.decode(String.self, forKey: .driverId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.lineItems = try container.decode([LineItem1].self, forKey: .lineItems)
        self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.driverId, forKey: .driverId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encode(self.lineItems, forKey: .lineItems)
        try container.encode(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case driverId = "driver_id"
        case taskGroupId = "task_group_id"
        case courierOrgId = "courier_org_id"
        case orderCancelled = "order_cancelled"
        case lineItems = "line_items"
        case rateSheetId = "rate_sheet_id"
        case id = "_id"
    }
}