import Foundation

/// Known fields from a CXT order detail body, retaining provider fields.
public struct CxtOrderDetailResponse1: Codable, Hashable, Sendable {
    public let bol: String?
    public let caller: String?
    public let charges: Double?
    public let createdBy: String?
    public let createdWhen: [String: JSONValue]?
    public let custId: Int?
    public let customer: [String: JSONValue]?
    public let destIdIsValid: Bool?
    public let destination: [String: JSONValue]?
    public let distance: Double?
    public let forceLocationScanDelivery: String?
    public let forceLocationScanPickup: String?
    public let hasAssociatedRouteStops: Bool?
    public let id: String
    public let isParent: Bool?
    public let items: [[String: JSONValue]]?
    public let masterBol: String?
    public let notes: [[String: JSONValue]]?
    public let orderCount: Int?
    public let orderDate: [String: JSONValue]?
    public let orderStatus: [String: JSONValue]?
    public let orderType: Int?
    public let orderTypeDescription: String?
    public let origin: [String: JSONValue]?
    public let originIdIsValid: Bool?
    public let parcelType: [String: JSONValue]?
    public let parcels: [[String: JSONValue]]?
    public let pieces: Int?
    public let podRequired: Bool?
    public let reference1: String?
    public let reference2: String?
    public let requiredDriverInput: [String: JSONValue]?
    public let route: Int?
    public let routeStop: String?
    public let rowVersion: String?
    public let signatureRequired: Bool?
    public let specialInst: String?
    public let status: String?
    public let statusCodes: [[String: JSONValue]]?
    public let updatedBy: String?
    public let updatedWhen: [String: JSONValue]?
    public let weight: Double?
    public let workstation: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        bol: String? = nil,
        caller: String? = nil,
        charges: Double? = nil,
        createdBy: String? = nil,
        createdWhen: [String: JSONValue]? = nil,
        custId: Int? = nil,
        customer: [String: JSONValue]? = nil,
        destIdIsValid: Bool? = nil,
        destination: [String: JSONValue]? = nil,
        distance: Double? = nil,
        forceLocationScanDelivery: String? = nil,
        forceLocationScanPickup: String? = nil,
        hasAssociatedRouteStops: Bool? = nil,
        id: String,
        isParent: Bool? = nil,
        items: [[String: JSONValue]]? = nil,
        masterBol: String? = nil,
        notes: [[String: JSONValue]]? = nil,
        orderCount: Int? = nil,
        orderDate: [String: JSONValue]? = nil,
        orderStatus: [String: JSONValue]? = nil,
        orderType: Int? = nil,
        orderTypeDescription: String? = nil,
        origin: [String: JSONValue]? = nil,
        originIdIsValid: Bool? = nil,
        parcelType: [String: JSONValue]? = nil,
        parcels: [[String: JSONValue]]? = nil,
        pieces: Int? = nil,
        podRequired: Bool? = nil,
        reference1: String? = nil,
        reference2: String? = nil,
        requiredDriverInput: [String: JSONValue]? = nil,
        route: Int? = nil,
        routeStop: String? = nil,
        rowVersion: String? = nil,
        signatureRequired: Bool? = nil,
        specialInst: String? = nil,
        status: String? = nil,
        statusCodes: [[String: JSONValue]]? = nil,
        updatedBy: String? = nil,
        updatedWhen: [String: JSONValue]? = nil,
        weight: Double? = nil,
        workstation: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.bol = bol
        self.caller = caller
        self.charges = charges
        self.createdBy = createdBy
        self.createdWhen = createdWhen
        self.custId = custId
        self.customer = customer
        self.destIdIsValid = destIdIsValid
        self.destination = destination
        self.distance = distance
        self.forceLocationScanDelivery = forceLocationScanDelivery
        self.forceLocationScanPickup = forceLocationScanPickup
        self.hasAssociatedRouteStops = hasAssociatedRouteStops
        self.id = id
        self.isParent = isParent
        self.items = items
        self.masterBol = masterBol
        self.notes = notes
        self.orderCount = orderCount
        self.orderDate = orderDate
        self.orderStatus = orderStatus
        self.orderType = orderType
        self.orderTypeDescription = orderTypeDescription
        self.origin = origin
        self.originIdIsValid = originIdIsValid
        self.parcelType = parcelType
        self.parcels = parcels
        self.pieces = pieces
        self.podRequired = podRequired
        self.reference1 = reference1
        self.reference2 = reference2
        self.requiredDriverInput = requiredDriverInput
        self.route = route
        self.routeStop = routeStop
        self.rowVersion = rowVersion
        self.signatureRequired = signatureRequired
        self.specialInst = specialInst
        self.status = status
        self.statusCodes = statusCodes
        self.updatedBy = updatedBy
        self.updatedWhen = updatedWhen
        self.weight = weight
        self.workstation = workstation
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bol = try container.decodeIfPresent(String.self, forKey: .bol)
        self.caller = try container.decodeIfPresent(String.self, forKey: .caller)
        self.charges = try container.decodeIfPresent(Double.self, forKey: .charges)
        self.createdBy = try container.decodeIfPresent(String.self, forKey: .createdBy)
        self.createdWhen = try container.decodeIfPresent([String: JSONValue].self, forKey: .createdWhen)
        self.custId = try container.decodeIfPresent(Int.self, forKey: .custId)
        self.customer = try container.decodeIfPresent([String: JSONValue].self, forKey: .customer)
        self.destIdIsValid = try container.decodeIfPresent(Bool.self, forKey: .destIdIsValid)
        self.destination = try container.decodeIfPresent([String: JSONValue].self, forKey: .destination)
        self.distance = try container.decodeIfPresent(Double.self, forKey: .distance)
        self.forceLocationScanDelivery = try container.decodeIfPresent(String.self, forKey: .forceLocationScanDelivery)
        self.forceLocationScanPickup = try container.decodeIfPresent(String.self, forKey: .forceLocationScanPickup)
        self.hasAssociatedRouteStops = try container.decodeIfPresent(Bool.self, forKey: .hasAssociatedRouteStops)
        self.id = try container.decode(String.self, forKey: .id)
        self.isParent = try container.decodeIfPresent(Bool.self, forKey: .isParent)
        self.items = try container.decodeIfPresent([[String: JSONValue]].self, forKey: .items)
        self.masterBol = try container.decodeIfPresent(String.self, forKey: .masterBol)
        self.notes = try container.decodeIfPresent([[String: JSONValue]].self, forKey: .notes)
        self.orderCount = try container.decodeIfPresent(Int.self, forKey: .orderCount)
        self.orderDate = try container.decodeIfPresent([String: JSONValue].self, forKey: .orderDate)
        self.orderStatus = try container.decodeIfPresent([String: JSONValue].self, forKey: .orderStatus)
        self.orderType = try container.decodeIfPresent(Int.self, forKey: .orderType)
        self.orderTypeDescription = try container.decodeIfPresent(String.self, forKey: .orderTypeDescription)
        self.origin = try container.decodeIfPresent([String: JSONValue].self, forKey: .origin)
        self.originIdIsValid = try container.decodeIfPresent(Bool.self, forKey: .originIdIsValid)
        self.parcelType = try container.decodeIfPresent([String: JSONValue].self, forKey: .parcelType)
        self.parcels = try container.decodeIfPresent([[String: JSONValue]].self, forKey: .parcels)
        self.pieces = try container.decodeIfPresent(Int.self, forKey: .pieces)
        self.podRequired = try container.decodeIfPresent(Bool.self, forKey: .podRequired)
        self.reference1 = try container.decodeIfPresent(String.self, forKey: .reference1)
        self.reference2 = try container.decodeIfPresent(String.self, forKey: .reference2)
        self.requiredDriverInput = try container.decodeIfPresent([String: JSONValue].self, forKey: .requiredDriverInput)
        self.route = try container.decodeIfPresent(Int.self, forKey: .route)
        self.routeStop = try container.decodeIfPresent(String.self, forKey: .routeStop)
        self.rowVersion = try container.decodeIfPresent(String.self, forKey: .rowVersion)
        self.signatureRequired = try container.decodeIfPresent(Bool.self, forKey: .signatureRequired)
        self.specialInst = try container.decodeIfPresent(String.self, forKey: .specialInst)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.statusCodes = try container.decodeIfPresent([[String: JSONValue]].self, forKey: .statusCodes)
        self.updatedBy = try container.decodeIfPresent(String.self, forKey: .updatedBy)
        self.updatedWhen = try container.decodeIfPresent([String: JSONValue].self, forKey: .updatedWhen)
        self.weight = try container.decodeIfPresent(Double.self, forKey: .weight)
        self.workstation = try container.decodeIfPresent(String.self, forKey: .workstation)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.bol, forKey: .bol)
        try container.encodeIfPresent(self.caller, forKey: .caller)
        try container.encodeIfPresent(self.charges, forKey: .charges)
        try container.encodeIfPresent(self.createdBy, forKey: .createdBy)
        try container.encodeIfPresent(self.createdWhen, forKey: .createdWhen)
        try container.encodeIfPresent(self.custId, forKey: .custId)
        try container.encodeIfPresent(self.customer, forKey: .customer)
        try container.encodeIfPresent(self.destIdIsValid, forKey: .destIdIsValid)
        try container.encodeIfPresent(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.distance, forKey: .distance)
        try container.encodeIfPresent(self.forceLocationScanDelivery, forKey: .forceLocationScanDelivery)
        try container.encodeIfPresent(self.forceLocationScanPickup, forKey: .forceLocationScanPickup)
        try container.encodeIfPresent(self.hasAssociatedRouteStops, forKey: .hasAssociatedRouteStops)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.isParent, forKey: .isParent)
        try container.encodeIfPresent(self.items, forKey: .items)
        try container.encodeIfPresent(self.masterBol, forKey: .masterBol)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.orderCount, forKey: .orderCount)
        try container.encodeIfPresent(self.orderDate, forKey: .orderDate)
        try container.encodeIfPresent(self.orderStatus, forKey: .orderStatus)
        try container.encodeIfPresent(self.orderType, forKey: .orderType)
        try container.encodeIfPresent(self.orderTypeDescription, forKey: .orderTypeDescription)
        try container.encodeIfPresent(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.originIdIsValid, forKey: .originIdIsValid)
        try container.encodeIfPresent(self.parcelType, forKey: .parcelType)
        try container.encodeIfPresent(self.parcels, forKey: .parcels)
        try container.encodeIfPresent(self.pieces, forKey: .pieces)
        try container.encodeIfPresent(self.podRequired, forKey: .podRequired)
        try container.encodeIfPresent(self.reference1, forKey: .reference1)
        try container.encodeIfPresent(self.reference2, forKey: .reference2)
        try container.encodeIfPresent(self.requiredDriverInput, forKey: .requiredDriverInput)
        try container.encodeIfPresent(self.route, forKey: .route)
        try container.encodeIfPresent(self.routeStop, forKey: .routeStop)
        try container.encodeIfPresent(self.rowVersion, forKey: .rowVersion)
        try container.encodeIfPresent(self.signatureRequired, forKey: .signatureRequired)
        try container.encodeIfPresent(self.specialInst, forKey: .specialInst)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.statusCodes, forKey: .statusCodes)
        try container.encodeIfPresent(self.updatedBy, forKey: .updatedBy)
        try container.encodeIfPresent(self.updatedWhen, forKey: .updatedWhen)
        try container.encodeIfPresent(self.weight, forKey: .weight)
        try container.encodeIfPresent(self.workstation, forKey: .workstation)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case bol
        case caller
        case charges
        case createdBy
        case createdWhen
        case custId
        case customer
        case destIdIsValid
        case destination
        case distance
        case forceLocationScanDelivery
        case forceLocationScanPickup
        case hasAssociatedRouteStops
        case id
        case isParent
        case items
        case masterBol
        case notes
        case orderCount
        case orderDate
        case orderStatus
        case orderType
        case orderTypeDescription
        case origin
        case originIdIsValid
        case parcelType
        case parcels
        case pieces
        case podRequired
        case reference1
        case reference2
        case requiredDriverInput
        case route
        case routeStop
        case rowVersion
        case signatureRequired
        case specialInst
        case status
        case statusCodes
        case updatedBy
        case updatedWhen
        case weight
        case workstation
    }
}