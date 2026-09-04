import Foundation

public struct InvoiceLineItemExportListItem: Codable, Hashable, Sendable {
    public let accountName: String?
    public let airlines: [String]?
    public let awbNumbers: [String]?
    public let billingPeriodEndAtTimestamp: Date?
    public let billingPeriodStartAtTimestamp: Date?
    public let cargoDescriptions: [String]?
    public let cargoQuantity: Int?
    public let cargoTypes: [String]?
    public let counterpartyName: String?
    public let currencyCode: BillingCurrencyCodeEnum1
    public let deliveryAddress: String?
    public let deliveryLocationName: String?
    public let deliveryStatus: String?
    public let deliveryStopNumber: Int?
    public let deliveryStopsOnOrder: Int?
    public let destinationIata: String?
    public let flightNumbers: [String]?
    public let invoiceApprovalTimestamp: Date?
    public let invoiceLineItemId: String
    public let invoiceLineItemStatus: InvoiceLineItemStatusEnum1
    public let invoiceNumber: String?
    public let invoiceStatus: InvoiceStatusEnum1?
    public let invoiceType: InvoiceTypeEnum1
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let lineItemAwbNumber: String?
    public let lineItemDescription: String
    public let lineItemQuantity: Double
    public let lineItemTotalAmount: Double
    public let lineItemType: InvoiceLineItemTypeEnum1
    public let lineItemUnit: InvoiceLineItemUnitEnum1?
    public let lineItemUnitPrice: Double
    public let mileageEstimated: Double?
    public let offChrtReferenceId: String?
    public let orderPlacerComments: String?
    public let orderShortId: String?
    public let originIata: String?
    public let podAtTimestamp: Date?
    public let podName: String?
    public let taxPercentage: Double?
    public let weightPounds: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountName: String? = nil,
        airlines: [String]? = nil,
        awbNumbers: [String]? = nil,
        billingPeriodEndAtTimestamp: Date? = nil,
        billingPeriodStartAtTimestamp: Date? = nil,
        cargoDescriptions: [String]? = nil,
        cargoQuantity: Int? = nil,
        cargoTypes: [String]? = nil,
        counterpartyName: String? = nil,
        currencyCode: BillingCurrencyCodeEnum1,
        deliveryAddress: String? = nil,
        deliveryLocationName: String? = nil,
        deliveryStatus: String? = nil,
        deliveryStopNumber: Int? = nil,
        deliveryStopsOnOrder: Int? = nil,
        destinationIata: String? = nil,
        flightNumbers: [String]? = nil,
        invoiceApprovalTimestamp: Date? = nil,
        invoiceLineItemId: String,
        invoiceLineItemStatus: InvoiceLineItemStatusEnum1,
        invoiceNumber: String? = nil,
        invoiceStatus: InvoiceStatusEnum1? = nil,
        invoiceType: InvoiceTypeEnum1,
        lineItemAwbNumber: String? = nil,
        lineItemDescription: String,
        lineItemQuantity: Double,
        lineItemTotalAmount: Double,
        lineItemType: InvoiceLineItemTypeEnum1,
        lineItemUnit: InvoiceLineItemUnitEnum1? = nil,
        lineItemUnitPrice: Double,
        mileageEstimated: Double? = nil,
        offChrtReferenceId: String? = nil,
        orderPlacerComments: String? = nil,
        orderShortId: String? = nil,
        originIata: String? = nil,
        podAtTimestamp: Date? = nil,
        podName: String? = nil,
        taxPercentage: Double? = nil,
        weightPounds: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountName = accountName
        self.airlines = airlines
        self.awbNumbers = awbNumbers
        self.billingPeriodEndAtTimestamp = billingPeriodEndAtTimestamp
        self.billingPeriodStartAtTimestamp = billingPeriodStartAtTimestamp
        self.cargoDescriptions = cargoDescriptions
        self.cargoQuantity = cargoQuantity
        self.cargoTypes = cargoTypes
        self.counterpartyName = counterpartyName
        self.currencyCode = currencyCode
        self.deliveryAddress = deliveryAddress
        self.deliveryLocationName = deliveryLocationName
        self.deliveryStatus = deliveryStatus
        self.deliveryStopNumber = deliveryStopNumber
        self.deliveryStopsOnOrder = deliveryStopsOnOrder
        self.destinationIata = destinationIata
        self.flightNumbers = flightNumbers
        self.invoiceApprovalTimestamp = invoiceApprovalTimestamp
        self.invoiceLineItemId = invoiceLineItemId
        self.invoiceLineItemStatus = invoiceLineItemStatus
        self.invoiceNumber = invoiceNumber
        self.invoiceStatus = invoiceStatus
        self.invoiceType = invoiceType
        self.lineItemAwbNumber = lineItemAwbNumber
        self.lineItemDescription = lineItemDescription
        self.lineItemQuantity = lineItemQuantity
        self.lineItemTotalAmount = lineItemTotalAmount
        self.lineItemType = lineItemType
        self.lineItemUnit = lineItemUnit
        self.lineItemUnitPrice = lineItemUnitPrice
        self.mileageEstimated = mileageEstimated
        self.offChrtReferenceId = offChrtReferenceId
        self.orderPlacerComments = orderPlacerComments
        self.orderShortId = orderShortId
        self.originIata = originIata
        self.podAtTimestamp = podAtTimestamp
        self.podName = podName
        self.taxPercentage = taxPercentage
        self.weightPounds = weightPounds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountName = try container.decodeIfPresent(String.self, forKey: .accountName)
        self.airlines = try container.decodeIfPresent([String].self, forKey: .airlines)
        self.awbNumbers = try container.decodeIfPresent([String].self, forKey: .awbNumbers)
        self.billingPeriodEndAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .billingPeriodEndAtTimestamp)
        self.billingPeriodStartAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .billingPeriodStartAtTimestamp)
        self.cargoDescriptions = try container.decodeIfPresent([String].self, forKey: .cargoDescriptions)
        self.cargoQuantity = try container.decodeIfPresent(Int.self, forKey: .cargoQuantity)
        self.cargoTypes = try container.decodeIfPresent([String].self, forKey: .cargoTypes)
        self.counterpartyName = try container.decodeIfPresent(String.self, forKey: .counterpartyName)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.deliveryAddress = try container.decodeIfPresent(String.self, forKey: .deliveryAddress)
        self.deliveryLocationName = try container.decodeIfPresent(String.self, forKey: .deliveryLocationName)
        self.deliveryStatus = try container.decodeIfPresent(String.self, forKey: .deliveryStatus)
        self.deliveryStopNumber = try container.decodeIfPresent(Int.self, forKey: .deliveryStopNumber)
        self.deliveryStopsOnOrder = try container.decodeIfPresent(Int.self, forKey: .deliveryStopsOnOrder)
        self.destinationIata = try container.decodeIfPresent(String.self, forKey: .destinationIata)
        self.flightNumbers = try container.decodeIfPresent([String].self, forKey: .flightNumbers)
        self.invoiceApprovalTimestamp = try container.decodeIfPresent(Date.self, forKey: .invoiceApprovalTimestamp)
        self.invoiceLineItemId = try container.decode(String.self, forKey: .invoiceLineItemId)
        self.invoiceLineItemStatus = try container.decode(InvoiceLineItemStatusEnum1.self, forKey: .invoiceLineItemStatus)
        self.invoiceNumber = try container.decodeIfPresent(String.self, forKey: .invoiceNumber)
        self.invoiceStatus = try container.decodeIfPresent(InvoiceStatusEnum1.self, forKey: .invoiceStatus)
        self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
        self.lineItemAwbNumber = try container.decodeIfPresent(String.self, forKey: .lineItemAwbNumber)
        self.lineItemDescription = try container.decode(String.self, forKey: .lineItemDescription)
        self.lineItemQuantity = try container.decode(Double.self, forKey: .lineItemQuantity)
        self.lineItemTotalAmount = try container.decode(Double.self, forKey: .lineItemTotalAmount)
        self.lineItemType = try container.decode(InvoiceLineItemTypeEnum1.self, forKey: .lineItemType)
        self.lineItemUnit = try container.decodeIfPresent(InvoiceLineItemUnitEnum1.self, forKey: .lineItemUnit)
        self.lineItemUnitPrice = try container.decode(Double.self, forKey: .lineItemUnitPrice)
        self.mileageEstimated = try container.decodeIfPresent(Double.self, forKey: .mileageEstimated)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.orderShortId = try container.decodeIfPresent(String.self, forKey: .orderShortId)
        self.originIata = try container.decodeIfPresent(String.self, forKey: .originIata)
        self.podAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .podAtTimestamp)
        self.podName = try container.decodeIfPresent(String.self, forKey: .podName)
        self.taxPercentage = try container.decodeIfPresent(Double.self, forKey: .taxPercentage)
        self.weightPounds = try container.decodeIfPresent(Double.self, forKey: .weightPounds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountName, forKey: .accountName)
        try container.encodeIfPresent(self.airlines, forKey: .airlines)
        try container.encodeIfPresent(self.awbNumbers, forKey: .awbNumbers)
        try container.encodeIfPresent(self.billingPeriodEndAtTimestamp, forKey: .billingPeriodEndAtTimestamp)
        try container.encodeIfPresent(self.billingPeriodStartAtTimestamp, forKey: .billingPeriodStartAtTimestamp)
        try container.encodeIfPresent(self.cargoDescriptions, forKey: .cargoDescriptions)
        try container.encodeIfPresent(self.cargoQuantity, forKey: .cargoQuantity)
        try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
        try container.encodeIfPresent(self.counterpartyName, forKey: .counterpartyName)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.deliveryAddress, forKey: .deliveryAddress)
        try container.encodeIfPresent(self.deliveryLocationName, forKey: .deliveryLocationName)
        try container.encodeIfPresent(self.deliveryStatus, forKey: .deliveryStatus)
        try container.encodeIfPresent(self.deliveryStopNumber, forKey: .deliveryStopNumber)
        try container.encodeIfPresent(self.deliveryStopsOnOrder, forKey: .deliveryStopsOnOrder)
        try container.encodeIfPresent(self.destinationIata, forKey: .destinationIata)
        try container.encodeIfPresent(self.flightNumbers, forKey: .flightNumbers)
        try container.encodeIfPresent(self.invoiceApprovalTimestamp, forKey: .invoiceApprovalTimestamp)
        try container.encode(self.invoiceLineItemId, forKey: .invoiceLineItemId)
        try container.encode(self.invoiceLineItemStatus, forKey: .invoiceLineItemStatus)
        try container.encodeIfPresent(self.invoiceNumber, forKey: .invoiceNumber)
        try container.encodeIfPresent(self.invoiceStatus, forKey: .invoiceStatus)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encodeIfPresent(self.lineItemAwbNumber, forKey: .lineItemAwbNumber)
        try container.encode(self.lineItemDescription, forKey: .lineItemDescription)
        try container.encode(self.lineItemQuantity, forKey: .lineItemQuantity)
        try container.encode(self.lineItemTotalAmount, forKey: .lineItemTotalAmount)
        try container.encode(self.lineItemType, forKey: .lineItemType)
        try container.encodeIfPresent(self.lineItemUnit, forKey: .lineItemUnit)
        try container.encode(self.lineItemUnitPrice, forKey: .lineItemUnitPrice)
        try container.encodeIfPresent(self.mileageEstimated, forKey: .mileageEstimated)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encodeIfPresent(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.originIata, forKey: .originIata)
        try container.encodeIfPresent(self.podAtTimestamp, forKey: .podAtTimestamp)
        try container.encodeIfPresent(self.podName, forKey: .podName)
        try container.encodeIfPresent(self.taxPercentage, forKey: .taxPercentage)
        try container.encodeIfPresent(self.weightPounds, forKey: .weightPounds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountName = "account_name"
        case airlines
        case awbNumbers = "awb_numbers"
        case billingPeriodEndAtTimestamp = "billing_period_end_at_timestamp"
        case billingPeriodStartAtTimestamp = "billing_period_start_at_timestamp"
        case cargoDescriptions = "cargo_descriptions"
        case cargoQuantity = "cargo_quantity"
        case cargoTypes = "cargo_types"
        case counterpartyName = "counterparty_name"
        case currencyCode = "currency_code"
        case deliveryAddress = "delivery_address"
        case deliveryLocationName = "delivery_location_name"
        case deliveryStatus = "delivery_status"
        case deliveryStopNumber = "delivery_stop_number"
        case deliveryStopsOnOrder = "delivery_stops_on_order"
        case destinationIata = "destination_iata"
        case flightNumbers = "flight_numbers"
        case invoiceApprovalTimestamp = "invoice_approval_timestamp"
        case invoiceLineItemId = "invoice_line_item_id"
        case invoiceLineItemStatus = "invoice_line_item_status"
        case invoiceNumber = "invoice_number"
        case invoiceStatus = "invoice_status"
        case invoiceType = "invoice_type"
        case lineItemAwbNumber = "line_item_awb_number"
        case lineItemDescription = "line_item_description"
        case lineItemQuantity = "line_item_quantity"
        case lineItemTotalAmount = "line_item_total_amount"
        case lineItemType = "line_item_type"
        case lineItemUnit = "line_item_unit"
        case lineItemUnitPrice = "line_item_unit_price"
        case mileageEstimated = "mileage_estimated"
        case offChrtReferenceId = "off_chrt_reference_id"
        case orderPlacerComments = "order_placer_comments"
        case orderShortId = "order_short_id"
        case originIata = "origin_iata"
        case podAtTimestamp = "pod_at_timestamp"
        case podName = "pod_name"
        case taxPercentage = "tax_percentage"
        case weightPounds = "weight_pounds"
    }
}