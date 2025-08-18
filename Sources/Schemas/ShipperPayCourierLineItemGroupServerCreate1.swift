import Foundation

public struct ShipperPayCourierLineItemGroupServerCreate1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let taskGroupId: String
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    /// Must be a string starting with `org_`
    public let shipperOrgId: JSONValue?
    public let offChrtShipperOrgInfoId: JSONValue?
    public let orderCancelled: Bool?
    public let rateSheetId: String
    public let lineItems: [LineItem1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        taskGroupId: String,
        courierOrgId: String,
        shipperOrgId: JSONValue? = nil,
        offChrtShipperOrgInfoId: JSONValue? = nil,
        orderCancelled: Bool? = nil,
        rateSheetId: String,
        lineItems: [LineItem1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.taskGroupId = taskGroupId
        self.courierOrgId = courierOrgId
        self.shipperOrgId = shipperOrgId
        self.offChrtShipperOrgInfoId = offChrtShipperOrgInfoId
        self.orderCancelled = orderCancelled
        self.rateSheetId = rateSheetId
        self.lineItems = lineItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.shipperOrgId = try container.decodeIfPresent(JSONValue.self, forKey: .shipperOrgId)
        self.offChrtShipperOrgInfoId = try container.decodeIfPresent(JSONValue.self, forKey: .offChrtShipperOrgInfoId)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
        self.lineItems = try container.decode([LineItem1].self, forKey: .lineItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgInfoId, forKey: .offChrtShipperOrgInfoId)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encode(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.lineItems, forKey: .lineItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case taskGroupId = "task_group_id"
        case courierOrgId = "courier_org_id"
        case shipperOrgId = "shipper_org_id"
        case offChrtShipperOrgInfoId = "off_chrt_shipper_org_info_id"
        case orderCancelled = "order_cancelled"
        case rateSheetId = "rate_sheet_id"
        case lineItems = "line_items"
    }
}