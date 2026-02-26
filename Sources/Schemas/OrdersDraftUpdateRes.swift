import Foundation

public struct OrdersDraftUpdateRes: Codable, Hashable, Sendable {
    public let orderId: String
    public let orderShortId: String
    /// Must be a string starting with `org_`
    public let forwarderOrgId: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let offChrtShipperOrgId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderId: String,
        orderShortId: String,
        forwarderOrgId: String? = nil,
        shipperOrgId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.forwarderOrgId = forwarderOrgId
        self.shipperOrgId = shipperOrgId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.forwarderOrgId = try container.decodeIfPresent(String.self, forKey: .forwarderOrgId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.forwarderOrgId, forKey: .forwarderOrgId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case forwarderOrgId = "forwarder_org_id"
        case shipperOrgId = "shipper_org_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
    }
}