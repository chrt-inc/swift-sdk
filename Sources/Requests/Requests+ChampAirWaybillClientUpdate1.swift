import Foundation

extension Requests {
    public struct ChampAirWaybillClientUpdate1: Codable, Hashable, Sendable {
        public let accounting: [CargojsonAccounting]?
        public let additionalSpecialHandlingCodes: [String]?
        public let agent: CargojsonAgent?
        public let alsoNotify: CargojsonAccountContact?
        public let chargeDeclarations: CargojsonChargeDeclarations?
        public let chargeItems: [CargojsonChargeItem]?
        public let chargesCollectInDestCurrency: CargojsonCollectChargesInDestCurrency?
        public let collectChargeSummary: CargojsonChargeSummary?
        public let commissionInfo: CargojsonCommissionInfo?
        public let consignee: CargojsonAccountContact?
        public let customsOriginCode: String?
        public let densityGroup: Int?
        public let flights: [CargojsonFlightIdentity]?
        public let isoCurrencyCode: String?
        public let nominatedHandlingParty: CargojsonNominatedHandlingParty?
        public let oci: [CargojsonOci]?
        public let otherCharges: [CargojsonOtherChargeItem]?
        public let otherParticipant: [CargojsonOtherParticipant]?
        public let otherServiceInformation: String?
        public let prepaidChargeSummary: CargojsonChargeSummary?
        public let route: [CargojsonRouting]?
        public let salesIncentive: CargojsonSalesIncentive?
        public let shipmentReferenceInformation: CargojsonShipmentReferenceInformation?
        public let shipper: CargojsonAccountContact?
        public let shippersCertification: String?
        public let specialHandlingCodes: [CargojsonSpecialHandlingCode]?
        public let specialServiceRequest: String?
        public let totalConsignmentNumberOfPieces: Int?
        public let volume: CargojsonVolume?
        public let weight: CargojsonWeight?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            accounting: [CargojsonAccounting]? = nil,
            additionalSpecialHandlingCodes: [String]? = nil,
            agent: CargojsonAgent? = nil,
            alsoNotify: CargojsonAccountContact? = nil,
            chargeDeclarations: CargojsonChargeDeclarations? = nil,
            chargeItems: [CargojsonChargeItem]? = nil,
            chargesCollectInDestCurrency: CargojsonCollectChargesInDestCurrency? = nil,
            collectChargeSummary: CargojsonChargeSummary? = nil,
            commissionInfo: CargojsonCommissionInfo? = nil,
            consignee: CargojsonAccountContact? = nil,
            customsOriginCode: String? = nil,
            densityGroup: Int? = nil,
            flights: [CargojsonFlightIdentity]? = nil,
            isoCurrencyCode: String? = nil,
            nominatedHandlingParty: CargojsonNominatedHandlingParty? = nil,
            oci: [CargojsonOci]? = nil,
            otherCharges: [CargojsonOtherChargeItem]? = nil,
            otherParticipant: [CargojsonOtherParticipant]? = nil,
            otherServiceInformation: String? = nil,
            prepaidChargeSummary: CargojsonChargeSummary? = nil,
            route: [CargojsonRouting]? = nil,
            salesIncentive: CargojsonSalesIncentive? = nil,
            shipmentReferenceInformation: CargojsonShipmentReferenceInformation? = nil,
            shipper: CargojsonAccountContact? = nil,
            shippersCertification: String? = nil,
            specialHandlingCodes: [CargojsonSpecialHandlingCode]? = nil,
            specialServiceRequest: String? = nil,
            totalConsignmentNumberOfPieces: Int? = nil,
            volume: CargojsonVolume? = nil,
            weight: CargojsonWeight? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.accounting = accounting
            self.additionalSpecialHandlingCodes = additionalSpecialHandlingCodes
            self.agent = agent
            self.alsoNotify = alsoNotify
            self.chargeDeclarations = chargeDeclarations
            self.chargeItems = chargeItems
            self.chargesCollectInDestCurrency = chargesCollectInDestCurrency
            self.collectChargeSummary = collectChargeSummary
            self.commissionInfo = commissionInfo
            self.consignee = consignee
            self.customsOriginCode = customsOriginCode
            self.densityGroup = densityGroup
            self.flights = flights
            self.isoCurrencyCode = isoCurrencyCode
            self.nominatedHandlingParty = nominatedHandlingParty
            self.oci = oci
            self.otherCharges = otherCharges
            self.otherParticipant = otherParticipant
            self.otherServiceInformation = otherServiceInformation
            self.prepaidChargeSummary = prepaidChargeSummary
            self.route = route
            self.salesIncentive = salesIncentive
            self.shipmentReferenceInformation = shipmentReferenceInformation
            self.shipper = shipper
            self.shippersCertification = shippersCertification
            self.specialHandlingCodes = specialHandlingCodes
            self.specialServiceRequest = specialServiceRequest
            self.totalConsignmentNumberOfPieces = totalConsignmentNumberOfPieces
            self.volume = volume
            self.weight = weight
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.accounting = try container.decodeIfPresent([CargojsonAccounting].self, forKey: .accounting)
            self.additionalSpecialHandlingCodes = try container.decodeIfPresent([String].self, forKey: .additionalSpecialHandlingCodes)
            self.agent = try container.decodeIfPresent(CargojsonAgent.self, forKey: .agent)
            self.alsoNotify = try container.decodeIfPresent(CargojsonAccountContact.self, forKey: .alsoNotify)
            self.chargeDeclarations = try container.decodeIfPresent(CargojsonChargeDeclarations.self, forKey: .chargeDeclarations)
            self.chargeItems = try container.decodeIfPresent([CargojsonChargeItem].self, forKey: .chargeItems)
            self.chargesCollectInDestCurrency = try container.decodeIfPresent(CargojsonCollectChargesInDestCurrency.self, forKey: .chargesCollectInDestCurrency)
            self.collectChargeSummary = try container.decodeIfPresent(CargojsonChargeSummary.self, forKey: .collectChargeSummary)
            self.commissionInfo = try container.decodeIfPresent(CargojsonCommissionInfo.self, forKey: .commissionInfo)
            self.consignee = try container.decodeIfPresent(CargojsonAccountContact.self, forKey: .consignee)
            self.customsOriginCode = try container.decodeIfPresent(String.self, forKey: .customsOriginCode)
            self.densityGroup = try container.decodeIfPresent(Int.self, forKey: .densityGroup)
            self.flights = try container.decodeIfPresent([CargojsonFlightIdentity].self, forKey: .flights)
            self.isoCurrencyCode = try container.decodeIfPresent(String.self, forKey: .isoCurrencyCode)
            self.nominatedHandlingParty = try container.decodeIfPresent(CargojsonNominatedHandlingParty.self, forKey: .nominatedHandlingParty)
            self.oci = try container.decodeIfPresent([CargojsonOci].self, forKey: .oci)
            self.otherCharges = try container.decodeIfPresent([CargojsonOtherChargeItem].self, forKey: .otherCharges)
            self.otherParticipant = try container.decodeIfPresent([CargojsonOtherParticipant].self, forKey: .otherParticipant)
            self.otherServiceInformation = try container.decodeIfPresent(String.self, forKey: .otherServiceInformation)
            self.prepaidChargeSummary = try container.decodeIfPresent(CargojsonChargeSummary.self, forKey: .prepaidChargeSummary)
            self.route = try container.decodeIfPresent([CargojsonRouting].self, forKey: .route)
            self.salesIncentive = try container.decodeIfPresent(CargojsonSalesIncentive.self, forKey: .salesIncentive)
            self.shipmentReferenceInformation = try container.decodeIfPresent(CargojsonShipmentReferenceInformation.self, forKey: .shipmentReferenceInformation)
            self.shipper = try container.decodeIfPresent(CargojsonAccountContact.self, forKey: .shipper)
            self.shippersCertification = try container.decodeIfPresent(String.self, forKey: .shippersCertification)
            self.specialHandlingCodes = try container.decodeIfPresent([CargojsonSpecialHandlingCode].self, forKey: .specialHandlingCodes)
            self.specialServiceRequest = try container.decodeIfPresent(String.self, forKey: .specialServiceRequest)
            self.totalConsignmentNumberOfPieces = try container.decodeIfPresent(Int.self, forKey: .totalConsignmentNumberOfPieces)
            self.volume = try container.decodeIfPresent(CargojsonVolume.self, forKey: .volume)
            self.weight = try container.decodeIfPresent(CargojsonWeight.self, forKey: .weight)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.accounting, forKey: .accounting)
            try container.encodeIfPresent(self.additionalSpecialHandlingCodes, forKey: .additionalSpecialHandlingCodes)
            try container.encodeIfPresent(self.agent, forKey: .agent)
            try container.encodeIfPresent(self.alsoNotify, forKey: .alsoNotify)
            try container.encodeIfPresent(self.chargeDeclarations, forKey: .chargeDeclarations)
            try container.encodeIfPresent(self.chargeItems, forKey: .chargeItems)
            try container.encodeIfPresent(self.chargesCollectInDestCurrency, forKey: .chargesCollectInDestCurrency)
            try container.encodeIfPresent(self.collectChargeSummary, forKey: .collectChargeSummary)
            try container.encodeIfPresent(self.commissionInfo, forKey: .commissionInfo)
            try container.encodeIfPresent(self.consignee, forKey: .consignee)
            try container.encodeIfPresent(self.customsOriginCode, forKey: .customsOriginCode)
            try container.encodeIfPresent(self.densityGroup, forKey: .densityGroup)
            try container.encodeIfPresent(self.flights, forKey: .flights)
            try container.encodeIfPresent(self.isoCurrencyCode, forKey: .isoCurrencyCode)
            try container.encodeIfPresent(self.nominatedHandlingParty, forKey: .nominatedHandlingParty)
            try container.encodeIfPresent(self.oci, forKey: .oci)
            try container.encodeIfPresent(self.otherCharges, forKey: .otherCharges)
            try container.encodeIfPresent(self.otherParticipant, forKey: .otherParticipant)
            try container.encodeIfPresent(self.otherServiceInformation, forKey: .otherServiceInformation)
            try container.encodeIfPresent(self.prepaidChargeSummary, forKey: .prepaidChargeSummary)
            try container.encodeIfPresent(self.route, forKey: .route)
            try container.encodeIfPresent(self.salesIncentive, forKey: .salesIncentive)
            try container.encodeIfPresent(self.shipmentReferenceInformation, forKey: .shipmentReferenceInformation)
            try container.encodeIfPresent(self.shipper, forKey: .shipper)
            try container.encodeIfPresent(self.shippersCertification, forKey: .shippersCertification)
            try container.encodeIfPresent(self.specialHandlingCodes, forKey: .specialHandlingCodes)
            try container.encodeIfPresent(self.specialServiceRequest, forKey: .specialServiceRequest)
            try container.encodeIfPresent(self.totalConsignmentNumberOfPieces, forKey: .totalConsignmentNumberOfPieces)
            try container.encodeIfPresent(self.volume, forKey: .volume)
            try container.encodeIfPresent(self.weight, forKey: .weight)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case accounting
            case additionalSpecialHandlingCodes = "additional_special_handling_codes"
            case agent
            case alsoNotify = "also_notify"
            case chargeDeclarations = "charge_declarations"
            case chargeItems = "charge_items"
            case chargesCollectInDestCurrency = "charges_collect_in_dest_currency"
            case collectChargeSummary = "collect_charge_summary"
            case commissionInfo = "commission_info"
            case consignee
            case customsOriginCode = "customs_origin_code"
            case densityGroup = "density_group"
            case flights
            case isoCurrencyCode = "iso_currency_code"
            case nominatedHandlingParty = "nominated_handling_party"
            case oci
            case otherCharges = "other_charges"
            case otherParticipant = "other_participant"
            case otherServiceInformation = "other_service_information"
            case prepaidChargeSummary = "prepaid_charge_summary"
            case route
            case salesIncentive = "sales_incentive"
            case shipmentReferenceInformation = "shipment_reference_information"
            case shipper
            case shippersCertification = "shippers_certification"
            case specialHandlingCodes = "special_handling_codes"
            case specialServiceRequest = "special_service_request"
            case totalConsignmentNumberOfPieces = "total_consignment_number_of_pieces"
            case volume
            case weight
        }
    }
}