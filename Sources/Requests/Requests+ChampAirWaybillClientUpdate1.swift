import Foundation

extension Requests {
    public struct ChampAirWaybillClientUpdate1: Codable, Hashable, Sendable {
        public let totalConsignmentNumberOfPieces: Int?
        public let weight: CargojsonWeight?
        public let volume: CargojsonVolume?
        public let chargeItems: [CargojsonChargeItem]?
        public let flights: [CargojsonFlightIdentity]?
        public let isoCurrencyCode: String?
        public let agent: CargojsonAgent?
        public let route: [CargojsonRouting]?
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
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            totalConsignmentNumberOfPieces: Int? = nil,
            weight: CargojsonWeight? = nil,
            volume: CargojsonVolume? = nil,
            chargeItems: [CargojsonChargeItem]? = nil,
            flights: [CargojsonFlightIdentity]? = nil,
            isoCurrencyCode: String? = nil,
            agent: CargojsonAgent? = nil,
            route: [CargojsonRouting]? = nil,
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
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.totalConsignmentNumberOfPieces = totalConsignmentNumberOfPieces
            self.weight = weight
            self.volume = volume
            self.chargeItems = chargeItems
            self.flights = flights
            self.isoCurrencyCode = isoCurrencyCode
            self.agent = agent
            self.route = route
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
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.totalConsignmentNumberOfPieces = try container.decodeIfPresent(Int.self, forKey: .totalConsignmentNumberOfPieces)
            self.weight = try container.decodeIfPresent(CargojsonWeight.self, forKey: .weight)
            self.volume = try container.decodeIfPresent(CargojsonVolume.self, forKey: .volume)
            self.chargeItems = try container.decodeIfPresent([CargojsonChargeItem].self, forKey: .chargeItems)
            self.flights = try container.decodeIfPresent([CargojsonFlightIdentity].self, forKey: .flights)
            self.isoCurrencyCode = try container.decodeIfPresent(String.self, forKey: .isoCurrencyCode)
            self.agent = try container.decodeIfPresent(CargojsonAgent.self, forKey: .agent)
            self.route = try container.decodeIfPresent([CargojsonRouting].self, forKey: .route)
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
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.totalConsignmentNumberOfPieces, forKey: .totalConsignmentNumberOfPieces)
            try container.encodeIfPresent(self.weight, forKey: .weight)
            try container.encodeIfPresent(self.volume, forKey: .volume)
            try container.encodeIfPresent(self.chargeItems, forKey: .chargeItems)
            try container.encodeIfPresent(self.flights, forKey: .flights)
            try container.encodeIfPresent(self.isoCurrencyCode, forKey: .isoCurrencyCode)
            try container.encodeIfPresent(self.agent, forKey: .agent)
            try container.encodeIfPresent(self.route, forKey: .route)
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
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case totalConsignmentNumberOfPieces = "total_consignment_number_of_pieces"
            case weight
            case volume
            case chargeItems = "charge_items"
            case flights
            case isoCurrencyCode = "iso_currency_code"
            case agent
            case route
            case shipper
            case consignee
            case chargeDeclarations = "charge_declarations"
            case densityGroup = "density_group"
            case specialHandlingCodes = "special_handling_codes"
            case additionalSpecialHandlingCodes = "additional_special_handling_codes"
            case specialServiceRequest = "special_service_request"
            case alsoNotify = "also_notify"
            case prepaidChargeSummary = "prepaid_charge_summary"
            case collectChargeSummary = "collect_charge_summary"
            case accounting
            case otherCharges = "other_charges"
            case shippersCertification = "shippers_certification"
            case otherServiceInformation = "other_service_information"
            case chargesCollectInDestCurrency = "charges_collect_in_dest_currency"
            case customsOriginCode = "customs_origin_code"
            case commissionInfo = "commission_info"
            case salesIncentive = "sales_incentive"
            case nominatedHandlingParty = "nominated_handling_party"
            case shipmentReferenceInformation = "shipment_reference_information"
            case otherParticipant = "other_participant"
            case oci
        }
    }
}