import Foundation

public struct OrdersUpdateDraftRes: Codable, Hashable, Sendable {
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let offChrtShipperOrgDataId: String?
    public let orderId: String
    public let orderShortId: String
    public let serviceLine: ServiceLineEnum
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorOrgId: String? = nil,
        offChrtShipperOrgDataId: String? = nil,
        orderId: String,
        orderShortId: String,
        serviceLine: ServiceLineEnum,
        shipperOrgId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorOrgId = coordinatorOrgId
        self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.serviceLine = serviceLine
        self.shipperOrgId = shipperOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.serviceLine = try container.decode(ServiceLineEnum.self, forKey: .serviceLine)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.serviceLine, forKey: .serviceLine)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorOrgId = "coordinator_org_id"
        case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case serviceLine = "service_line"
        case shipperOrgId = "shipper_org_id"
    }
}