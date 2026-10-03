import Foundation

extension Requests {
    public struct CargoOnFlightAirWaybillClientCreate1: Codable, Hashable, Sendable {
        public let alsoNotify: CargoOnFlightAirWaybillParty1?
        public let cargoOnFlightBookingId: String
        public let carriersExecution: CargoOnFlightAirWaybillCarriersExecution1
        public let chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1
        public let consignee: CargoOnFlightAirWaybillParty1
        public let consignmentSecurityDeclaration: CargoOnFlightAirWaybillConsignmentSecurityDeclaration1?
        public let customsOriginCode: String?
        public let iataCassOfficeId: String?
        public let issuingAgentName: String?
        public let otherCharges: [CargoOnFlightAirWaybillOtherCharge1]?
        public let otherServiceInformation: String?
        public let rateLines: [CargoOnFlightAirWaybillRateLine1]
        public let schemaVersion: Int
        public let shipper: CargoOnFlightAirWaybillParty1
        public let shippersCertification: String
        public let specialServiceRequest: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            alsoNotify: CargoOnFlightAirWaybillParty1? = nil,
            cargoOnFlightBookingId: String,
            carriersExecution: CargoOnFlightAirWaybillCarriersExecution1,
            chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1,
            consignee: CargoOnFlightAirWaybillParty1,
            consignmentSecurityDeclaration: CargoOnFlightAirWaybillConsignmentSecurityDeclaration1? = nil,
            customsOriginCode: String? = nil,
            iataCassOfficeId: String? = nil,
            issuingAgentName: String? = nil,
            otherCharges: [CargoOnFlightAirWaybillOtherCharge1]? = nil,
            otherServiceInformation: String? = nil,
            rateLines: [CargoOnFlightAirWaybillRateLine1],
            schemaVersion: Int,
            shipper: CargoOnFlightAirWaybillParty1,
            shippersCertification: String,
            specialServiceRequest: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.alsoNotify = alsoNotify
            self.cargoOnFlightBookingId = cargoOnFlightBookingId
            self.carriersExecution = carriersExecution
            self.chargesDeclaration = chargesDeclaration
            self.consignee = consignee
            self.consignmentSecurityDeclaration = consignmentSecurityDeclaration
            self.customsOriginCode = customsOriginCode
            self.iataCassOfficeId = iataCassOfficeId
            self.issuingAgentName = issuingAgentName
            self.otherCharges = otherCharges
            self.otherServiceInformation = otherServiceInformation
            self.rateLines = rateLines
            self.schemaVersion = schemaVersion
            self.shipper = shipper
            self.shippersCertification = shippersCertification
            self.specialServiceRequest = specialServiceRequest
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.alsoNotify = try container.decodeIfPresent(CargoOnFlightAirWaybillParty1.self, forKey: .alsoNotify)
            self.cargoOnFlightBookingId = try container.decode(String.self, forKey: .cargoOnFlightBookingId)
            self.carriersExecution = try container.decode(CargoOnFlightAirWaybillCarriersExecution1.self, forKey: .carriersExecution)
            self.chargesDeclaration = try container.decode(CargoOnFlightAirWaybillChargesDeclaration1.self, forKey: .chargesDeclaration)
            self.consignee = try container.decode(CargoOnFlightAirWaybillParty1.self, forKey: .consignee)
            self.consignmentSecurityDeclaration = try container.decodeIfPresent(CargoOnFlightAirWaybillConsignmentSecurityDeclaration1.self, forKey: .consignmentSecurityDeclaration)
            self.customsOriginCode = try container.decodeIfPresent(String.self, forKey: .customsOriginCode)
            self.iataCassOfficeId = try container.decodeIfPresent(String.self, forKey: .iataCassOfficeId)
            self.issuingAgentName = try container.decodeIfPresent(String.self, forKey: .issuingAgentName)
            self.otherCharges = try container.decodeIfPresent([CargoOnFlightAirWaybillOtherCharge1].self, forKey: .otherCharges)
            self.otherServiceInformation = try container.decodeIfPresent(String.self, forKey: .otherServiceInformation)
            self.rateLines = try container.decode([CargoOnFlightAirWaybillRateLine1].self, forKey: .rateLines)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.shipper = try container.decode(CargoOnFlightAirWaybillParty1.self, forKey: .shipper)
            self.shippersCertification = try container.decode(String.self, forKey: .shippersCertification)
            self.specialServiceRequest = try container.decodeIfPresent(String.self, forKey: .specialServiceRequest)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.alsoNotify, forKey: .alsoNotify)
            try container.encode(self.cargoOnFlightBookingId, forKey: .cargoOnFlightBookingId)
            try container.encode(self.carriersExecution, forKey: .carriersExecution)
            try container.encode(self.chargesDeclaration, forKey: .chargesDeclaration)
            try container.encode(self.consignee, forKey: .consignee)
            try container.encodeIfPresent(self.consignmentSecurityDeclaration, forKey: .consignmentSecurityDeclaration)
            try container.encodeIfPresent(self.customsOriginCode, forKey: .customsOriginCode)
            try container.encodeIfPresent(self.iataCassOfficeId, forKey: .iataCassOfficeId)
            try container.encodeIfPresent(self.issuingAgentName, forKey: .issuingAgentName)
            try container.encodeIfPresent(self.otherCharges, forKey: .otherCharges)
            try container.encodeIfPresent(self.otherServiceInformation, forKey: .otherServiceInformation)
            try container.encode(self.rateLines, forKey: .rateLines)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.shipper, forKey: .shipper)
            try container.encode(self.shippersCertification, forKey: .shippersCertification)
            try container.encodeIfPresent(self.specialServiceRequest, forKey: .specialServiceRequest)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case alsoNotify = "also_notify"
            case cargoOnFlightBookingId = "cargo_on_flight_booking_id"
            case carriersExecution = "carriers_execution"
            case chargesDeclaration = "charges_declaration"
            case consignee
            case consignmentSecurityDeclaration = "consignment_security_declaration"
            case customsOriginCode = "customs_origin_code"
            case iataCassOfficeId = "iata_cass_office_id"
            case issuingAgentName = "issuing_agent_name"
            case otherCharges = "other_charges"
            case otherServiceInformation = "other_service_information"
            case rateLines = "rate_lines"
            case schemaVersion = "schema_version"
            case shipper
            case shippersCertification = "shippers_certification"
            case specialServiceRequest = "special_service_request"
        }
    }
}