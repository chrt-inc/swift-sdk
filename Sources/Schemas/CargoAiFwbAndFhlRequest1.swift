import Foundation

public struct CargoAiFwbAndFhlRequest1: Codable, Hashable, Sendable {
    public let agent: CargoAiFwbAndFhlAgent1?
    public let awbNumber: String
    public let awbStatus: PendingDelivery
    public let chargesDeclaration: CargoAiFwbAndFhlChargesDeclaration1?
    public let consignee: CargoAiFwbAndFhlParty1
    public let customsOrigin: String?
    public let execution: CargoAiFwbAndFhlExecution1?
    public let handling: CargoAiFwbAndFhlHandling1?
    public let hawbs: [CargoAiFwbAndFhlHouse1]?
    public let isFhlOnly: Bool?
    public let notify: CargoAiFwbAndFhlParty1?
    public let oci: CargoAiFwbAndFhlOci1?
    public let otherCharges: [CargoAiFwbAndFhlOtherCharge1]?
    public let rates: [CargoAiFwbAndFhlRate1]?
    public let routingDetails: [CargoAiFwbAndFhlRouting1]?
    public let shipper: CargoAiFwbAndFhlParty1
    public let userCompanyName: String
    public let userEmail: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        agent: CargoAiFwbAndFhlAgent1? = nil,
        awbNumber: String,
        awbStatus: PendingDelivery,
        chargesDeclaration: CargoAiFwbAndFhlChargesDeclaration1? = nil,
        consignee: CargoAiFwbAndFhlParty1,
        customsOrigin: String? = nil,
        execution: CargoAiFwbAndFhlExecution1? = nil,
        handling: CargoAiFwbAndFhlHandling1? = nil,
        hawbs: [CargoAiFwbAndFhlHouse1]? = nil,
        isFhlOnly: Bool? = nil,
        notify: CargoAiFwbAndFhlParty1? = nil,
        oci: CargoAiFwbAndFhlOci1? = nil,
        otherCharges: [CargoAiFwbAndFhlOtherCharge1]? = nil,
        rates: [CargoAiFwbAndFhlRate1]? = nil,
        routingDetails: [CargoAiFwbAndFhlRouting1]? = nil,
        shipper: CargoAiFwbAndFhlParty1,
        userCompanyName: String,
        userEmail: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.agent = agent
        self.awbNumber = awbNumber
        self.awbStatus = awbStatus
        self.chargesDeclaration = chargesDeclaration
        self.consignee = consignee
        self.customsOrigin = customsOrigin
        self.execution = execution
        self.handling = handling
        self.hawbs = hawbs
        self.isFhlOnly = isFhlOnly
        self.notify = notify
        self.oci = oci
        self.otherCharges = otherCharges
        self.rates = rates
        self.routingDetails = routingDetails
        self.shipper = shipper
        self.userCompanyName = userCompanyName
        self.userEmail = userEmail
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.agent = try container.decodeIfPresent(CargoAiFwbAndFhlAgent1.self, forKey: .agent)
        self.awbNumber = try container.decode(String.self, forKey: .awbNumber)
        self.awbStatus = try container.decode(PendingDelivery.self, forKey: .awbStatus)
        self.chargesDeclaration = try container.decodeIfPresent(CargoAiFwbAndFhlChargesDeclaration1.self, forKey: .chargesDeclaration)
        self.consignee = try container.decode(CargoAiFwbAndFhlParty1.self, forKey: .consignee)
        self.customsOrigin = try container.decodeIfPresent(String.self, forKey: .customsOrigin)
        self.execution = try container.decodeIfPresent(CargoAiFwbAndFhlExecution1.self, forKey: .execution)
        self.handling = try container.decodeIfPresent(CargoAiFwbAndFhlHandling1.self, forKey: .handling)
        self.hawbs = try container.decodeIfPresent([CargoAiFwbAndFhlHouse1].self, forKey: .hawbs)
        self.isFhlOnly = try container.decodeIfPresent(Bool.self, forKey: .isFhlOnly)
        self.notify = try container.decodeIfPresent(CargoAiFwbAndFhlParty1.self, forKey: .notify)
        self.oci = try container.decodeIfPresent(CargoAiFwbAndFhlOci1.self, forKey: .oci)
        self.otherCharges = try container.decodeIfPresent([CargoAiFwbAndFhlOtherCharge1].self, forKey: .otherCharges)
        self.rates = try container.decodeIfPresent([CargoAiFwbAndFhlRate1].self, forKey: .rates)
        self.routingDetails = try container.decodeIfPresent([CargoAiFwbAndFhlRouting1].self, forKey: .routingDetails)
        self.shipper = try container.decode(CargoAiFwbAndFhlParty1.self, forKey: .shipper)
        self.userCompanyName = try container.decode(String.self, forKey: .userCompanyName)
        self.userEmail = try container.decode(String.self, forKey: .userEmail)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.agent, forKey: .agent)
        try container.encode(self.awbNumber, forKey: .awbNumber)
        try container.encode(self.awbStatus, forKey: .awbStatus)
        try container.encodeIfPresent(self.chargesDeclaration, forKey: .chargesDeclaration)
        try container.encode(self.consignee, forKey: .consignee)
        try container.encodeIfPresent(self.customsOrigin, forKey: .customsOrigin)
        try container.encodeIfPresent(self.execution, forKey: .execution)
        try container.encodeIfPresent(self.handling, forKey: .handling)
        try container.encodeIfPresent(self.hawbs, forKey: .hawbs)
        try container.encodeIfPresent(self.isFhlOnly, forKey: .isFhlOnly)
        try container.encodeIfPresent(self.notify, forKey: .notify)
        try container.encodeIfPresent(self.oci, forKey: .oci)
        try container.encodeIfPresent(self.otherCharges, forKey: .otherCharges)
        try container.encodeIfPresent(self.rates, forKey: .rates)
        try container.encodeIfPresent(self.routingDetails, forKey: .routingDetails)
        try container.encode(self.shipper, forKey: .shipper)
        try container.encode(self.userCompanyName, forKey: .userCompanyName)
        try container.encode(self.userEmail, forKey: .userEmail)
    }

    public enum PendingDelivery: String, Codable, Hashable, CaseIterable, Sendable {
        case pendingDelivery = "PENDING_DELIVERY"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case agent
        case awbNumber = "awb_number"
        case awbStatus = "awb_status"
        case chargesDeclaration
        case consignee
        case customsOrigin
        case execution
        case handling
        case hawbs
        case isFhlOnly
        case notify
        case oci
        case otherCharges
        case rates
        case routingDetails
        case shipper
        case userCompanyName
        case userEmail
    }
}