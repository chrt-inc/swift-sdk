import Foundation

public struct ChampAirWaybill1: Codable, Hashable, Sendable {
    public let schemaVersion: Int?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let taskGroupId: String
    public let webcargoBookingRecordId: String
    public let status: ChampAirWaybillStatusEnum1?
    public let airWaybillNumber: String
    public let origin: String
    public let destination: String
    public let totalConsignmentNumberOfPieces: Int
    public let weight: CargojsonWeight
    public let route: [CargojsonRouting]
    public let chargeItems: [CargojsonChargeItem]
    public let volume: CargojsonVolume?
    public let flights: [CargojsonFlightIdentity]?
    public let isoCurrencyCode: String?
    public let agent: CargojsonAgent?
    public let shipper: CargojsonAccountContact?
    public let consignee: CargojsonAccountContact?
    public let chargeDeclarations: CargojsonChargeDeclarations?
    public let densityGroup: Int?
    public let specialHandlingCodes: [CargojsonSpecialHandlingCode]?
    public let additionalSpecialHandlingCodes: [String]?
    public let specialServiceRequest: String?
    public let alsoNotify: CargojsonAccountContact?
    public let prepaidChargeSummary: CargojsonChargeSummary?
    public let collectChargeSummary: CargojsonChargeSummary?
    public let accounting: [CargojsonAccounting]?
    public let otherCharges: [CargojsonOtherChargeItem]?
    public let shippersCertification: String?
    public let otherServiceInformation: String?
    public let chargesCollectInDestCurrency: CargojsonCollectChargesInDestCurrency?
    public let customsOriginCode: String?
    public let commissionInfo: CargojsonCommissionInfo?
    public let salesIncentive: CargojsonSalesIncentive?
    public let nominatedHandlingParty: CargojsonNominatedHandlingParty?
    public let shipmentReferenceInformation: CargojsonShipmentReferenceInformation?
    public let otherParticipant: [CargojsonOtherParticipant]?
    public let oci: [CargojsonOci]?
    public let createdAt: Date
    public let updatedAt: Date
    public let submittedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int? = nil,
        id: String,
        orgId: String,
        taskGroupId: String,
        webcargoBookingRecordId: String,
        status: ChampAirWaybillStatusEnum1? = nil,
        airWaybillNumber: String,
        origin: String,
        destination: String,
        totalConsignmentNumberOfPieces: Int,
        weight: CargojsonWeight,
        route: [CargojsonRouting],
        chargeItems: [CargojsonChargeItem],
        volume: CargojsonVolume? = nil,
        flights: [CargojsonFlightIdentity]? = nil,
        isoCurrencyCode: String? = nil,
        agent: CargojsonAgent? = nil,
        shipper: CargojsonAccountContact? = nil,
        consignee: CargojsonAccountContact? = nil,
        chargeDeclarations: CargojsonChargeDeclarations? = nil,
        densityGroup: Int? = nil,
        specialHandlingCodes: [CargojsonSpecialHandlingCode]? = nil,
        additionalSpecialHandlingCodes: [String]? = nil,
        specialServiceRequest: String? = nil,
        alsoNotify: CargojsonAccountContact? = nil,
        prepaidChargeSummary: CargojsonChargeSummary? = nil,
        collectChargeSummary: CargojsonChargeSummary? = nil,
        accounting: [CargojsonAccounting]? = nil,
        otherCharges: [CargojsonOtherChargeItem]? = nil,
        shippersCertification: String? = nil,
        otherServiceInformation: String? = nil,
        chargesCollectInDestCurrency: CargojsonCollectChargesInDestCurrency? = nil,
        customsOriginCode: String? = nil,
        commissionInfo: CargojsonCommissionInfo? = nil,
        salesIncentive: CargojsonSalesIncentive? = nil,
        nominatedHandlingParty: CargojsonNominatedHandlingParty? = nil,
        shipmentReferenceInformation: CargojsonShipmentReferenceInformation? = nil,
        otherParticipant: [CargojsonOtherParticipant]? = nil,
        oci: [CargojsonOci]? = nil,
        createdAt: Date,
        updatedAt: Date,
        submittedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.orgId = orgId
        self.taskGroupId = taskGroupId
        self.webcargoBookingRecordId = webcargoBookingRecordId
        self.status = status
        self.airWaybillNumber = airWaybillNumber
        self.origin = origin
        self.destination = destination
        self.totalConsignmentNumberOfPieces = totalConsignmentNumberOfPieces
        self.weight = weight
        self.route = route
        self.chargeItems = chargeItems
        self.volume = volume
        self.flights = flights
        self.isoCurrencyCode = isoCurrencyCode
        self.agent = agent
        self.shipper = shipper
        self.consignee = consignee
        self.chargeDeclarations = chargeDeclarations
        self.densityGroup = densityGroup
        self.specialHandlingCodes = specialHandlingCodes
        self.additionalSpecialHandlingCodes = additionalSpecialHandlingCodes
        self.specialServiceRequest = specialServiceRequest
        self.alsoNotify = alsoNotify
        self.prepaidChargeSummary = prepaidChargeSummary
        self.collectChargeSummary = collectChargeSummary
        self.accounting = accounting
        self.otherCharges = otherCharges
        self.shippersCertification = shippersCertification
        self.otherServiceInformation = otherServiceInformation
        self.chargesCollectInDestCurrency = chargesCollectInDestCurrency
        self.customsOriginCode = customsOriginCode
        self.commissionInfo = commissionInfo
        self.salesIncentive = salesIncentive
        self.nominatedHandlingParty = nominatedHandlingParty
        self.shipmentReferenceInformation = shipmentReferenceInformation
        self.otherParticipant = otherParticipant
        self.oci = oci
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.submittedAt = submittedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.webcargoBookingRecordId = try container.decode(String.self, forKey: .webcargoBookingRecordId)
        self.status = try container.decodeIfPresent(ChampAirWaybillStatusEnum1.self, forKey: .status)
        self.airWaybillNumber = try container.decode(String.self, forKey: .airWaybillNumber)
        self.origin = try container.decode(String.self, forKey: .origin)
        self.destination = try container.decode(String.self, forKey: .destination)
        self.totalConsignmentNumberOfPieces = try container.decode(Int.self, forKey: .totalConsignmentNumberOfPieces)
        self.weight = try container.decode(CargojsonWeight.self, forKey: .weight)
        self.route = try container.decode([CargojsonRouting].self, forKey: .route)
        self.chargeItems = try container.decode([CargojsonChargeItem].self, forKey: .chargeItems)
        self.volume = try container.decodeIfPresent(CargojsonVolume.self, forKey: .volume)
        self.flights = try container.decodeIfPresent([CargojsonFlightIdentity].self, forKey: .flights)
        self.isoCurrencyCode = try container.decodeIfPresent(String.self, forKey: .isoCurrencyCode)
        self.agent = try container.decodeIfPresent(CargojsonAgent.self, forKey: .agent)
        self.shipper = try container.decodeIfPresent(CargojsonAccountContact.self, forKey: .shipper)
        self.consignee = try container.decodeIfPresent(CargojsonAccountContact.self, forKey: .consignee)
        self.chargeDeclarations = try container.decodeIfPresent(CargojsonChargeDeclarations.self, forKey: .chargeDeclarations)
        self.densityGroup = try container.decodeIfPresent(Int.self, forKey: .densityGroup)
        self.specialHandlingCodes = try container.decodeIfPresent([CargojsonSpecialHandlingCode].self, forKey: .specialHandlingCodes)
        self.additionalSpecialHandlingCodes = try container.decodeIfPresent([String].self, forKey: .additionalSpecialHandlingCodes)
        self.specialServiceRequest = try container.decodeIfPresent(String.self, forKey: .specialServiceRequest)
        self.alsoNotify = try container.decodeIfPresent(CargojsonAccountContact.self, forKey: .alsoNotify)
        self.prepaidChargeSummary = try container.decodeIfPresent(CargojsonChargeSummary.self, forKey: .prepaidChargeSummary)
        self.collectChargeSummary = try container.decodeIfPresent(CargojsonChargeSummary.self, forKey: .collectChargeSummary)
        self.accounting = try container.decodeIfPresent([CargojsonAccounting].self, forKey: .accounting)
        self.otherCharges = try container.decodeIfPresent([CargojsonOtherChargeItem].self, forKey: .otherCharges)
        self.shippersCertification = try container.decodeIfPresent(String.self, forKey: .shippersCertification)
        self.otherServiceInformation = try container.decodeIfPresent(String.self, forKey: .otherServiceInformation)
        self.chargesCollectInDestCurrency = try container.decodeIfPresent(CargojsonCollectChargesInDestCurrency.self, forKey: .chargesCollectInDestCurrency)
        self.customsOriginCode = try container.decodeIfPresent(String.self, forKey: .customsOriginCode)
        self.commissionInfo = try container.decodeIfPresent(CargojsonCommissionInfo.self, forKey: .commissionInfo)
        self.salesIncentive = try container.decodeIfPresent(CargojsonSalesIncentive.self, forKey: .salesIncentive)
        self.nominatedHandlingParty = try container.decodeIfPresent(CargojsonNominatedHandlingParty.self, forKey: .nominatedHandlingParty)
        self.shipmentReferenceInformation = try container.decodeIfPresent(CargojsonShipmentReferenceInformation.self, forKey: .shipmentReferenceInformation)
        self.otherParticipant = try container.decodeIfPresent([CargojsonOtherParticipant].self, forKey: .otherParticipant)
        self.oci = try container.decodeIfPresent([CargojsonOci].self, forKey: .oci)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.submittedAt = try container.decodeIfPresent(Date.self, forKey: .submittedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.webcargoBookingRecordId, forKey: .webcargoBookingRecordId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encode(self.airWaybillNumber, forKey: .airWaybillNumber)
        try container.encode(self.origin, forKey: .origin)
        try container.encode(self.destination, forKey: .destination)
        try container.encode(self.totalConsignmentNumberOfPieces, forKey: .totalConsignmentNumberOfPieces)
        try container.encode(self.weight, forKey: .weight)
        try container.encode(self.route, forKey: .route)
        try container.encode(self.chargeItems, forKey: .chargeItems)
        try container.encodeIfPresent(self.volume, forKey: .volume)
        try container.encodeIfPresent(self.flights, forKey: .flights)
        try container.encodeIfPresent(self.isoCurrencyCode, forKey: .isoCurrencyCode)
        try container.encodeIfPresent(self.agent, forKey: .agent)
        try container.encodeIfPresent(self.shipper, forKey: .shipper)
        try container.encodeIfPresent(self.consignee, forKey: .consignee)
        try container.encodeIfPresent(self.chargeDeclarations, forKey: .chargeDeclarations)
        try container.encodeIfPresent(self.densityGroup, forKey: .densityGroup)
        try container.encodeIfPresent(self.specialHandlingCodes, forKey: .specialHandlingCodes)
        try container.encodeIfPresent(self.additionalSpecialHandlingCodes, forKey: .additionalSpecialHandlingCodes)
        try container.encodeIfPresent(self.specialServiceRequest, forKey: .specialServiceRequest)
        try container.encodeIfPresent(self.alsoNotify, forKey: .alsoNotify)
        try container.encodeIfPresent(self.prepaidChargeSummary, forKey: .prepaidChargeSummary)
        try container.encodeIfPresent(self.collectChargeSummary, forKey: .collectChargeSummary)
        try container.encodeIfPresent(self.accounting, forKey: .accounting)
        try container.encodeIfPresent(self.otherCharges, forKey: .otherCharges)
        try container.encodeIfPresent(self.shippersCertification, forKey: .shippersCertification)
        try container.encodeIfPresent(self.otherServiceInformation, forKey: .otherServiceInformation)
        try container.encodeIfPresent(self.chargesCollectInDestCurrency, forKey: .chargesCollectInDestCurrency)
        try container.encodeIfPresent(self.customsOriginCode, forKey: .customsOriginCode)
        try container.encodeIfPresent(self.commissionInfo, forKey: .commissionInfo)
        try container.encodeIfPresent(self.salesIncentive, forKey: .salesIncentive)
        try container.encodeIfPresent(self.nominatedHandlingParty, forKey: .nominatedHandlingParty)
        try container.encodeIfPresent(self.shipmentReferenceInformation, forKey: .shipmentReferenceInformation)
        try container.encodeIfPresent(self.otherParticipant, forKey: .otherParticipant)
        try container.encodeIfPresent(self.oci, forKey: .oci)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(self.submittedAt, forKey: .submittedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion
        case id = "_id"
        case orgId
        case taskGroupId
        case webcargoBookingRecordId
        case status
        case airWaybillNumber
        case origin
        case destination
        case totalConsignmentNumberOfPieces
        case weight
        case route
        case chargeItems
        case volume
        case flights
        case isoCurrencyCode
        case agent
        case shipper
        case consignee
        case chargeDeclarations
        case densityGroup
        case specialHandlingCodes
        case additionalSpecialHandlingCodes
        case specialServiceRequest
        case alsoNotify
        case prepaidChargeSummary
        case collectChargeSummary
        case accounting
        case otherCharges
        case shippersCertification
        case otherServiceInformation
        case chargesCollectInDestCurrency
        case customsOriginCode
        case commissionInfo
        case salesIncentive
        case nominatedHandlingParty
        case shipmentReferenceInformation
        case otherParticipant
        case oci
        case createdAt
        case updatedAt
        case submittedAt
    }
}