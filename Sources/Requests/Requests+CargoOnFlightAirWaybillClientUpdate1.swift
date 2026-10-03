import Foundation

extension Requests {
    public struct CargoOnFlightAirWaybillClientUpdate1: Codable, Hashable, Sendable {
        public let alsoNotify: CargoOnFlightAirWaybillParty1?
        public let alsoNotifySetToNone: Bool?
        public let carriersExecution: CargoOnFlightAirWaybillCarriersExecution1?
        public let chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1?
        public let consignee: CargoOnFlightAirWaybillParty1?
        public let consignmentSecurityDeclaration: CargoOnFlightAirWaybillConsignmentSecurityDeclaration1?
        public let consignmentSecurityDeclarationSetToNone: Bool?
        public let customsOriginCode: String?
        public let customsOriginCodeSetToNone: Bool?
        public let issuingAgentName: String?
        public let issuingAgentNameSetToNone: Bool?
        public let otherCharges: [CargoOnFlightAirWaybillOtherCharge1]?
        public let otherServiceInformation: String?
        public let otherServiceInformationSetToNone: Bool?
        public let rateLines: [CargoOnFlightAirWaybillRateLine1]?
        public let shipper: CargoOnFlightAirWaybillParty1?
        public let shippersCertification: String?
        public let specialServiceRequest: String?
        public let specialServiceRequestSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            alsoNotify: CargoOnFlightAirWaybillParty1? = nil,
            alsoNotifySetToNone: Bool? = nil,
            carriersExecution: CargoOnFlightAirWaybillCarriersExecution1? = nil,
            chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1? = nil,
            consignee: CargoOnFlightAirWaybillParty1? = nil,
            consignmentSecurityDeclaration: CargoOnFlightAirWaybillConsignmentSecurityDeclaration1? = nil,
            consignmentSecurityDeclarationSetToNone: Bool? = nil,
            customsOriginCode: String? = nil,
            customsOriginCodeSetToNone: Bool? = nil,
            issuingAgentName: String? = nil,
            issuingAgentNameSetToNone: Bool? = nil,
            otherCharges: [CargoOnFlightAirWaybillOtherCharge1]? = nil,
            otherServiceInformation: String? = nil,
            otherServiceInformationSetToNone: Bool? = nil,
            rateLines: [CargoOnFlightAirWaybillRateLine1]? = nil,
            shipper: CargoOnFlightAirWaybillParty1? = nil,
            shippersCertification: String? = nil,
            specialServiceRequest: String? = nil,
            specialServiceRequestSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.alsoNotify = alsoNotify
            self.alsoNotifySetToNone = alsoNotifySetToNone
            self.carriersExecution = carriersExecution
            self.chargesDeclaration = chargesDeclaration
            self.consignee = consignee
            self.consignmentSecurityDeclaration = consignmentSecurityDeclaration
            self.consignmentSecurityDeclarationSetToNone = consignmentSecurityDeclarationSetToNone
            self.customsOriginCode = customsOriginCode
            self.customsOriginCodeSetToNone = customsOriginCodeSetToNone
            self.issuingAgentName = issuingAgentName
            self.issuingAgentNameSetToNone = issuingAgentNameSetToNone
            self.otherCharges = otherCharges
            self.otherServiceInformation = otherServiceInformation
            self.otherServiceInformationSetToNone = otherServiceInformationSetToNone
            self.rateLines = rateLines
            self.shipper = shipper
            self.shippersCertification = shippersCertification
            self.specialServiceRequest = specialServiceRequest
            self.specialServiceRequestSetToNone = specialServiceRequestSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.alsoNotify = try container.decodeIfPresent(CargoOnFlightAirWaybillParty1.self, forKey: .alsoNotify)
            self.alsoNotifySetToNone = try container.decodeIfPresent(Bool.self, forKey: .alsoNotifySetToNone)
            self.carriersExecution = try container.decodeIfPresent(CargoOnFlightAirWaybillCarriersExecution1.self, forKey: .carriersExecution)
            self.chargesDeclaration = try container.decodeIfPresent(CargoOnFlightAirWaybillChargesDeclaration1.self, forKey: .chargesDeclaration)
            self.consignee = try container.decodeIfPresent(CargoOnFlightAirWaybillParty1.self, forKey: .consignee)
            self.consignmentSecurityDeclaration = try container.decodeIfPresent(CargoOnFlightAirWaybillConsignmentSecurityDeclaration1.self, forKey: .consignmentSecurityDeclaration)
            self.consignmentSecurityDeclarationSetToNone = try container.decodeIfPresent(Bool.self, forKey: .consignmentSecurityDeclarationSetToNone)
            self.customsOriginCode = try container.decodeIfPresent(String.self, forKey: .customsOriginCode)
            self.customsOriginCodeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .customsOriginCodeSetToNone)
            self.issuingAgentName = try container.decodeIfPresent(String.self, forKey: .issuingAgentName)
            self.issuingAgentNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .issuingAgentNameSetToNone)
            self.otherCharges = try container.decodeIfPresent([CargoOnFlightAirWaybillOtherCharge1].self, forKey: .otherCharges)
            self.otherServiceInformation = try container.decodeIfPresent(String.self, forKey: .otherServiceInformation)
            self.otherServiceInformationSetToNone = try container.decodeIfPresent(Bool.self, forKey: .otherServiceInformationSetToNone)
            self.rateLines = try container.decodeIfPresent([CargoOnFlightAirWaybillRateLine1].self, forKey: .rateLines)
            self.shipper = try container.decodeIfPresent(CargoOnFlightAirWaybillParty1.self, forKey: .shipper)
            self.shippersCertification = try container.decodeIfPresent(String.self, forKey: .shippersCertification)
            self.specialServiceRequest = try container.decodeIfPresent(String.self, forKey: .specialServiceRequest)
            self.specialServiceRequestSetToNone = try container.decodeIfPresent(Bool.self, forKey: .specialServiceRequestSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.alsoNotify, forKey: .alsoNotify)
            try container.encodeIfPresent(self.alsoNotifySetToNone, forKey: .alsoNotifySetToNone)
            try container.encodeIfPresent(self.carriersExecution, forKey: .carriersExecution)
            try container.encodeIfPresent(self.chargesDeclaration, forKey: .chargesDeclaration)
            try container.encodeIfPresent(self.consignee, forKey: .consignee)
            try container.encodeIfPresent(self.consignmentSecurityDeclaration, forKey: .consignmentSecurityDeclaration)
            try container.encodeIfPresent(self.consignmentSecurityDeclarationSetToNone, forKey: .consignmentSecurityDeclarationSetToNone)
            try container.encodeIfPresent(self.customsOriginCode, forKey: .customsOriginCode)
            try container.encodeIfPresent(self.customsOriginCodeSetToNone, forKey: .customsOriginCodeSetToNone)
            try container.encodeIfPresent(self.issuingAgentName, forKey: .issuingAgentName)
            try container.encodeIfPresent(self.issuingAgentNameSetToNone, forKey: .issuingAgentNameSetToNone)
            try container.encodeIfPresent(self.otherCharges, forKey: .otherCharges)
            try container.encodeIfPresent(self.otherServiceInformation, forKey: .otherServiceInformation)
            try container.encodeIfPresent(self.otherServiceInformationSetToNone, forKey: .otherServiceInformationSetToNone)
            try container.encodeIfPresent(self.rateLines, forKey: .rateLines)
            try container.encodeIfPresent(self.shipper, forKey: .shipper)
            try container.encodeIfPresent(self.shippersCertification, forKey: .shippersCertification)
            try container.encodeIfPresent(self.specialServiceRequest, forKey: .specialServiceRequest)
            try container.encodeIfPresent(self.specialServiceRequestSetToNone, forKey: .specialServiceRequestSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case alsoNotify = "also_notify"
            case alsoNotifySetToNone = "also_notify__set_to_None"
            case carriersExecution = "carriers_execution"
            case chargesDeclaration = "charges_declaration"
            case consignee
            case consignmentSecurityDeclaration = "consignment_security_declaration"
            case consignmentSecurityDeclarationSetToNone = "consignment_security_declaration__set_to_None"
            case customsOriginCode = "customs_origin_code"
            case customsOriginCodeSetToNone = "customs_origin_code__set_to_None"
            case issuingAgentName = "issuing_agent_name"
            case issuingAgentNameSetToNone = "issuing_agent_name__set_to_None"
            case otherCharges = "other_charges"
            case otherServiceInformation = "other_service_information"
            case otherServiceInformationSetToNone = "other_service_information__set_to_None"
            case rateLines = "rate_lines"
            case shipper
            case shippersCertification = "shippers_certification"
            case specialServiceRequest = "special_service_request"
            case specialServiceRequestSetToNone = "special_service_request__set_to_None"
        }
    }
}