import Foundation

/// Known fields from an OnTime360 order, retaining all other fields.
public struct OnTime360OrderResponse1: Codable, Hashable, Sendable {
    public let basePrice: Double?
    public let codAmount: Double?
    public let collectionArrivalDate: String?
    public let collectionArrivalWindow: OnTime360TimeWindowResponse1?
    public let collectionAssignedDriver: String?
    public let collectionContactName: String?
    public let collectionLocation: OnTime360LocationResponse1?
    public let collectionSignatureRequired: Bool?
    public let comments: String?
    public let customer: String?
    public let dateSubmitted: String?
    public let declaredValue: Double?
    public let deliveryArrivalDate: String?
    public let deliveryArrivalWindow: OnTime360TimeWindowResponse1?
    public let deliveryAssignedDriver: String?
    public let deliveryContactName: String?
    public let deliveryLocation: OnTime360LocationResponse1?
    public let deliverySignatureRequired: Bool?
    public let description: String?
    public let dispatcher: String?
    public let distance: Double?
    public let driverCoordinatesOnCollection: String?
    public let driverCoordinatesOnDelivery: String?
    public let driverCurrentlyAssigned: String?
    public let height: Double?
    public let id: String
    public let incomingTrackingNumber: String?
    public let items: [OnTime360ItemResponse1]?
    public let length: Double?
    public let outgoingTrackingNumber: String?
    public let priceAdjustment: Double?
    public let priceModifierTotalCost: Double?
    public let priceModifiers: [OnTime360PriceModifierResponse1]?
    public let purchaseOrderNumber: String?
    public let quantity: Int?
    public let referenceNumber: String?
    public let requestedBy: String?
    public let routeName: String?
    public let status: OnTime360StatusResponse1?
    public let statusLevel: OnTime360StatusLevelEnum1?
    public let submissionSource: String?
    public let subtotal: Double?
    public let taxTotal: Double?
    public let totalCost: Double?
    public let trackingNumber: String?
    public let weight: Double?
    public let width: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        basePrice: Double? = nil,
        codAmount: Double? = nil,
        collectionArrivalDate: String? = nil,
        collectionArrivalWindow: OnTime360TimeWindowResponse1? = nil,
        collectionAssignedDriver: String? = nil,
        collectionContactName: String? = nil,
        collectionLocation: OnTime360LocationResponse1? = nil,
        collectionSignatureRequired: Bool? = nil,
        comments: String? = nil,
        customer: String? = nil,
        dateSubmitted: String? = nil,
        declaredValue: Double? = nil,
        deliveryArrivalDate: String? = nil,
        deliveryArrivalWindow: OnTime360TimeWindowResponse1? = nil,
        deliveryAssignedDriver: String? = nil,
        deliveryContactName: String? = nil,
        deliveryLocation: OnTime360LocationResponse1? = nil,
        deliverySignatureRequired: Bool? = nil,
        description: String? = nil,
        dispatcher: String? = nil,
        distance: Double? = nil,
        driverCoordinatesOnCollection: String? = nil,
        driverCoordinatesOnDelivery: String? = nil,
        driverCurrentlyAssigned: String? = nil,
        height: Double? = nil,
        id: String,
        incomingTrackingNumber: String? = nil,
        items: [OnTime360ItemResponse1]? = nil,
        length: Double? = nil,
        outgoingTrackingNumber: String? = nil,
        priceAdjustment: Double? = nil,
        priceModifierTotalCost: Double? = nil,
        priceModifiers: [OnTime360PriceModifierResponse1]? = nil,
        purchaseOrderNumber: String? = nil,
        quantity: Int? = nil,
        referenceNumber: String? = nil,
        requestedBy: String? = nil,
        routeName: String? = nil,
        status: OnTime360StatusResponse1? = nil,
        statusLevel: OnTime360StatusLevelEnum1? = nil,
        submissionSource: String? = nil,
        subtotal: Double? = nil,
        taxTotal: Double? = nil,
        totalCost: Double? = nil,
        trackingNumber: String? = nil,
        weight: Double? = nil,
        width: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.basePrice = basePrice
        self.codAmount = codAmount
        self.collectionArrivalDate = collectionArrivalDate
        self.collectionArrivalWindow = collectionArrivalWindow
        self.collectionAssignedDriver = collectionAssignedDriver
        self.collectionContactName = collectionContactName
        self.collectionLocation = collectionLocation
        self.collectionSignatureRequired = collectionSignatureRequired
        self.comments = comments
        self.customer = customer
        self.dateSubmitted = dateSubmitted
        self.declaredValue = declaredValue
        self.deliveryArrivalDate = deliveryArrivalDate
        self.deliveryArrivalWindow = deliveryArrivalWindow
        self.deliveryAssignedDriver = deliveryAssignedDriver
        self.deliveryContactName = deliveryContactName
        self.deliveryLocation = deliveryLocation
        self.deliverySignatureRequired = deliverySignatureRequired
        self.description = description
        self.dispatcher = dispatcher
        self.distance = distance
        self.driverCoordinatesOnCollection = driverCoordinatesOnCollection
        self.driverCoordinatesOnDelivery = driverCoordinatesOnDelivery
        self.driverCurrentlyAssigned = driverCurrentlyAssigned
        self.height = height
        self.id = id
        self.incomingTrackingNumber = incomingTrackingNumber
        self.items = items
        self.length = length
        self.outgoingTrackingNumber = outgoingTrackingNumber
        self.priceAdjustment = priceAdjustment
        self.priceModifierTotalCost = priceModifierTotalCost
        self.priceModifiers = priceModifiers
        self.purchaseOrderNumber = purchaseOrderNumber
        self.quantity = quantity
        self.referenceNumber = referenceNumber
        self.requestedBy = requestedBy
        self.routeName = routeName
        self.status = status
        self.statusLevel = statusLevel
        self.submissionSource = submissionSource
        self.subtotal = subtotal
        self.taxTotal = taxTotal
        self.totalCost = totalCost
        self.trackingNumber = trackingNumber
        self.weight = weight
        self.width = width
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.basePrice = try container.decodeIfPresent(Double.self, forKey: .basePrice)
        self.codAmount = try container.decodeIfPresent(Double.self, forKey: .codAmount)
        self.collectionArrivalDate = try container.decodeIfPresent(String.self, forKey: .collectionArrivalDate)
        self.collectionArrivalWindow = try container.decodeIfPresent(OnTime360TimeWindowResponse1.self, forKey: .collectionArrivalWindow)
        self.collectionAssignedDriver = try container.decodeIfPresent(String.self, forKey: .collectionAssignedDriver)
        self.collectionContactName = try container.decodeIfPresent(String.self, forKey: .collectionContactName)
        self.collectionLocation = try container.decodeIfPresent(OnTime360LocationResponse1.self, forKey: .collectionLocation)
        self.collectionSignatureRequired = try container.decodeIfPresent(Bool.self, forKey: .collectionSignatureRequired)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.customer = try container.decodeIfPresent(String.self, forKey: .customer)
        self.dateSubmitted = try container.decodeIfPresent(String.self, forKey: .dateSubmitted)
        self.declaredValue = try container.decodeIfPresent(Double.self, forKey: .declaredValue)
        self.deliveryArrivalDate = try container.decodeIfPresent(String.self, forKey: .deliveryArrivalDate)
        self.deliveryArrivalWindow = try container.decodeIfPresent(OnTime360TimeWindowResponse1.self, forKey: .deliveryArrivalWindow)
        self.deliveryAssignedDriver = try container.decodeIfPresent(String.self, forKey: .deliveryAssignedDriver)
        self.deliveryContactName = try container.decodeIfPresent(String.self, forKey: .deliveryContactName)
        self.deliveryLocation = try container.decodeIfPresent(OnTime360LocationResponse1.self, forKey: .deliveryLocation)
        self.deliverySignatureRequired = try container.decodeIfPresent(Bool.self, forKey: .deliverySignatureRequired)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.dispatcher = try container.decodeIfPresent(String.self, forKey: .dispatcher)
        self.distance = try container.decodeIfPresent(Double.self, forKey: .distance)
        self.driverCoordinatesOnCollection = try container.decodeIfPresent(String.self, forKey: .driverCoordinatesOnCollection)
        self.driverCoordinatesOnDelivery = try container.decodeIfPresent(String.self, forKey: .driverCoordinatesOnDelivery)
        self.driverCurrentlyAssigned = try container.decodeIfPresent(String.self, forKey: .driverCurrentlyAssigned)
        self.height = try container.decodeIfPresent(Double.self, forKey: .height)
        self.id = try container.decode(String.self, forKey: .id)
        self.incomingTrackingNumber = try container.decodeIfPresent(String.self, forKey: .incomingTrackingNumber)
        self.items = try container.decodeIfPresent([OnTime360ItemResponse1].self, forKey: .items)
        self.length = try container.decodeIfPresent(Double.self, forKey: .length)
        self.outgoingTrackingNumber = try container.decodeIfPresent(String.self, forKey: .outgoingTrackingNumber)
        self.priceAdjustment = try container.decodeIfPresent(Double.self, forKey: .priceAdjustment)
        self.priceModifierTotalCost = try container.decodeIfPresent(Double.self, forKey: .priceModifierTotalCost)
        self.priceModifiers = try container.decodeIfPresent([OnTime360PriceModifierResponse1].self, forKey: .priceModifiers)
        self.purchaseOrderNumber = try container.decodeIfPresent(String.self, forKey: .purchaseOrderNumber)
        self.quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
        self.referenceNumber = try container.decodeIfPresent(String.self, forKey: .referenceNumber)
        self.requestedBy = try container.decodeIfPresent(String.self, forKey: .requestedBy)
        self.routeName = try container.decodeIfPresent(String.self, forKey: .routeName)
        self.status = try container.decodeIfPresent(OnTime360StatusResponse1.self, forKey: .status)
        self.statusLevel = try container.decodeIfPresent(OnTime360StatusLevelEnum1.self, forKey: .statusLevel)
        self.submissionSource = try container.decodeIfPresent(String.self, forKey: .submissionSource)
        self.subtotal = try container.decodeIfPresent(Double.self, forKey: .subtotal)
        self.taxTotal = try container.decodeIfPresent(Double.self, forKey: .taxTotal)
        self.totalCost = try container.decodeIfPresent(Double.self, forKey: .totalCost)
        self.trackingNumber = try container.decodeIfPresent(String.self, forKey: .trackingNumber)
        self.weight = try container.decodeIfPresent(Double.self, forKey: .weight)
        self.width = try container.decodeIfPresent(Double.self, forKey: .width)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.basePrice, forKey: .basePrice)
        try container.encodeIfPresent(self.codAmount, forKey: .codAmount)
        try container.encodeIfPresent(self.collectionArrivalDate, forKey: .collectionArrivalDate)
        try container.encodeIfPresent(self.collectionArrivalWindow, forKey: .collectionArrivalWindow)
        try container.encodeIfPresent(self.collectionAssignedDriver, forKey: .collectionAssignedDriver)
        try container.encodeIfPresent(self.collectionContactName, forKey: .collectionContactName)
        try container.encodeIfPresent(self.collectionLocation, forKey: .collectionLocation)
        try container.encodeIfPresent(self.collectionSignatureRequired, forKey: .collectionSignatureRequired)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.customer, forKey: .customer)
        try container.encodeIfPresent(self.dateSubmitted, forKey: .dateSubmitted)
        try container.encodeIfPresent(self.declaredValue, forKey: .declaredValue)
        try container.encodeIfPresent(self.deliveryArrivalDate, forKey: .deliveryArrivalDate)
        try container.encodeIfPresent(self.deliveryArrivalWindow, forKey: .deliveryArrivalWindow)
        try container.encodeIfPresent(self.deliveryAssignedDriver, forKey: .deliveryAssignedDriver)
        try container.encodeIfPresent(self.deliveryContactName, forKey: .deliveryContactName)
        try container.encodeIfPresent(self.deliveryLocation, forKey: .deliveryLocation)
        try container.encodeIfPresent(self.deliverySignatureRequired, forKey: .deliverySignatureRequired)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.dispatcher, forKey: .dispatcher)
        try container.encodeIfPresent(self.distance, forKey: .distance)
        try container.encodeIfPresent(self.driverCoordinatesOnCollection, forKey: .driverCoordinatesOnCollection)
        try container.encodeIfPresent(self.driverCoordinatesOnDelivery, forKey: .driverCoordinatesOnDelivery)
        try container.encodeIfPresent(self.driverCurrentlyAssigned, forKey: .driverCurrentlyAssigned)
        try container.encodeIfPresent(self.height, forKey: .height)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.incomingTrackingNumber, forKey: .incomingTrackingNumber)
        try container.encodeIfPresent(self.items, forKey: .items)
        try container.encodeIfPresent(self.length, forKey: .length)
        try container.encodeIfPresent(self.outgoingTrackingNumber, forKey: .outgoingTrackingNumber)
        try container.encodeIfPresent(self.priceAdjustment, forKey: .priceAdjustment)
        try container.encodeIfPresent(self.priceModifierTotalCost, forKey: .priceModifierTotalCost)
        try container.encodeIfPresent(self.priceModifiers, forKey: .priceModifiers)
        try container.encodeIfPresent(self.purchaseOrderNumber, forKey: .purchaseOrderNumber)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.referenceNumber, forKey: .referenceNumber)
        try container.encodeIfPresent(self.requestedBy, forKey: .requestedBy)
        try container.encodeIfPresent(self.routeName, forKey: .routeName)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.statusLevel, forKey: .statusLevel)
        try container.encodeIfPresent(self.submissionSource, forKey: .submissionSource)
        try container.encodeIfPresent(self.subtotal, forKey: .subtotal)
        try container.encodeIfPresent(self.taxTotal, forKey: .taxTotal)
        try container.encodeIfPresent(self.totalCost, forKey: .totalCost)
        try container.encodeIfPresent(self.trackingNumber, forKey: .trackingNumber)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.width, forKey: .width)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case basePrice = "BasePrice"
        case codAmount = "CODAmount"
        case collectionArrivalDate = "CollectionArrivalDate"
        case collectionArrivalWindow = "CollectionArrivalWindow"
        case collectionAssignedDriver = "CollectionAssignedDriver"
        case collectionContactName = "CollectionContactName"
        case collectionLocation = "CollectionLocation"
        case collectionSignatureRequired = "CollectionSignatureRequired"
        case comments = "Comments"
        case customer = "Customer"
        case dateSubmitted = "DateSubmitted"
        case declaredValue = "DeclaredValue"
        case deliveryArrivalDate = "DeliveryArrivalDate"
        case deliveryArrivalWindow = "DeliveryArrivalWindow"
        case deliveryAssignedDriver = "DeliveryAssignedDriver"
        case deliveryContactName = "DeliveryContactName"
        case deliveryLocation = "DeliveryLocation"
        case deliverySignatureRequired = "DeliverySignatureRequired"
        case description = "Description"
        case dispatcher = "Dispatcher"
        case distance = "Distance"
        case driverCoordinatesOnCollection = "DriverCoordinatesOnCollection"
        case driverCoordinatesOnDelivery = "DriverCoordinatesOnDelivery"
        case driverCurrentlyAssigned = "DriverCurrentlyAssigned"
        case height = "Height"
        case id = "ID"
        case incomingTrackingNumber = "IncomingTrackingNumber"
        case items = "Items"
        case length = "Length"
        case outgoingTrackingNumber = "OutgoingTrackingNumber"
        case priceAdjustment = "PriceAdjustment"
        case priceModifierTotalCost = "PriceModifierTotalCost"
        case priceModifiers = "PriceModifiers"
        case purchaseOrderNumber = "PurchaseOrderNumber"
        case quantity = "Quantity"
        case referenceNumber = "ReferenceNumber"
        case requestedBy = "RequestedBy"
        case routeName = "RouteName"
        case status = "Status"
        case statusLevel = "StatusLevel"
        case submissionSource = "SubmissionSource"
        case subtotal = "Subtotal"
        case taxTotal = "TaxTotal"
        case totalCost = "TotalCost"
        case trackingNumber = "TrackingNumber"
        case weight = "Weight"
        case width = "Width"
    }
}