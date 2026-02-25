import Foundation

public struct OrdersDraftUpdateRes: Codable, Hashable, Sendable {
    /// Must be a string starting with `org_`
    public let forwarderOrgId: String?
    public let offChrtShipperOrgId: String?
    public let orderId: String
    public let orderShortId: String
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        forwarderOrgId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        orderId: String,
        orderShortId: String,
        shipperOrgId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.forwarderOrgId = forwarderOrgId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.shipperOrgId = shipperOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.forwarderOrgId = try container.decodeIfPresent(String.self, forKey: .forwarderOrgId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.forwarderOrgId, forKey: .forwarderOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case forwarderOrgId = "forwarder_org_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case shipperOrgId = "shipper_org_id"
    }
}