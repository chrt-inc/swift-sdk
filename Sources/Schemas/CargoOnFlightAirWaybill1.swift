import Foundation

public struct CargoOnFlightAirWaybill1: Codable, Hashable, Sendable {
    public let id: String
    public let alsoNotify: CargoOnFlightAirWaybillParty1?
    public let cargoOnFlightBookingId: String
    public let carriersExecution: CargoOnFlightAirWaybillCarriersExecution1
    public let chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1
    public let consignee: CargoOnFlightAirWaybillParty1
    public let consignmentSecurityDeclaration: CargoOnFlightAirWaybillConsignmentSecurityDeclaration1?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    public let customsOriginCode: String?
    public let iataCassOfficeId: String
    public let issuingAgentName: String?
    public let latestFwbMessage: CargoOnFlightAirWaybillFwbMessage1?
    public let orderId: String
    public let otherCharges: [CargoOnFlightAirWaybillOtherCharge1]?
    public let otherServiceInformation: String?
    public let rateLines: [CargoOnFlightAirWaybillRateLine1]?
    public let schemaVersion: Int
    public let shipper: CargoOnFlightAirWaybillParty1
    public let shippersCertification: String
    public let specialServiceRequest: String?
    public let taskGroupId: String
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        alsoNotify: CargoOnFlightAirWaybillParty1? = nil,
        cargoOnFlightBookingId: String,
        carriersExecution: CargoOnFlightAirWaybillCarriersExecution1,
        chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1,
        consignee: CargoOnFlightAirWaybillParty1,
        consignmentSecurityDeclaration: CargoOnFlightAirWaybillConsignmentSecurityDeclaration1? = nil,
        createdAtTimestamp: Date,
        createdByOrgId: String,
        createdByUserId: String? = nil,
        customsOriginCode: String? = nil,
        iataCassOfficeId: String,
        issuingAgentName: String? = nil,
        latestFwbMessage: CargoOnFlightAirWaybillFwbMessage1? = nil,
        orderId: String,
        otherCharges: [CargoOnFlightAirWaybillOtherCharge1]? = nil,
        otherServiceInformation: String? = nil,
        rateLines: [CargoOnFlightAirWaybillRateLine1]? = nil,
        schemaVersion: Int,
        shipper: CargoOnFlightAirWaybillParty1,
        shippersCertification: String,
        specialServiceRequest: String? = nil,
        taskGroupId: String,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.alsoNotify = alsoNotify
        self.cargoOnFlightBookingId = cargoOnFlightBookingId
        self.carriersExecution = carriersExecution
        self.chargesDeclaration = chargesDeclaration
        self.consignee = consignee
        self.consignmentSecurityDeclaration = consignmentSecurityDeclaration
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.customsOriginCode = customsOriginCode
        self.iataCassOfficeId = iataCassOfficeId
        self.issuingAgentName = issuingAgentName
        self.latestFwbMessage = latestFwbMessage
        self.orderId = orderId
        self.otherCharges = otherCharges
        self.otherServiceInformation = otherServiceInformation
        self.rateLines = rateLines
        self.schemaVersion = schemaVersion
        self.shipper = shipper
        self.shippersCertification = shippersCertification
        self.specialServiceRequest = specialServiceRequest
        self.taskGroupId = taskGroupId
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.alsoNotify = try container.decodeIfPresent(CargoOnFlightAirWaybillParty1.self, forKey: .alsoNotify)
        self.cargoOnFlightBookingId = try container.decode(String.self, forKey: .cargoOnFlightBookingId)
        self.carriersExecution = try container.decode(CargoOnFlightAirWaybillCarriersExecution1.self, forKey: .carriersExecution)
        self.chargesDeclaration = try container.decode(CargoOnFlightAirWaybillChargesDeclaration1.self, forKey: .chargesDeclaration)
        self.consignee = try container.decode(CargoOnFlightAirWaybillParty1.self, forKey: .consignee)
        self.consignmentSecurityDeclaration = try container.decodeIfPresent(CargoOnFlightAirWaybillConsignmentSecurityDeclaration1.self, forKey: .consignmentSecurityDeclaration)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.customsOriginCode = try container.decodeIfPresent(String.self, forKey: .customsOriginCode)
        self.iataCassOfficeId = try container.decode(String.self, forKey: .iataCassOfficeId)
        self.issuingAgentName = try container.decodeIfPresent(String.self, forKey: .issuingAgentName)
        self.latestFwbMessage = try container.decodeIfPresent(CargoOnFlightAirWaybillFwbMessage1.self, forKey: .latestFwbMessage)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.otherCharges = try container.decodeIfPresent([CargoOnFlightAirWaybillOtherCharge1].self, forKey: .otherCharges)
        self.otherServiceInformation = try container.decodeIfPresent(String.self, forKey: .otherServiceInformation)
        self.rateLines = try container.decodeIfPresent([CargoOnFlightAirWaybillRateLine1].self, forKey: .rateLines)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipper = try container.decode(CargoOnFlightAirWaybillParty1.self, forKey: .shipper)
        self.shippersCertification = try container.decode(String.self, forKey: .shippersCertification)
        self.specialServiceRequest = try container.decodeIfPresent(String.self, forKey: .specialServiceRequest)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.alsoNotify, forKey: .alsoNotify)
        try container.encode(self.cargoOnFlightBookingId, forKey: .cargoOnFlightBookingId)
        try container.encode(self.carriersExecution, forKey: .carriersExecution)
        try container.encode(self.chargesDeclaration, forKey: .chargesDeclaration)
        try container.encode(self.consignee, forKey: .consignee)
        try container.encodeIfPresent(self.consignmentSecurityDeclaration, forKey: .consignmentSecurityDeclaration)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.customsOriginCode, forKey: .customsOriginCode)
        try container.encode(self.iataCassOfficeId, forKey: .iataCassOfficeId)
        try container.encodeIfPresent(self.issuingAgentName, forKey: .issuingAgentName)
        try container.encodeIfPresent(self.latestFwbMessage, forKey: .latestFwbMessage)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.otherCharges, forKey: .otherCharges)
        try container.encodeIfPresent(self.otherServiceInformation, forKey: .otherServiceInformation)
        try container.encodeIfPresent(self.rateLines, forKey: .rateLines)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shipper, forKey: .shipper)
        try container.encode(self.shippersCertification, forKey: .shippersCertification)
        try container.encodeIfPresent(self.specialServiceRequest, forKey: .specialServiceRequest)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case alsoNotify = "also_notify"
        case cargoOnFlightBookingId = "cargo_on_flight_booking_id"
        case carriersExecution = "carriers_execution"
        case chargesDeclaration = "charges_declaration"
        case consignee
        case consignmentSecurityDeclaration = "consignment_security_declaration"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case customsOriginCode = "customs_origin_code"
        case iataCassOfficeId = "iata_cass_office_id"
        case issuingAgentName = "issuing_agent_name"
        case latestFwbMessage = "latest_fwb_message"
        case orderId = "order_id"
        case otherCharges = "other_charges"
        case otherServiceInformation = "other_service_information"
        case rateLines = "rate_lines"
        case schemaVersion = "schema_version"
        case shipper
        case shippersCertification = "shippers_certification"
        case specialServiceRequest = "special_service_request"
        case taskGroupId = "task_group_id"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}