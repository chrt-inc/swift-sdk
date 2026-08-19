import Foundation

/// One e-Courier order, including caller contact details and POD signoff.
///
/// `@UserGUID` and `OrderEvents` are the only attributes deliberately absent,
/// and never to be added. See the module docstring.
public struct EcourierOrderResponse1: Codable, Hashable, Sendable {
    public let amountCharged: String?
    public let auth: String?
    public let caller: String?
    public let callerEmail: String?
    public let callerPhone: String?
    public let createDate: String?
    public let createUserName: String?
    public let customerId: String?
    public let deliveredDateTime: String?
    public let dispatchDateTime: String?
    public let dueDateTime: String?
    public let invoiceStatus: String?
    public let lastChanged: String?
    public let operationalStatus: String?
    public let orderAlias: String?
    public let orderDate: String?
    public let orderGuid: String?
    public let orderId: String?
    public let orderNumber: String?
    public let orderStatus: String?
    public let pickedUpDateTime: String?
    public let pieces: String?
    public let podDateTime: String?
    public let podName: String?
    public let service: String?
    public let serviceDesc: String?
    public let siteCode: String?
    public let totalMiles: String?
    public let weight: String?
    public let customer: EcourierOrderCustomerResponse1?
    public let stops: [EcourierOrderStopResponse1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        amountCharged: String? = nil,
        auth: String? = nil,
        caller: String? = nil,
        callerEmail: String? = nil,
        callerPhone: String? = nil,
        createDate: String? = nil,
        createUserName: String? = nil,
        customerId: String? = nil,
        deliveredDateTime: String? = nil,
        dispatchDateTime: String? = nil,
        dueDateTime: String? = nil,
        invoiceStatus: String? = nil,
        lastChanged: String? = nil,
        operationalStatus: String? = nil,
        orderAlias: String? = nil,
        orderDate: String? = nil,
        orderGuid: String? = nil,
        orderId: String? = nil,
        orderNumber: String? = nil,
        orderStatus: String? = nil,
        pickedUpDateTime: String? = nil,
        pieces: String? = nil,
        podDateTime: String? = nil,
        podName: String? = nil,
        service: String? = nil,
        serviceDesc: String? = nil,
        siteCode: String? = nil,
        totalMiles: String? = nil,
        weight: String? = nil,
        customer: EcourierOrderCustomerResponse1? = nil,
        stops: [EcourierOrderStopResponse1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.amountCharged = amountCharged
        self.auth = auth
        self.caller = caller
        self.callerEmail = callerEmail
        self.callerPhone = callerPhone
        self.createDate = createDate
        self.createUserName = createUserName
        self.customerId = customerId
        self.deliveredDateTime = deliveredDateTime
        self.dispatchDateTime = dispatchDateTime
        self.dueDateTime = dueDateTime
        self.invoiceStatus = invoiceStatus
        self.lastChanged = lastChanged
        self.operationalStatus = operationalStatus
        self.orderAlias = orderAlias
        self.orderDate = orderDate
        self.orderGuid = orderGuid
        self.orderId = orderId
        self.orderNumber = orderNumber
        self.orderStatus = orderStatus
        self.pickedUpDateTime = pickedUpDateTime
        self.pieces = pieces
        self.podDateTime = podDateTime
        self.podName = podName
        self.service = service
        self.serviceDesc = serviceDesc
        self.siteCode = siteCode
        self.totalMiles = totalMiles
        self.weight = weight
        self.customer = customer
        self.stops = stops
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.amountCharged = try container.decodeIfPresent(String.self, forKey: .amountCharged)
        self.auth = try container.decodeIfPresent(String.self, forKey: .auth)
        self.caller = try container.decodeIfPresent(String.self, forKey: .caller)
        self.callerEmail = try container.decodeIfPresent(String.self, forKey: .callerEmail)
        self.callerPhone = try container.decodeIfPresent(String.self, forKey: .callerPhone)
        self.createDate = try container.decodeIfPresent(String.self, forKey: .createDate)
        self.createUserName = try container.decodeIfPresent(String.self, forKey: .createUserName)
        self.customerId = try container.decodeIfPresent(String.self, forKey: .customerId)
        self.deliveredDateTime = try container.decodeIfPresent(String.self, forKey: .deliveredDateTime)
        self.dispatchDateTime = try container.decodeIfPresent(String.self, forKey: .dispatchDateTime)
        self.dueDateTime = try container.decodeIfPresent(String.self, forKey: .dueDateTime)
        self.invoiceStatus = try container.decodeIfPresent(String.self, forKey: .invoiceStatus)
        self.lastChanged = try container.decodeIfPresent(String.self, forKey: .lastChanged)
        self.operationalStatus = try container.decodeIfPresent(String.self, forKey: .operationalStatus)
        self.orderAlias = try container.decodeIfPresent(String.self, forKey: .orderAlias)
        self.orderDate = try container.decodeIfPresent(String.self, forKey: .orderDate)
        self.orderGuid = try container.decodeIfPresent(String.self, forKey: .orderGuid)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.orderNumber = try container.decodeIfPresent(String.self, forKey: .orderNumber)
        self.orderStatus = try container.decodeIfPresent(String.self, forKey: .orderStatus)
        self.pickedUpDateTime = try container.decodeIfPresent(String.self, forKey: .pickedUpDateTime)
        self.pieces = try container.decodeIfPresent(String.self, forKey: .pieces)
        self.podDateTime = try container.decodeIfPresent(String.self, forKey: .podDateTime)
        self.podName = try container.decodeIfPresent(String.self, forKey: .podName)
        self.service = try container.decodeIfPresent(String.self, forKey: .service)
        self.serviceDesc = try container.decodeIfPresent(String.self, forKey: .serviceDesc)
        self.siteCode = try container.decodeIfPresent(String.self, forKey: .siteCode)
        self.totalMiles = try container.decodeIfPresent(String.self, forKey: .totalMiles)
        self.weight = try container.decodeIfPresent(String.self, forKey: .weight)
        self.customer = try container.decodeIfPresent(EcourierOrderCustomerResponse1.self, forKey: .customer)
        self.stops = try container.decodeIfPresent([EcourierOrderStopResponse1].self, forKey: .stops)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.amountCharged, forKey: .amountCharged)
        try container.encodeIfPresent(self.auth, forKey: .auth)
        try container.encodeIfPresent(self.caller, forKey: .caller)
        try container.encodeIfPresent(self.callerEmail, forKey: .callerEmail)
        try container.encodeIfPresent(self.callerPhone, forKey: .callerPhone)
        try container.encodeIfPresent(self.createDate, forKey: .createDate)
        try container.encodeIfPresent(self.createUserName, forKey: .createUserName)
        try container.encodeIfPresent(self.customerId, forKey: .customerId)
        try container.encodeIfPresent(self.deliveredDateTime, forKey: .deliveredDateTime)
        try container.encodeIfPresent(self.dispatchDateTime, forKey: .dispatchDateTime)
        try container.encodeIfPresent(self.dueDateTime, forKey: .dueDateTime)
        try container.encodeIfPresent(self.invoiceStatus, forKey: .invoiceStatus)
        try container.encodeIfPresent(self.lastChanged, forKey: .lastChanged)
        try container.encodeIfPresent(self.operationalStatus, forKey: .operationalStatus)
        try container.encodeIfPresent(self.orderAlias, forKey: .orderAlias)
        try container.encodeIfPresent(self.orderDate, forKey: .orderDate)
        try container.encodeIfPresent(self.orderGuid, forKey: .orderGuid)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderNumber, forKey: .orderNumber)
        try container.encodeIfPresent(self.orderStatus, forKey: .orderStatus)
        try container.encodeIfPresent(self.pickedUpDateTime, forKey: .pickedUpDateTime)
        try container.encodeIfPresent(self.pieces, forKey: .pieces)
        try container.encodeIfPresent(self.podDateTime, forKey: .podDateTime)
        try container.encodeIfPresent(self.podName, forKey: .podName)
        try container.encodeIfPresent(self.service, forKey: .service)
        try container.encodeIfPresent(self.serviceDesc, forKey: .serviceDesc)
        try container.encodeIfPresent(self.siteCode, forKey: .siteCode)
        try container.encodeIfPresent(self.totalMiles, forKey: .totalMiles)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.customer, forKey: .customer)
        try container.encodeIfPresent(self.stops, forKey: .stops)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case amountCharged = "@AmountCharged"
        case auth = "@Auth"
        case caller = "@Caller"
        case callerEmail = "@CallerEmail"
        case callerPhone = "@CallerPhone"
        case createDate = "@CreateDate"
        case createUserName = "@CreateUserName"
        case customerId = "@CustomerID"
        case deliveredDateTime = "@DeliveredDateTime"
        case dispatchDateTime = "@DispatchDateTime"
        case dueDateTime = "@DueDateTime"
        case invoiceStatus = "@InvoiceStatus"
        case lastChanged = "@LastChanged"
        case operationalStatus = "@OperationalStatus"
        case orderAlias = "@OrderAlias"
        case orderDate = "@OrderDate"
        case orderGuid = "@OrderGUID"
        case orderId = "@OrderID"
        case orderNumber = "@OrderNumber"
        case orderStatus = "@OrderStatus"
        case pickedUpDateTime = "@PickedUpDateTime"
        case pieces = "@Pieces"
        case podDateTime = "@PodDateTime"
        case podName = "@PodName"
        case service = "@Service"
        case serviceDesc = "@ServiceDesc"
        case siteCode = "@SiteCode"
        case totalMiles = "@TotalMiles"
        case weight = "@Weight"
        case customer = "Customer"
        case stops = "Stops"
    }
}