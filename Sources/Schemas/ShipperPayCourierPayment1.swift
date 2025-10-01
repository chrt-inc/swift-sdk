import Foundation

public struct ShipperPayCourierPayment1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let shipperPayCourierLineItemGroupIds: [String]
    public let taskGroupIds: [String]
    public let offChrtShipperOrgInfoId: Nullable<String>
    /// Must be a string starting with `org_`
    public let shipperOrgId: Nullable<String>
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let stripeConnectShipperPayCourierCustomerId: Nullable<String>?
    public let stripeInvoiceId: Nullable<String>?
    public let stripeInvoiceUrl: Nullable<String>?
    public let stripeInvoiceCreatedTimestamp: Nullable<Date>?
    /// Must be a string starting with `user_`
    public let stripeInvoiceCreatedByUserId: Nullable<String>?
    public let paymentAmount: Double
    public let stripeInvoiceStatus: StripeConnectInvoiceStatusEnum?
    public let stripeInvoiceCompletedTimestamp: Nullable<Date>?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        shipperPayCourierLineItemGroupIds: [String],
        taskGroupIds: [String],
        offChrtShipperOrgInfoId: Nullable<String>,
        shipperOrgId: Nullable<String>,
        courierOrgId: String,
        stripeConnectShipperPayCourierCustomerId: Nullable<String>? = nil,
        stripeInvoiceId: Nullable<String>? = nil,
        stripeInvoiceUrl: Nullable<String>? = nil,
        stripeInvoiceCreatedTimestamp: Nullable<Date>? = nil,
        stripeInvoiceCreatedByUserId: Nullable<String>? = nil,
        paymentAmount: Double,
        stripeInvoiceStatus: StripeConnectInvoiceStatusEnum? = nil,
        stripeInvoiceCompletedTimestamp: Nullable<Date>? = nil,
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
        self.offChrtShipperOrgInfoId = try container.decode(Nullable<String>.self, forKey: .offChrtShipperOrgInfoId)
        self.shipperOrgId = try container.decode(Nullable<String>.self, forKey: .shipperOrgId)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.stripeConnectShipperPayCourierCustomerId = try container.decodeNullableIfPresent(String.self, forKey: .stripeConnectShipperPayCourierCustomerId)
        self.stripeInvoiceId = try container.decodeNullableIfPresent(String.self, forKey: .stripeInvoiceId)
        self.stripeInvoiceUrl = try container.decodeNullableIfPresent(String.self, forKey: .stripeInvoiceUrl)
        self.stripeInvoiceCreatedTimestamp = try container.decodeNullableIfPresent(Date.self, forKey: .stripeInvoiceCreatedTimestamp)
        self.stripeInvoiceCreatedByUserId = try container.decodeNullableIfPresent(String.self, forKey: .stripeInvoiceCreatedByUserId)
        self.paymentAmount = try container.decode(Double.self, forKey: .paymentAmount)
        self.stripeInvoiceStatus = try container.decodeIfPresent(StripeConnectInvoiceStatusEnum.self, forKey: .stripeInvoiceStatus)
        self.stripeInvoiceCompletedTimestamp = try container.decodeNullableIfPresent(Date.self, forKey: .stripeInvoiceCompletedTimestamp)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shipperPayCourierLineItemGroupIds, forKey: .shipperPayCourierLineItemGroupIds)
        try container.encode(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encode(self.offChrtShipperOrgInfoId, forKey: .offChrtShipperOrgInfoId)
        try container.encode(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeNullableIfPresent(self.stripeConnectShipperPayCourierCustomerId, forKey: .stripeConnectShipperPayCourierCustomerId)
        try container.encodeNullableIfPresent(self.stripeInvoiceId, forKey: .stripeInvoiceId)
        try container.encodeNullableIfPresent(self.stripeInvoiceUrl, forKey: .stripeInvoiceUrl)
        try container.encodeNullableIfPresent(self.stripeInvoiceCreatedTimestamp, forKey: .stripeInvoiceCreatedTimestamp)
        try container.encodeNullableIfPresent(self.stripeInvoiceCreatedByUserId, forKey: .stripeInvoiceCreatedByUserId)
        try container.encode(self.paymentAmount, forKey: .paymentAmount)
        try container.encodeIfPresent(self.stripeInvoiceStatus, forKey: .stripeInvoiceStatus)
        try container.encodeNullableIfPresent(self.stripeInvoiceCompletedTimestamp, forKey: .stripeInvoiceCompletedTimestamp)
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