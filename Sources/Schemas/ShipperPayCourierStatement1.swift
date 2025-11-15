import Foundation

public struct ShipperPayCourierStatement1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let shipperPayCourierLineItemGroupIds: [String]
    public let taskGroupIds: [String]
    public let offChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    /// Must be a string starting with `org_`
    public let courierOrgId: String
    public let shipperCustomerIdForCourierStripeConnectAccount: String?
    public let stripeInvoiceId: String?
    public let stripeInvoiceUrl: String?
    public let stripeInvoiceCreatedTimestamp: Date?
    /// Must be a string starting with `user_`
    public let stripeInvoiceCreatedByUserId: String?
    public let statementAmount: Double
    public let stripeInvoiceStatus: StripeConnectInvoiceStatusEnum?
    public let stripeInvoiceCompletedTimestamp: Date?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        shipperPayCourierLineItemGroupIds: [String],
        taskGroupIds: [String],
        offChrtShipperOrgId: String? = nil,
        shipperOrgId: String? = nil,
        courierOrgId: String,
        shipperCustomerIdForCourierStripeConnectAccount: String? = nil,
        stripeInvoiceId: String? = nil,
        stripeInvoiceUrl: String? = nil,
        stripeInvoiceCreatedTimestamp: Date? = nil,
        stripeInvoiceCreatedByUserId: String? = nil,
        statementAmount: Double,
        stripeInvoiceStatus: StripeConnectInvoiceStatusEnum? = nil,
        stripeInvoiceCompletedTimestamp: Date? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.shipperPayCourierLineItemGroupIds = shipperPayCourierLineItemGroupIds
        self.taskGroupIds = taskGroupIds
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.shipperOrgId = shipperOrgId
        self.courierOrgId = courierOrgId
        self.shipperCustomerIdForCourierStripeConnectAccount = shipperCustomerIdForCourierStripeConnectAccount
        self.stripeInvoiceId = stripeInvoiceId
        self.stripeInvoiceUrl = stripeInvoiceUrl
        self.stripeInvoiceCreatedTimestamp = stripeInvoiceCreatedTimestamp
        self.stripeInvoiceCreatedByUserId = stripeInvoiceCreatedByUserId
        self.statementAmount = statementAmount
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
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
        self.shipperCustomerIdForCourierStripeConnectAccount = try container.decodeIfPresent(String.self, forKey: .shipperCustomerIdForCourierStripeConnectAccount)
        self.stripeInvoiceId = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceId)
        self.stripeInvoiceUrl = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceUrl)
        self.stripeInvoiceCreatedTimestamp = try container.decodeIfPresent(Date.self, forKey: .stripeInvoiceCreatedTimestamp)
        self.stripeInvoiceCreatedByUserId = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceCreatedByUserId)
        self.statementAmount = try container.decode(Double.self, forKey: .statementAmount)
        self.stripeInvoiceStatus = try container.decodeIfPresent(StripeConnectInvoiceStatusEnum.self, forKey: .stripeInvoiceStatus)
        self.stripeInvoiceCompletedTimestamp = try container.decodeIfPresent(Date.self, forKey: .stripeInvoiceCompletedTimestamp)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shipperPayCourierLineItemGroupIds, forKey: .shipperPayCourierLineItemGroupIds)
        try container.encode(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.courierOrgId, forKey: .courierOrgId)
        try container.encodeIfPresent(self.shipperCustomerIdForCourierStripeConnectAccount, forKey: .shipperCustomerIdForCourierStripeConnectAccount)
        try container.encodeIfPresent(self.stripeInvoiceId, forKey: .stripeInvoiceId)
        try container.encodeIfPresent(self.stripeInvoiceUrl, forKey: .stripeInvoiceUrl)
        try container.encodeIfPresent(self.stripeInvoiceCreatedTimestamp, forKey: .stripeInvoiceCreatedTimestamp)
        try container.encodeIfPresent(self.stripeInvoiceCreatedByUserId, forKey: .stripeInvoiceCreatedByUserId)
        try container.encode(self.statementAmount, forKey: .statementAmount)
        try container.encodeIfPresent(self.stripeInvoiceStatus, forKey: .stripeInvoiceStatus)
        try container.encodeIfPresent(self.stripeInvoiceCompletedTimestamp, forKey: .stripeInvoiceCompletedTimestamp)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case shipperPayCourierLineItemGroupIds = "shipper_pay_courier_line_item_group_ids"
        case taskGroupIds = "task_group_ids"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case shipperOrgId = "shipper_org_id"
        case courierOrgId = "courier_org_id"
        case shipperCustomerIdForCourierStripeConnectAccount = "shipper_customer_id_for_courier_stripe_connect_account"
        case stripeInvoiceId = "stripe_invoice_id"
        case stripeInvoiceUrl = "stripe_invoice_url"
        case stripeInvoiceCreatedTimestamp = "stripe_invoice_created_timestamp"
        case stripeInvoiceCreatedByUserId = "stripe_invoice_created_by_user_id"
        case statementAmount = "statement_amount"
        case stripeInvoiceStatus = "stripe_invoice_status"
        case stripeInvoiceCompletedTimestamp = "stripe_invoice_completed_timestamp"
        case id = "_id"
    }
}