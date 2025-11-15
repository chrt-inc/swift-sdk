import Foundation

public struct ShipperPayCourierLineItemGroup1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let taskGroupId: String
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let offChrtShipperOrgId: String?
    public let orderCancelled: Bool?
    public let rateSheetId: String
    public let lineItems: [LineItem1]
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        taskGroupId: String,
        courierOrgId: String,
        shipperOrgId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        orderCancelled: Bool? = nil,
        rateSheetId: String,
        lineItems: [LineItem1],
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.taskGroupId = taskGroupId
        self.courierOrgId = courierOrgId
        self.shipperOrgId = shipperOrgId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.orderCancelled = orderCancelled
        self.rateSheetId = rateSheetId
        self.lineItems = lineItems
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
        self.lineItems = try container.decode([LineItem1].self, forKey: .lineItems)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encode(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.lineItems, forKey: .lineItems)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case taskGroupId = "task_group_id"
        case courierOrgId = "courier_org_id"
        case shipperOrgId = "shipper_org_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case orderCancelled = "order_cancelled"
        case rateSheetId = "rate_sheet_id"
        case lineItems = "line_items"
        case id = "_id"
    }
}