import Foundation

public struct ChampAirWaybill1: Codable, Hashable, Sendable {
    public let id: String
    public let accounting: [CargojsonAccounting]?
    public let additionalSpecialHandlingCodes: [String]?
    public let agent: CargojsonAgent?
    public let airWaybillNumber: String
    public let alsoNotify: CargojsonAccountContact?
    public let chargeDeclarations: CargojsonChargeDeclarations?
    public let chargeItems: [CargojsonChargeItem]
    public let chargesCollectInDestCurrency: CargojsonCollectChargesInDestCurrency?
    public let collectChargeSummary: CargojsonChargeSummary?
    public let commissionInfo: CargojsonCommissionInfo?
    public let consignee: CargojsonAccountContact?
    public let createdAt: Date
    public let customsOriginCode: String?
    public let densityGroup: Int?
    public let destination: String
    public let flights: [CargojsonFlightIdentity]?
    public let isoCurrencyCode: String?
    public let nominatedHandlingParty: CargojsonNominatedHandlingParty?
    public let oci: [CargojsonOci]?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let origin: String
    public let otherCharges: [CargojsonOtherChargeItem]?
    public let otherParticipant: [CargojsonOtherParticipant]?
    public let otherServiceInformation: String?
    public let prepaidChargeSummary: CargojsonChargeSummary?
    public let route: [CargojsonRouting]
    public let salesIncentive: CargojsonSalesIncentive?
    public let schemaVersion: Int?
    public let shipmentReferenceInformation: CargojsonShipmentReferenceInformation?
    public let shipper: CargojsonAccountContact?
    public let shippersCertification: String?
    public let specialHandlingCodes: [CargojsonSpecialHandlingCode]?
    public let specialServiceRequest: String?
    public let status: ChampAirWaybillStatusEnum1?
    public let submittedAt: Date?
    public let taskGroupId: String
    public let totalConsignmentNumberOfPieces: Int
    public let updatedAt: Date
    public let volume: CargojsonVolume?
    public let webcargoBookingRecordId: String
    public let weight: CargojsonWeight
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        accounting: [CargojsonAccounting]? = nil,
        additionalSpecialHandlingCodes: [String]? = nil,
        agent: CargojsonAgent? = nil,
        airWaybillNumber: String,
        alsoNotify: CargojsonAccountContact? = nil,
        chargeDeclarations: CargojsonChargeDeclarations? = nil,
        chargeItems: [CargojsonChargeItem],
        chargesCollectInDestCurrency: CargojsonCollectChargesInDestCurrency? = nil,
        collectChargeSummary: CargojsonChargeSummary? = nil,
        commissionInfo: CargojsonCommissionInfo? = nil,
        consignee: CargojsonAccountContact? = nil,
        createdAt: Date,
        customsOriginCode: String? = nil,
        densityGroup: Int? = nil,
        destination: String,
        flights: [CargojsonFlightIdentity]? = nil,
        isoCurrencyCode: String? = nil,
        nominatedHandlingParty: CargojsonNominatedHandlingParty? = nil,
        oci: [CargojsonOci]? = nil,
        orgId: String,
        origin: String,
        otherCharges: [CargojsonOtherChargeItem]? = nil,
        otherParticipant: [CargojsonOtherParticipant]? = nil,
        otherServiceInformation: String? = nil,
        prepaidChargeSummary: CargojsonChargeSummary? = nil,
        route: [CargojsonRouting],
        salesIncentive: CargojsonSalesIncentive? = nil,
        schemaVersion: Int? = nil,
        shipmentReferenceInformation: CargojsonShipmentReferenceInformation? = nil,
        shipper: CargojsonAccountContact? = nil,
        shippersCertification: String? = nil,
        specialHandlingCodes: [CargojsonSpecialHandlingCode]? = nil,
        specialServiceRequest: String? = nil,
        status: ChampAirWaybillStatusEnum1? = nil,
        submittedAt: Date? = nil,
        taskGroupId: String,
        totalConsignmentNumberOfPieces: Int,
        updatedAt: Date,
        volume: CargojsonVolume? = nil,
        webcargoBookingRecordId: String,
        weight: CargojsonWeight,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.accounting = accounting
        self.additionalSpecialHandlingCodes = additionalSpecialHandlingCodes
        self.agent = agent
        self.airWaybillNumber = airWaybillNumber
        self.alsoNotify = alsoNotify
        self.chargeDeclarations = chargeDeclarations
        self.chargeItems = chargeItems
        self.chargesCollectInDestCurrency = chargesCollectInDestCurrency
        self.collectChargeSummary = collectChargeSummary
        self.commissionInfo = commissionInfo
        self.consignee = consignee
        self.createdAt = createdAt
        self.customsOriginCode = customsOriginCode
        self.densityGroup = densityGroup
        self.destination = destination
        self.flights = flights
        self.isoCurrencyCode = isoCurrencyCode
        self.nominatedHandlingParty = nominatedHandlingParty
        self.oci = oci
        self.orgId = orgId
        self.origin = origin
        self.otherCharges = otherCharges
        self.otherParticipant = otherParticipant
        self.otherServiceInformation = otherServiceInformation
        self.prepaidChargeSummary = prepaidChargeSummary
        self.route = route
        self.salesIncentive = salesIncentive
        self.schemaVersion = schemaVersion
        self.shipmentReferenceInformation = shipmentReferenceInformation
        self.shipper = shipper
        self.shippersCertification = shippersCertification
        self.specialHandlingCodes = specialHandlingCodes
        self.specialServiceRequest = specialServiceRequest
        self.status = status
        self.submittedAt = submittedAt
        self.taskGroupId = taskGroupId
        self.totalConsignmentNumberOfPieces = totalConsignmentNumberOfPieces
        self.updatedAt = updatedAt
        self.volume = volume
        self.webcargoBookingRecordId = webcargoBookingRecordId
        self.weight = weight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.accounting = try container.decodeIfPresent([CargojsonAccounting].self, forKey: .accounting)
        self.additionalSpecialHandlingCodes = try container.decodeIfPresent([String].self, forKey: .additionalSpecialHandlingCodes)
        self.agent = try container.decodeIfPresent(CargojsonAgent.self, forKey: .agent)
        self.airWaybillNumber = try container.decode(String.self, forKey: .airWaybillNumber)
        self.alsoNotify = try container.decodeIfPresent(CargojsonAccountContact.self, forKey: .alsoNotify)
        self.chargeDeclarations = try container.decodeIfPresent(CargojsonChargeDeclarations.self, forKey: .chargeDeclarations)
        self.chargeItems = try container.decode([CargojsonChargeItem].self, forKey: .chargeItems)
        self.chargesCollectInDestCurrency = try container.decodeIfPresent(CargojsonCollectChargesInDestCurrency.self, forKey: .chargesCollectInDestCurrency)
        self.collectChargeSummary = try container.decodeIfPresent(CargojsonChargeSummary.self, forKey: .collectChargeSummary)
        self.commissionInfo = try container.decodeIfPresent(CargojsonCommissionInfo.self, forKey: .commissionInfo)
        self.consignee = try container.decodeIfPresent(CargojsonAccountContact.self, forKey: .consignee)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.customsOriginCode = try container.decodeIfPresent(String.self, forKey: .customsOriginCode)
        self.densityGroup = try container.decodeIfPresent(Int.self, forKey: .densityGroup)
        self.destination = try container.decode(String.self, forKey: .destination)
        self.flights = try container.decodeIfPresent([CargojsonFlightIdentity].self, forKey: .flights)
        self.isoCurrencyCode = try container.decodeIfPresent(String.self, forKey: .isoCurrencyCode)
        self.nominatedHandlingParty = try container.decodeIfPresent(CargojsonNominatedHandlingParty.self, forKey: .nominatedHandlingParty)
        self.oci = try container.decodeIfPresent([CargojsonOci].self, forKey: .oci)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.origin = try container.decode(String.self, forKey: .origin)
        self.otherCharges = try container.decodeIfPresent([CargojsonOtherChargeItem].self, forKey: .otherCharges)
        self.otherParticipant = try container.decodeIfPresent([CargojsonOtherParticipant].self, forKey: .otherParticipant)
        self.otherServiceInformation = try container.decodeIfPresent(String.self, forKey: .otherServiceInformation)
        self.prepaidChargeSummary = try container.decodeIfPresent(CargojsonChargeSummary.self, forKey: .prepaidChargeSummary)
        self.route = try container.decode([CargojsonRouting].self, forKey: .route)
        self.salesIncentive = try container.decodeIfPresent(CargojsonSalesIncentive.self, forKey: .salesIncentive)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.shipmentReferenceInformation = try container.decodeIfPresent(CargojsonShipmentReferenceInformation.self, forKey: .shipmentReferenceInformation)
        self.shipper = try container.decodeIfPresent(CargojsonAccountContact.self, forKey: .shipper)
        self.shippersCertification = try container.decodeIfPresent(String.self, forKey: .shippersCertification)
        self.specialHandlingCodes = try container.decodeIfPresent([CargojsonSpecialHandlingCode].self, forKey: .specialHandlingCodes)
        self.specialServiceRequest = try container.decodeIfPresent(String.self, forKey: .specialServiceRequest)
        self.status = try container.decodeIfPresent(ChampAirWaybillStatusEnum1.self, forKey: .status)
        self.submittedAt = try container.decodeIfPresent(Date.self, forKey: .submittedAt)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.totalConsignmentNumberOfPieces = try container.decode(Int.self, forKey: .totalConsignmentNumberOfPieces)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.volume = try container.decodeIfPresent(CargojsonVolume.self, forKey: .volume)
        self.webcargoBookingRecordId = try container.decode(String.self, forKey: .webcargoBookingRecordId)
        self.weight = try container.decode(CargojsonWeight.self, forKey: .weight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.accounting, forKey: .accounting)
        try container.encodeIfPresent(self.additionalSpecialHandlingCodes, forKey: .additionalSpecialHandlingCodes)
        try container.encodeIfPresent(self.agent, forKey: .agent)
        try container.encode(self.airWaybillNumber, forKey: .airWaybillNumber)
        try container.encodeIfPresent(self.alsoNotify, forKey: .alsoNotify)
        try container.encodeIfPresent(self.chargeDeclarations, forKey: .chargeDeclarations)
        try container.encode(self.chargeItems, forKey: .chargeItems)
        try container.encodeIfPresent(self.chargesCollectInDestCurrency, forKey: .chargesCollectInDestCurrency)
        try container.encodeIfPresent(self.collectChargeSummary, forKey: .collectChargeSummary)
        try container.encodeIfPresent(self.commissionInfo, forKey: .commissionInfo)
        try container.encodeIfPresent(self.consignee, forKey: .consignee)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.customsOriginCode, forKey: .customsOriginCode)
        try container.encodeIfPresent(self.densityGroup, forKey: .densityGroup)
        try container.encode(self.destination, forKey: .destination)
        try container.encodeIfPresent(self.flights, forKey: .flights)
        try container.encodeIfPresent(self.isoCurrencyCode, forKey: .isoCurrencyCode)
        try container.encodeIfPresent(self.nominatedHandlingParty, forKey: .nominatedHandlingParty)
        try container.encodeIfPresent(self.oci, forKey: .oci)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.origin, forKey: .origin)
        try container.encodeIfPresent(self.otherCharges, forKey: .otherCharges)
        try container.encodeIfPresent(self.otherParticipant, forKey: .otherParticipant)
        try container.encodeIfPresent(self.otherServiceInformation, forKey: .otherServiceInformation)
        try container.encodeIfPresent(self.prepaidChargeSummary, forKey: .prepaidChargeSummary)
        try container.encode(self.route, forKey: .route)
        try container.encodeIfPresent(self.salesIncentive, forKey: .salesIncentive)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipmentReferenceInformation, forKey: .shipmentReferenceInformation)
        try container.encodeIfPresent(self.shipper, forKey: .shipper)
        try container.encodeIfPresent(self.shippersCertification, forKey: .shippersCertification)
        try container.encodeIfPresent(self.specialHandlingCodes, forKey: .specialHandlingCodes)
        try container.encodeIfPresent(self.specialServiceRequest, forKey: .specialServiceRequest)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.submittedAt, forKey: .submittedAt)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.totalConsignmentNumberOfPieces, forKey: .totalConsignmentNumberOfPieces)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(self.volume, forKey: .volume)
        try container.encode(self.webcargoBookingRecordId, forKey: .webcargoBookingRecordId)
        try container.encode(self.weight, forKey: .weight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case accounting
        case additionalSpecialHandlingCodes
        case agent
        case airWaybillNumber
        case alsoNotify
        case chargeDeclarations
        case chargeItems
        case chargesCollectInDestCurrency
        case collectChargeSummary
        case commissionInfo
        case consignee
        case createdAt
        case customsOriginCode
        case densityGroup
        case destination
        case flights
        case isoCurrencyCode
        case nominatedHandlingParty
        case oci
        case orgId
        case origin
        case otherCharges
        case otherParticipant
        case otherServiceInformation
        case prepaidChargeSummary
        case route
        case salesIncentive
        case schemaVersion
        case shipmentReferenceInformation
        case shipper
        case shippersCertification
        case specialHandlingCodes
        case specialServiceRequest
        case status
        case submittedAt
        case taskGroupId
        case totalConsignmentNumberOfPieces
        case updatedAt
        case volume
        case webcargoBookingRecordId
        case weight
    }
}