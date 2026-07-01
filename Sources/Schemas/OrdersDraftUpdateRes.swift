import Foundation

public struct OrdersDraftUpdateRes: Codable, Hashable, Sendable {
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let offChrtShipperOrgId: String?
    public let orderId: String
    public let orderShortId: String
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        coordinatorOrgId: String? = nil,
        offChrtReferenceId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        orderId: String,
        orderShortId: String,
        shipperOrgId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.coordinatorOrgId = coordinatorOrgId
        self.offChrtReferenceId = offChrtReferenceId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.shipperOrgId = shipperOrgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case coordinatorOrgId = "coordinator_org_id"
        case offChrtReferenceId = "off_chrt_reference_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case shipperOrgId = "shipper_org_id"
    }
}