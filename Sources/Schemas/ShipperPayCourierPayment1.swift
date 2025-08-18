import Foundation

public struct ShipperPayCourierPayment1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let shipperPayCourierLineItemGroupIds: [String]
    public let taskGroupIds: [String]
    public let offChrtShipperOrgInfoId: JSONValue?
    /// Must be a string starting with `org_`
    public let shipperOrgId: JSONValue?
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let stripeConnectShipperPayCourierCustomerId: JSONValue?
    public let stripeInvoiceId: JSONValue?
    public let stripeInvoiceUrl: JSONValue?
    public let stripeInvoiceCreatedTimestamp: JSONValue?
    /// Must be a string starting with `user_`
    public let stripeInvoiceCreatedByUserId: JSONValue?
    public let paymentAmount: Double
    public let stripeInvoiceStatus: StripeConnectInvoiceStatusEnum?
    public let stripeInvoiceCompletedTimestamp: JSONValue?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        shipperPayCourierLineItemGroupIds: [String],
        taskGroupIds: [String],
        offChrtShipperOrgInfoId: JSONValue? = nil,
        shipperOrgId: JSONValue? = nil,
        courierOrgId: String,
        stripeConnectShipperPayCourierCustomerId: JSONValue? = nil,
        stripeInvoiceId: JSONValue? = nil,
        stripeInvoiceUrl: JSONValue? = nil,
        stripeInvoiceCreatedTimestamp: JSONValue? = nil,
        stripeInvoiceCreatedByUserId: JSONValue? = nil,
        paymentAmount: Double,
        stripeInvoiceStatus: StripeConnectInvoiceStatusEnum? = nil,
        stripeInvoiceCompletedTimestamp: JSONValue? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.shipperPayCourierLineItemGroupIds = shipperPayCourierLineItemGroupIds
        self.taskGroupIds = taskGroupIds
        self.offChrtShipperOrgInfoId = offChrtShipperOrgInfoId
        self.shipperOrgId = shipperOrgId
        self.courierOrgId = courierOrgId
        self.stripeConnectShipperPayCourierCustomerId = stripeConnectShipperPayCourierCustomerId
        self.stripeInvoiceId = stripeInvoiceId
        self.stripeInvoiceUrl = stripeInvoiceUrl
        self.stripeInvoiceCreatedTimestamp = stripeInvoiceCreatedTimestamp
        self.stripeInvoiceCreatedByUserId = stripeInvoiceCreatedByUserId
        self.paymentAmount = paymentAmount
        self.stripeInvoiceStatus = stripeInvoiceStatus
        self.stripeInvoiceCompletedTimestamp = stripeInvoiceCompletedTimestamp
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperPayCourierLineItemGroupIds = try container.decode([String].self, forKey: .shipperPayCourierLineItemGroupIds)
        self.taskGroupIds = try container.decode([String].self, forKey: .taskGroupIds)
        self.offChrtShipperOrgInfoId = try container.decodeIfPresent(JSONValue.self, forKey: .offChrtShipperOrgInfoId)
        self.shipperOrgId = try container.decodeIfPresent(JSONValue.self, forKey: .shipperOrgId)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.stripeConnectShipperPayCourierCustomerId = try container.decodeIfPresent(JSONValue.self, forKey: .stripeConnectShipperPayCourierCustomerId)
        self.stripeInvoiceId = try container.decodeIfPresent(JSONValue.self, forKey: .stripeInvoiceId)
        self.stripeInvoiceUrl = try container.decodeIfPresent(JSONValue.self, forKey: .stripeInvoiceUrl)
        self.stripeInvoiceCreatedTimestamp = try container.decodeIfPresent(JSONValue.self, forKey: .stripeInvoiceCreatedTimestamp)
        self.stripeInvoiceCreatedByUserId = try container.decodeIfPresent(JSONValue.self, forKey: .stripeInvoiceCreatedByUserId)
        self.paymentAmount = try container.decode(Double.self, forKey: .paymentAmount)
        self.stripeInvoiceStatus = try container.decodeIfPresent(StripeConnectInvoiceStatusEnum.self, forKey: .stripeInvoiceStatus)
        self.stripeInvoiceCompletedTimestamp = try container.decodeIfPresent(JSONValue.self, forKey: .stripeInvoiceCompletedTimestamp)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shipperPayCourierLineItemGroupIds, forKey: .shipperPayCourierLineItemGroupIds)
        try container.encode(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encodeIfPresent(self.offChrtShipperOrgInfoId, forKey: .offChrtShipperOrgInfoId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.stripeConnectShipperPayCourierCustomerId, forKey: .stripeConnectShipperPayCourierCustomerId)
        try container.encodeIfPresent(self.stripeInvoiceId, forKey: .stripeInvoiceId)
        try container.encodeIfPresent(self.stripeInvoiceUrl, forKey: .stripeInvoiceUrl)
        try container.encodeIfPresent(self.stripeInvoiceCreatedTimestamp, forKey: .stripeInvoiceCreatedTimestamp)
        try container.encodeIfPresent(self.stripeInvoiceCreatedByUserId, forKey: .stripeInvoiceCreatedByUserId)
        try container.encode(self.paymentAmount, forKey: .paymentAmount)
        try container.encodeIfPresent(self.stripeInvoiceStatus, forKey: .stripeInvoiceStatus)
        try container.encodeIfPresent(self.stripeInvoiceCompletedTimestamp, forKey: .stripeInvoiceCompletedTimestamp)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case shipperPayCourierLineItemGroupIds = "shipper_pay_courier_line_item_group_ids"
        case taskGroupIds = "task_group_ids"
        case offChrtShipperOrgInfoId = "off_chrt_shipper_org_info_id"
        case shipperOrgId = "shipper_org_id"
        case courierOrgId = "courier_org_id"
        case stripeConnectShipperPayCourierCustomerId = "stripe_connect_shipper_pay_courier_customer_id"
        case stripeInvoiceId = "stripe_invoice_id"
        case stripeInvoiceUrl = "stripe_invoice_url"
        case stripeInvoiceCreatedTimestamp = "stripe_invoice_created_timestamp"
        case stripeInvoiceCreatedByUserId = "stripe_invoice_created_by_user_id"
        case paymentAmount = "payment_amount"
        case stripeInvoiceStatus = "stripe_invoice_status"
        case stripeInvoiceCompletedTimestamp = "stripe_invoice_completed_timestamp"
        case id = "_id"
    }
}