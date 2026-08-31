import Foundation

public struct InvoiceExportListItem: Codable, Hashable, Sendable {
    public let accountName: String?
    public let airbillCharge: Double
    public let airlines: [String]?
    public let awbNumbers: [String]?
    public let baseRate: Double
    public let billingPeriodEndAtTimestamp: Date
    public let billingPeriodStartAtTimestamp: Date
    public let cargoTypes: [String]?
    public let chargePerQuantity: Double?
    public let chargesSubtotal: Double
    public let currencyCode: BillingCurrencyCodeEnum1
    public let deliveryAddress: String?
    public let deliveryLocationName: String?
    public let deliveryStatus: String?
    public let deliveryStopNumber: Int?
    public let deliveryStopsOnOrder: Int?
    public let destinationIata: String?
    public let flightNumbers: [String]?
    public let invoiceApprovalTimestamp: Date?
    public let invoiceNumber: String
    public let mileageEstimated: Double?
    public let netBilling: Double
    public let offChrtReferenceId: String?
    public let orderPlacerComments: String?
    public let orderShortId: String?
    public let originIata: String?
    public let otherCharges: Double
    public let otherChargesDetail: [String]?
    public let podDate: String?
    public let podName: String?
    public let podTime: String?
    public let quantity: Int?
    public let tax1Amount: Double?
    public let tax1Description: String?
    public let tax2Amount: Double?
    public let tax2Description: String?
    public let tax3Amount: Double?
    public let tax3Description: String?
    public let totalTax: Double
    public let weightPounds: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountName: String? = nil,
        airbillCharge: Double,
        airlines: [String]? = nil,
        awbNumbers: [String]? = nil,
        baseRate: Double,
        billingPeriodEndAtTimestamp: Date,
        billingPeriodStartAtTimestamp: Date,
        cargoTypes: [String]? = nil,
        chargePerQuantity: Double? = nil,
        chargesSubtotal: Double,
        currencyCode: BillingCurrencyCodeEnum1,
        deliveryAddress: String? = nil,
        deliveryLocationName: String? = nil,
        deliveryStatus: String? = nil,
        deliveryStopNumber: Int? = nil,
        deliveryStopsOnOrder: Int? = nil,
        destinationIata: String? = nil,
        flightNumbers: [String]? = nil,
        invoiceApprovalTimestamp: Date? = nil,
        invoiceNumber: String,
        mileageEstimated: Double? = nil,
        netBilling: Double,
        offChrtReferenceId: String? = nil,
        orderPlacerComments: String? = nil,
        orderShortId: String? = nil,
        originIata: String? = nil,
        otherCharges: Double,
        otherChargesDetail: [String]? = nil,
        podDate: String? = nil,
        podName: String? = nil,
        podTime: String? = nil,
        quantity: Int? = nil,
        tax1Amount: Double? = nil,
        tax1Description: String? = nil,
        tax2Amount: Double? = nil,
        tax2Description: String? = nil,
        tax3Amount: Double? = nil,
        tax3Description: String? = nil,
        totalTax: Double,
        weightPounds: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountName = accountName
        self.airbillCharge = airbillCharge
        self.airlines = airlines
        self.awbNumbers = awbNumbers
        self.baseRate = baseRate
        self.billingPeriodEndAtTimestamp = billingPeriodEndAtTimestamp
        self.billingPeriodStartAtTimestamp = billingPeriodStartAtTimestamp
        self.cargoTypes = cargoTypes
        self.chargePerQuantity = chargePerQuantity
        self.chargesSubtotal = chargesSubtotal
        self.currencyCode = currencyCode
        self.deliveryAddress = deliveryAddress
        self.deliveryLocationName = deliveryLocationName
        self.deliveryStatus = deliveryStatus
        self.deliveryStopNumber = deliveryStopNumber
        self.deliveryStopsOnOrder = deliveryStopsOnOrder
        self.destinationIata = destinationIata
        self.flightNumbers = flightNumbers
        self.invoiceApprovalTimestamp = invoiceApprovalTimestamp
        self.invoiceNumber = invoiceNumber
        self.mileageEstimated = mileageEstimated
        self.netBilling = netBilling
        self.offChrtReferenceId = offChrtReferenceId
        self.orderPlacerComments = orderPlacerComments
        self.orderShortId = orderShortId
        self.originIata = originIata
        self.otherCharges = otherCharges
        self.otherChargesDetail = otherChargesDetail
        self.podDate = podDate
        self.podName = podName
        self.podTime = podTime
        self.quantity = quantity
        self.tax1Amount = tax1Amount
        self.tax1Description = tax1Description
        self.tax2Amount = tax2Amount
        self.tax2Description = tax2Description
        self.tax3Amount = tax3Amount
        self.tax3Description = tax3Description
        self.totalTax = totalTax
        self.weightPounds = weightPounds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountName = try container.decodeIfPresent(String.self, forKey: .accountName)
        self.airbillCharge = try container.decode(Double.self, forKey: .airbillCharge)
        self.airlines = try container.decodeIfPresent([String].self, forKey: .airlines)
        self.awbNumbers = try container.decodeIfPresent([String].self, forKey: .awbNumbers)
        self.baseRate = try container.decode(Double.self, forKey: .baseRate)
        self.billingPeriodEndAtTimestamp = try container.decode(Date.self, forKey: .billingPeriodEndAtTimestamp)
        self.billingPeriodStartAtTimestamp = try container.decode(Date.self, forKey: .billingPeriodStartAtTimestamp)
        self.cargoTypes = try container.decodeIfPresent([String].self, forKey: .cargoTypes)
        self.chargePerQuantity = try container.decodeIfPresent(Double.self, forKey: .chargePerQuantity)
        self.chargesSubtotal = try container.decode(Double.self, forKey: .chargesSubtotal)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.deliveryAddress = try container.decodeIfPresent(String.self, forKey: .deliveryAddress)
        self.deliveryLocationName = try container.decodeIfPresent(String.self, forKey: .deliveryLocationName)
        self.deliveryStatus = try container.decodeIfPresent(String.self, forKey: .deliveryStatus)
        self.deliveryStopNumber = try container.decodeIfPresent(Int.self, forKey: .deliveryStopNumber)
        self.deliveryStopsOnOrder = try container.decodeIfPresent(Int.self, forKey: .deliveryStopsOnOrder)
        self.destinationIata = try container.decodeIfPresent(String.self, forKey: .destinationIata)
        self.flightNumbers = try container.decodeIfPresent([String].self, forKey: .flightNumbers)
        self.invoiceApprovalTimestamp = try container.decodeIfPresent(Date.self, forKey: .invoiceApprovalTimestamp)
        self.invoiceNumber = try container.decode(String.self, forKey: .invoiceNumber)
        self.mileageEstimated = try container.decodeIfPresent(Double.self, forKey: .mileageEstimated)
        self.netBilling = try container.decode(Double.self, forKey: .netBilling)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
        self.orderShortId = try container.decodeIfPresent(String.self, forKey: .orderShortId)
        self.originIata = try container.decodeIfPresent(String.self, forKey: .originIata)
        self.otherCharges = try container.decode(Double.self, forKey: .otherCharges)
        self.otherChargesDetail = try container.decodeIfPresent([String].self, forKey: .otherChargesDetail)
        self.podDate = try container.decodeIfPresent(String.self, forKey: .podDate)
        self.podName = try container.decodeIfPresent(String.self, forKey: .podName)
        self.podTime = try container.decodeIfPresent(String.self, forKey: .podTime)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.tax1Amount = try container.decodeIfPresent(Double.self, forKey: .tax1Amount)
        self.tax1Description = try container.decodeIfPresent(String.self, forKey: .tax1Description)
        self.tax2Amount = try container.decodeIfPresent(Double.self, forKey: .tax2Amount)
        self.tax2Description = try container.decodeIfPresent(String.self, forKey: .tax2Description)
        self.tax3Amount = try container.decodeIfPresent(Double.self, forKey: .tax3Amount)
        self.tax3Description = try container.decodeIfPresent(String.self, forKey: .tax3Description)
        self.totalTax = try container.decode(Double.self, forKey: .totalTax)
        self.weightPounds = try container.decodeIfPresent(Double.self, forKey: .weightPounds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountName, forKey: .accountName)
        try container.encode(self.airbillCharge, forKey: .airbillCharge)
        try container.encodeIfPresent(self.airlines, forKey: .airlines)
        try container.encodeIfPresent(self.awbNumbers, forKey: .awbNumbers)
        try container.encode(self.baseRate, forKey: .baseRate)
        try container.encode(self.billingPeriodEndAtTimestamp, forKey: .billingPeriodEndAtTimestamp)
        try container.encode(self.billingPeriodStartAtTimestamp, forKey: .billingPeriodStartAtTimestamp)
        try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
        try container.encodeIfPresent(self.chargePerQuantity, forKey: .chargePerQuantity)
        try container.encode(self.chargesSubtotal, forKey: .chargesSubtotal)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.deliveryAddress, forKey: .deliveryAddress)
        try container.encodeIfPresent(self.deliveryLocationName, forKey: .deliveryLocationName)
        try container.encodeIfPresent(self.deliveryStatus, forKey: .deliveryStatus)
        try container.encodeIfPresent(self.deliveryStopNumber, forKey: .deliveryStopNumber)
        try container.encodeIfPresent(self.deliveryStopsOnOrder, forKey: .deliveryStopsOnOrder)
        try container.encodeIfPresent(self.destinationIata, forKey: .destinationIata)
        try container.encodeIfPresent(self.flightNumbers, forKey: .flightNumbers)
        try container.encodeIfPresent(self.invoiceApprovalTimestamp, forKey: .invoiceApprovalTimestamp)
        try container.encode(self.invoiceNumber, forKey: .invoiceNumber)
        try container.encodeIfPresent(self.mileageEstimated, forKey: .mileageEstimated)
        try container.encode(self.netBilling, forKey: .netBilling)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
        try container.encodeIfPresent(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.originIata, forKey: .originIata)
        try container.encode(self.otherCharges, forKey: .otherCharges)
        try container.encodeIfPresent(self.otherChargesDetail, forKey: .otherChargesDetail)
        try container.encodeIfPresent(self.podDate, forKey: .podDate)
        try container.encodeIfPresent(self.podName, forKey: .podName)
        try container.encodeIfPresent(self.podTime, forKey: .podTime)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.tax1Amount, forKey: .tax1Amount)
        try container.encodeIfPresent(self.tax1Description, forKey: .tax1Description)
        try container.encodeIfPresent(self.tax2Amount, forKey: .tax2Amount)
        try container.encodeIfPresent(self.tax2Description, forKey: .tax2Description)
        try container.encodeIfPresent(self.tax3Amount, forKey: .tax3Amount)
        try container.encodeIfPresent(self.tax3Description, forKey: .tax3Description)
        try container.encode(self.totalTax, forKey: .totalTax)
        try container.encodeIfPresent(self.weightPounds, forKey: .weightPounds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountName = "account_name"
        case airbillCharge = "airbill_charge"
        case airlines
        case awbNumbers = "awb_numbers"
        case baseRate = "base_rate"
        case billingPeriodEndAtTimestamp = "billing_period_end_at_timestamp"
        case billingPeriodStartAtTimestamp = "billing_period_start_at_timestamp"
        case cargoTypes = "cargo_types"
        case chargePerQuantity = "charge_per_quantity"
        case chargesSubtotal = "charges_subtotal"
        case currencyCode = "currency_code"
        case deliveryAddress = "delivery_address"
        case deliveryLocationName = "delivery_location_name"
        case deliveryStatus = "delivery_status"
        case deliveryStopNumber = "delivery_stop_number"
        case deliveryStopsOnOrder = "delivery_stops_on_order"
        case destinationIata = "destination_iata"
        case flightNumbers = "flight_numbers"
        case invoiceApprovalTimestamp = "invoice_approval_timestamp"
        case invoiceNumber = "invoice_number"
        case mileageEstimated = "mileage_estimated"
        case netBilling = "net_billing"
        case offChrtReferenceId = "off_chrt_reference_id"
        case orderPlacerComments = "order_placer_comments"
        case orderShortId = "order_short_id"
        case originIata = "origin_iata"
        case otherCharges = "other_charges"
        case otherChargesDetail = "other_charges_detail"
        case podDate = "pod_date"
        case podName = "pod_name"
        case podTime = "pod_time"
        case quantity
        case tax1Amount = "tax_1_amount"
        case tax1Description = "tax_1_description"
        case tax2Amount = "tax_2_amount"
        case tax2Description = "tax_2_description"
        case tax3Amount = "tax_3_amount"
        case tax3Description = "tax_3_description"
        case totalTax = "total_tax"
        case weightPounds = "weight_pounds"
    }
}