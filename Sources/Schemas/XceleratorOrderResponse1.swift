import Foundation

/// Known fields from an Axis v3 or v4 order, retaining all other fields.
public struct XceleratorOrderResponse1: Codable, Hashable, Sendable {
    public let accountNo: String?
    public let afterHoursCharge: Double?
    public let codCharge: Double?
    public let clientRefNo: String?
    public let clientRefNo2: String?
    public let clientRefNo3: String?
    public let clientRefNo4: String?
    public let creationUtc: String?
    public let dCity: String?
    public let dCoName: String?
    public let dContact: String?
    public let dLatitude: Double?
    public let dLongitude: Double?
    public let dState: String?
    public let dStreet: String?
    public let dStreet2: String?
    public let dTimeZoneText: String?
    public let dZip: String?
    public let declaredValueCharge: Double?
    public let deliveryArrival: String?
    public let deliveryDeparture: String?
    public let deliveryTargetFrom: String?
    public let deliveryTargetTo: String?
    public let grandTotal: Double?
    public let hasPoDsignature: Bool?
    public let hasPoPsignature: Bool?
    public let hasVpod: Bool?
    public let hasVpop: Bool?
    public let hourlyCharge: Double?
    public let mileageTotal: Double?
    public let miscCharge: Double?
    public let orderCharge: Double?
    public let orderExtras: [XceleratorOrderExtraResponse1]?
    public let orderPackages: [XceleratorOrderPackageResponse1]?
    public let orderTrackingId: String
    public let orderType: String?
    public let pCity: String?
    public let pCoName: String?
    public let pContact: String?
    public let pLatitude: Double?
    public let pLongitude: Double?
    public let poDcompletion: String?
    public let poDname: String?
    public let poPname: String?
    public let pState: String?
    public let pStreet: String?
    public let pStreet2: String?
    public let pTimeZoneText: String?
    public let pZip: String?
    public let packageCharge: Double?
    public let pickupArrival: String?
    public let pickupDeparture: String?
    public let pickupTargetFrom: String?
    public let pickupTargetTo: String?
    public let serviceName: String?
    public let status: String?
    public let stopOffCharge: Double?
    public let subtotal: Double?
    public let tax1Amount: Double?
    public let tax2Amount: Double?
    public let tollCharge: Double?
    public let totalCharge: Double?
    public let totalExtras: Double?
    public let totalSurcharges: Double?
    public let trackingKey: String?
    public let vehicleName: String?
    public let waitTimeCharge: Double?
    public let warehousingCharge: Double?
    public let weightCharge: Double?
    public let oDate: String?
    public let sWeight: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountNo: String? = nil,
        afterHoursCharge: Double? = nil,
        codCharge: Double? = nil,
        clientRefNo: String? = nil,
        clientRefNo2: String? = nil,
        clientRefNo3: String? = nil,
        clientRefNo4: String? = nil,
        creationUtc: String? = nil,
        dCity: String? = nil,
        dCoName: String? = nil,
        dContact: String? = nil,
        dLatitude: Double? = nil,
        dLongitude: Double? = nil,
        dState: String? = nil,
        dStreet: String? = nil,
        dStreet2: String? = nil,
        dTimeZoneText: String? = nil,
        dZip: String? = nil,
        declaredValueCharge: Double? = nil,
        deliveryArrival: String? = nil,
        deliveryDeparture: String? = nil,
        deliveryTargetFrom: String? = nil,
        deliveryTargetTo: String? = nil,
        grandTotal: Double? = nil,
        hasPoDsignature: Bool? = nil,
        hasPoPsignature: Bool? = nil,
        hasVpod: Bool? = nil,
        hasVpop: Bool? = nil,
        hourlyCharge: Double? = nil,
        mileageTotal: Double? = nil,
        miscCharge: Double? = nil,
        orderCharge: Double? = nil,
        orderExtras: [XceleratorOrderExtraResponse1]? = nil,
        orderPackages: [XceleratorOrderPackageResponse1]? = nil,
        orderTrackingId: String,
        orderType: String? = nil,
        pCity: String? = nil,
        pCoName: String? = nil,
        pContact: String? = nil,
        pLatitude: Double? = nil,
        pLongitude: Double? = nil,
        poDcompletion: String? = nil,
        poDname: String? = nil,
        poPname: String? = nil,
        pState: String? = nil,
        pStreet: String? = nil,
        pStreet2: String? = nil,
        pTimeZoneText: String? = nil,
        pZip: String? = nil,
        packageCharge: Double? = nil,
        pickupArrival: String? = nil,
        pickupDeparture: String? = nil,
        pickupTargetFrom: String? = nil,
        pickupTargetTo: String? = nil,
        serviceName: String? = nil,
        status: String? = nil,
        stopOffCharge: Double? = nil,
        subtotal: Double? = nil,
        tax1Amount: Double? = nil,
        tax2Amount: Double? = nil,
        tollCharge: Double? = nil,
        totalCharge: Double? = nil,
        totalExtras: Double? = nil,
        totalSurcharges: Double? = nil,
        trackingKey: String? = nil,
        vehicleName: String? = nil,
        waitTimeCharge: Double? = nil,
        warehousingCharge: Double? = nil,
        weightCharge: Double? = nil,
        oDate: String? = nil,
        sWeight: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountNo = accountNo
        self.afterHoursCharge = afterHoursCharge
        self.codCharge = codCharge
        self.clientRefNo = clientRefNo
        self.clientRefNo2 = clientRefNo2
        self.clientRefNo3 = clientRefNo3
        self.clientRefNo4 = clientRefNo4
        self.creationUtc = creationUtc
        self.dCity = dCity
        self.dCoName = dCoName
        self.dContact = dContact
        self.dLatitude = dLatitude
        self.dLongitude = dLongitude
        self.dState = dState
        self.dStreet = dStreet
        self.dStreet2 = dStreet2
        self.dTimeZoneText = dTimeZoneText
        self.dZip = dZip
        self.declaredValueCharge = declaredValueCharge
        self.deliveryArrival = deliveryArrival
        self.deliveryDeparture = deliveryDeparture
        self.deliveryTargetFrom = deliveryTargetFrom
        self.deliveryTargetTo = deliveryTargetTo
        self.grandTotal = grandTotal
        self.hasPoDsignature = hasPoDsignature
        self.hasPoPsignature = hasPoPsignature
        self.hasVpod = hasVpod
        self.hasVpop = hasVpop
        self.hourlyCharge = hourlyCharge
        self.mileageTotal = mileageTotal
        self.miscCharge = miscCharge
        self.orderCharge = orderCharge
        self.orderExtras = orderExtras
        self.orderPackages = orderPackages
        self.orderTrackingId = orderTrackingId
        self.orderType = orderType
        self.pCity = pCity
        self.pCoName = pCoName
        self.pContact = pContact
        self.pLatitude = pLatitude
        self.pLongitude = pLongitude
        self.poDcompletion = poDcompletion
        self.poDname = poDname
        self.poPname = poPname
        self.pState = pState
        self.pStreet = pStreet
        self.pStreet2 = pStreet2
        self.pTimeZoneText = pTimeZoneText
        self.pZip = pZip
        self.packageCharge = packageCharge
        self.pickupArrival = pickupArrival
        self.pickupDeparture = pickupDeparture
        self.pickupTargetFrom = pickupTargetFrom
        self.pickupTargetTo = pickupTargetTo
        self.serviceName = serviceName
        self.status = status
        self.stopOffCharge = stopOffCharge
        self.subtotal = subtotal
        self.tax1Amount = tax1Amount
        self.tax2Amount = tax2Amount
        self.tollCharge = tollCharge
        self.totalCharge = totalCharge
        self.totalExtras = totalExtras
        self.totalSurcharges = totalSurcharges
        self.trackingKey = trackingKey
        self.vehicleName = vehicleName
        self.waitTimeCharge = waitTimeCharge
        self.warehousingCharge = warehousingCharge
        self.weightCharge = weightCharge
        self.oDate = oDate
        self.sWeight = sWeight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountNo = try container.decodeIfPresent(String.self, forKey: .accountNo)
        self.afterHoursCharge = try container.decodeIfPresent(Double.self, forKey: .afterHoursCharge)
        self.codCharge = try container.decodeIfPresent(Double.self, forKey: .codCharge)
        self.clientRefNo = try container.decodeIfPresent(String.self, forKey: .clientRefNo)
        self.clientRefNo2 = try container.decodeIfPresent(String.self, forKey: .clientRefNo2)
        self.clientRefNo3 = try container.decodeIfPresent(String.self, forKey: .clientRefNo3)
        self.clientRefNo4 = try container.decodeIfPresent(String.self, forKey: .clientRefNo4)
        self.creationUtc = try container.decodeIfPresent(String.self, forKey: .creationUtc)
        self.dCity = try container.decodeIfPresent(String.self, forKey: .dCity)
        self.dCoName = try container.decodeIfPresent(String.self, forKey: .dCoName)
        self.dContact = try container.decodeIfPresent(String.self, forKey: .dContact)
        self.dLatitude = try container.decodeIfPresent(Double.self, forKey: .dLatitude)
        self.dLongitude = try container.decodeIfPresent(Double.self, forKey: .dLongitude)
        self.dState = try container.decodeIfPresent(String.self, forKey: .dState)
        self.dStreet = try container.decodeIfPresent(String.self, forKey: .dStreet)
        self.dStreet2 = try container.decodeIfPresent(String.self, forKey: .dStreet2)
        self.dTimeZoneText = try container.decodeIfPresent(String.self, forKey: .dTimeZoneText)
        self.dZip = try container.decodeIfPresent(String.self, forKey: .dZip)
        self.declaredValueCharge = try container.decodeIfPresent(Double.self, forKey: .declaredValueCharge)
        self.deliveryArrival = try container.decodeIfPresent(String.self, forKey: .deliveryArrival)
        self.deliveryDeparture = try container.decodeIfPresent(String.self, forKey: .deliveryDeparture)
        self.deliveryTargetFrom = try container.decodeIfPresent(String.self, forKey: .deliveryTargetFrom)
        self.deliveryTargetTo = try container.decodeIfPresent(String.self, forKey: .deliveryTargetTo)
        self.grandTotal = try container.decodeIfPresent(Double.self, forKey: .grandTotal)
        self.hasPoDsignature = try container.decodeIfPresent(Bool.self, forKey: .hasPoDsignature)
        self.hasPoPsignature = try container.decodeIfPresent(Bool.self, forKey: .hasPoPsignature)
        self.hasVpod = try container.decodeIfPresent(Bool.self, forKey: .hasVpod)
        self.hasVpop = try container.decodeIfPresent(Bool.self, forKey: .hasVpop)
        self.hourlyCharge = try container.decodeIfPresent(Double.self, forKey: .hourlyCharge)
        self.mileageTotal = try container.decodeIfPresent(Double.self, forKey: .mileageTotal)
        self.miscCharge = try container.decodeIfPresent(Double.self, forKey: .miscCharge)
        self.orderCharge = try container.decodeIfPresent(Double.self, forKey: .orderCharge)
        self.orderExtras = try container.decodeIfPresent([XceleratorOrderExtraResponse1].self, forKey: .orderExtras)
        self.orderPackages = try container.decodeIfPresent([XceleratorOrderPackageResponse1].self, forKey: .orderPackages)
        self.orderTrackingId = try container.decode(String.self, forKey: .orderTrackingId)
        self.orderType = try container.decodeIfPresent(String.self, forKey: .orderType)
        self.pCity = try container.decodeIfPresent(String.self, forKey: .pCity)
        self.pCoName = try container.decodeIfPresent(String.self, forKey: .pCoName)
        self.pContact = try container.decodeIfPresent(String.self, forKey: .pContact)
        self.pLatitude = try container.decodeIfPresent(Double.self, forKey: .pLatitude)
        self.pLongitude = try container.decodeIfPresent(Double.self, forKey: .pLongitude)
        self.poDcompletion = try container.decodeIfPresent(String.self, forKey: .poDcompletion)
        self.poDname = try container.decodeIfPresent(String.self, forKey: .poDname)
        self.poPname = try container.decodeIfPresent(String.self, forKey: .poPname)
        self.pState = try container.decodeIfPresent(String.self, forKey: .pState)
        self.pStreet = try container.decodeIfPresent(String.self, forKey: .pStreet)
        self.pStreet2 = try container.decodeIfPresent(String.self, forKey: .pStreet2)
        self.pTimeZoneText = try container.decodeIfPresent(String.self, forKey: .pTimeZoneText)
        self.pZip = try container.decodeIfPresent(String.self, forKey: .pZip)
        self.packageCharge = try container.decodeIfPresent(Double.self, forKey: .packageCharge)
        self.pickupArrival = try container.decodeIfPresent(String.self, forKey: .pickupArrival)
        self.pickupDeparture = try container.decodeIfPresent(String.self, forKey: .pickupDeparture)
        self.pickupTargetFrom = try container.decodeIfPresent(String.self, forKey: .pickupTargetFrom)
        self.pickupTargetTo = try container.decodeIfPresent(String.self, forKey: .pickupTargetTo)
        self.serviceName = try container.decodeIfPresent(String.self, forKey: .serviceName)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.stopOffCharge = try container.decodeIfPresent(Double.self, forKey: .stopOffCharge)
        self.subtotal = try container.decodeIfPresent(Double.self, forKey: .subtotal)
        self.tax1Amount = try container.decodeIfPresent(Double.self, forKey: .tax1Amount)
        self.tax2Amount = try container.decodeIfPresent(Double.self, forKey: .tax2Amount)
        self.tollCharge = try container.decodeIfPresent(Double.self, forKey: .tollCharge)
        self.totalCharge = try container.decodeIfPresent(Double.self, forKey: .totalCharge)
        self.totalExtras = try container.decodeIfPresent(Double.self, forKey: .totalExtras)
        self.totalSurcharges = try container.decodeIfPresent(Double.self, forKey: .totalSurcharges)
        self.trackingKey = try container.decodeIfPresent(String.self, forKey: .trackingKey)
        self.vehicleName = try container.decodeIfPresent(String.self, forKey: .vehicleName)
        self.waitTimeCharge = try container.decodeIfPresent(Double.self, forKey: .waitTimeCharge)
        self.warehousingCharge = try container.decodeIfPresent(Double.self, forKey: .warehousingCharge)
        self.weightCharge = try container.decodeIfPresent(Double.self, forKey: .weightCharge)
        self.oDate = try container.decodeIfPresent(String.self, forKey: .oDate)
        self.sWeight = try container.decodeIfPresent(Double.self, forKey: .sWeight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountNo, forKey: .accountNo)
        try container.encodeIfPresent(self.afterHoursCharge, forKey: .afterHoursCharge)
        try container.encodeIfPresent(self.codCharge, forKey: .codCharge)
        try container.encodeIfPresent(self.clientRefNo, forKey: .clientRefNo)
        try container.encodeIfPresent(self.clientRefNo2, forKey: .clientRefNo2)
        try container.encodeIfPresent(self.clientRefNo3, forKey: .clientRefNo3)
        try container.encodeIfPresent(self.clientRefNo4, forKey: .clientRefNo4)
        try container.encodeIfPresent(self.creationUtc, forKey: .creationUtc)
        try container.encodeIfPresent(self.dCity, forKey: .dCity)
        try container.encodeIfPresent(self.dCoName, forKey: .dCoName)
        try container.encodeIfPresent(self.dContact, forKey: .dContact)
        try container.encodeIfPresent(self.dLatitude, forKey: .dLatitude)
        try container.encodeIfPresent(self.dLongitude, forKey: .dLongitude)
        try container.encodeIfPresent(self.dState, forKey: .dState)
        try container.encodeIfPresent(self.dStreet, forKey: .dStreet)
        try container.encodeIfPresent(self.dStreet2, forKey: .dStreet2)
        try container.encodeIfPresent(self.dTimeZoneText, forKey: .dTimeZoneText)
        try container.encodeIfPresent(self.dZip, forKey: .dZip)
        try container.encodeIfPresent(self.declaredValueCharge, forKey: .declaredValueCharge)
        try container.encodeIfPresent(self.deliveryArrival, forKey: .deliveryArrival)
        try container.encodeIfPresent(self.deliveryDeparture, forKey: .deliveryDeparture)
        try container.encodeIfPresent(self.deliveryTargetFrom, forKey: .deliveryTargetFrom)
        try container.encodeIfPresent(self.deliveryTargetTo, forKey: .deliveryTargetTo)
        try container.encodeIfPresent(self.grandTotal, forKey: .grandTotal)
        try container.encodeIfPresent(self.hasPoDsignature, forKey: .hasPoDsignature)
        try container.encodeIfPresent(self.hasPoPsignature, forKey: .hasPoPsignature)
        try container.encodeIfPresent(self.hasVpod, forKey: .hasVpod)
        try container.encodeIfPresent(self.hasVpop, forKey: .hasVpop)
        try container.encodeIfPresent(self.hourlyCharge, forKey: .hourlyCharge)
        try container.encodeIfPresent(self.mileageTotal, forKey: .mileageTotal)
        try container.encodeIfPresent(self.miscCharge, forKey: .miscCharge)
        try container.encodeIfPresent(self.orderCharge, forKey: .orderCharge)
        try container.encodeIfPresent(self.orderExtras, forKey: .orderExtras)
        try container.encodeIfPresent(self.orderPackages, forKey: .orderPackages)
        try container.encode(self.orderTrackingId, forKey: .orderTrackingId)
        try container.encodeIfPresent(self.orderType, forKey: .orderType)
        try container.encodeIfPresent(self.pCity, forKey: .pCity)
        try container.encodeIfPresent(self.pCoName, forKey: .pCoName)
        try container.encodeIfPresent(self.pContact, forKey: .pContact)
        try container.encodeIfPresent(self.pLatitude, forKey: .pLatitude)
        try container.encodeIfPresent(self.pLongitude, forKey: .pLongitude)
        try container.encodeIfPresent(self.poDcompletion, forKey: .poDcompletion)
        try container.encodeIfPresent(self.poDname, forKey: .poDname)
        try container.encodeIfPresent(self.poPname, forKey: .poPname)
        try container.encodeIfPresent(self.pState, forKey: .pState)
        try container.encodeIfPresent(self.pStreet, forKey: .pStreet)
        try container.encodeIfPresent(self.pStreet2, forKey: .pStreet2)
        try container.encodeIfPresent(self.pTimeZoneText, forKey: .pTimeZoneText)
        try container.encodeIfPresent(self.pZip, forKey: .pZip)
        try container.encodeIfPresent(self.packageCharge, forKey: .packageCharge)
        try container.encodeIfPresent(self.pickupArrival, forKey: .pickupArrival)
        try container.encodeIfPresent(self.pickupDeparture, forKey: .pickupDeparture)
        try container.encodeIfPresent(self.pickupTargetFrom, forKey: .pickupTargetFrom)
        try container.encodeIfPresent(self.pickupTargetTo, forKey: .pickupTargetTo)
        try container.encodeIfPresent(self.serviceName, forKey: .serviceName)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.stopOffCharge, forKey: .stopOffCharge)
        try container.encodeIfPresent(self.subtotal, forKey: .subtotal)
        try container.encodeIfPresent(self.tax1Amount, forKey: .tax1Amount)
        try container.encodeIfPresent(self.tax2Amount, forKey: .tax2Amount)
        try container.encodeIfPresent(self.tollCharge, forKey: .tollCharge)
        try container.encodeIfPresent(self.totalCharge, forKey: .totalCharge)
        try container.encodeIfPresent(self.totalExtras, forKey: .totalExtras)
        try container.encodeIfPresent(self.totalSurcharges, forKey: .totalSurcharges)
        try container.encodeIfPresent(self.trackingKey, forKey: .trackingKey)
        try container.encodeIfPresent(self.vehicleName, forKey: .vehicleName)
        try container.encodeIfPresent(self.waitTimeCharge, forKey: .waitTimeCharge)
        try container.encodeIfPresent(self.warehousingCharge, forKey: .warehousingCharge)
        try container.encodeIfPresent(self.weightCharge, forKey: .weightCharge)
        try container.encodeIfPresent(self.oDate, forKey: .oDate)
        try container.encodeIfPresent(self.sWeight, forKey: .sWeight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountNo = "AccountNo"
        case afterHoursCharge = "AfterHoursCharge"
        case codCharge = "CODCharge"
        case clientRefNo = "ClientRefNo"
        case clientRefNo2 = "ClientRefNo2"
        case clientRefNo3 = "ClientRefNo3"
        case clientRefNo4 = "ClientRefNo4"
        case creationUtc = "CreationUTC"
        case dCity = "DCity"
        case dCoName = "DCoName"
        case dContact = "DContact"
        case dLatitude = "DLatitude"
        case dLongitude = "DLongitude"
        case dState = "DState"
        case dStreet = "DStreet"
        case dStreet2 = "DStreet2"
        case dTimeZoneText = "DTimeZoneText"
        case dZip = "DZip"
        case declaredValueCharge = "DeclaredValueCharge"
        case deliveryArrival = "DeliveryArrival"
        case deliveryDeparture = "DeliveryDeparture"
        case deliveryTargetFrom = "DeliveryTargetFrom"
        case deliveryTargetTo = "DeliveryTargetTo"
        case grandTotal = "GrandTotal"
        case hasPoDsignature = "HasPODsignature"
        case hasPoPsignature = "HasPOPsignature"
        case hasVpod = "HasVPOD"
        case hasVpop = "HasVPOP"
        case hourlyCharge = "HourlyCharge"
        case mileageTotal = "MileageTotal"
        case miscCharge = "MiscCharge"
        case orderCharge = "OrderCharge"
        case orderExtras = "OrderExtras"
        case orderPackages = "OrderPackages"
        case orderTrackingId = "OrderTrackingId"
        case orderType = "OrderType"
        case pCity = "PCity"
        case pCoName = "PCoName"
        case pContact = "PContact"
        case pLatitude = "PLatitude"
        case pLongitude = "PLongitude"
        case poDcompletion = "PODcompletion"
        case poDname = "PODname"
        case poPname = "POPname"
        case pState = "PState"
        case pStreet = "PStreet"
        case pStreet2 = "PStreet2"
        case pTimeZoneText = "PTimeZoneText"
        case pZip = "PZip"
        case packageCharge = "PackageCharge"
        case pickupArrival = "PickupArrival"
        case pickupDeparture = "PickupDeparture"
        case pickupTargetFrom = "PickupTargetFrom"
        case pickupTargetTo = "PickupTargetTo"
        case serviceName = "ServiceName"
        case status = "Status"
        case stopOffCharge = "StopOffCharge"
        case subtotal = "Subtotal"
        case tax1Amount = "Tax1Amount"
        case tax2Amount = "Tax2Amount"
        case tollCharge = "TollCharge"
        case totalCharge = "TotalCharge"
        case totalExtras = "TotalExtras"
        case totalSurcharges = "TotalSurcharges"
        case trackingKey = "TrackingKey"
        case vehicleName = "VehicleName"
        case waitTimeCharge = "WaitTimeCharge"
        case warehousingCharge = "WarehousingCharge"
        case weightCharge = "WeightCharge"
        case oDate
        case sWeight
    }
}