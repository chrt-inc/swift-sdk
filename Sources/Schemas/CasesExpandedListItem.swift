import Foundation

public struct CasesExpandedListItem: Codable, Hashable, Sendable {
    public let `case`: Case1
    public let coordinatorOrgPublicData: OrgPublicData1?
    public let executorOrgPublicData: [OrgPublicData1]
    public let offChrtExecutorOrgs: [OffChrtProviderOrg1]
    public let offChrtShipperOrg: OffChrtShipperOrg1?
    public let operationsTasks: [OperationsTask1]
    public let order: Order1
    public let shipperOrgPublicData: OrgPublicData1?
    public let shippingTaskGroups: [CasesExpandedListShippingTaskGroup]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        case: Case1,
        coordinatorOrgPublicData: OrgPublicData1? = nil,
        executorOrgPublicData: [OrgPublicData1],
        offChrtExecutorOrgs: [OffChrtProviderOrg1],
        offChrtShipperOrg: OffChrtShipperOrg1? = nil,
        operationsTasks: [OperationsTask1],
        order: Order1,
        shipperOrgPublicData: OrgPublicData1? = nil,
        shippingTaskGroups: [CasesExpandedListShippingTaskGroup],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.case = `case`
        self.coordinatorOrgPublicData = coordinatorOrgPublicData
        self.executorOrgPublicData = executorOrgPublicData
        self.offChrtExecutorOrgs = offChrtExecutorOrgs
        self.offChrtShipperOrg = offChrtShipperOrg
        self.operationsTasks = operationsTasks
        self.order = order
        self.shipperOrgPublicData = shipperOrgPublicData
        self.shippingTaskGroups = shippingTaskGroups
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.case = try container.decode(Case1.self, forKey: .case)
        self.coordinatorOrgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .coordinatorOrgPublicData)
        self.executorOrgPublicData = try container.decode([OrgPublicData1].self, forKey: .executorOrgPublicData)
        self.offChrtExecutorOrgs = try container.decode([OffChrtProviderOrg1].self, forKey: .offChrtExecutorOrgs)
        self.offChrtShipperOrg = try container.decodeIfPresent(OffChrtShipperOrg1.self, forKey: .offChrtShipperOrg)
        self.operationsTasks = try container.decode([OperationsTask1].self, forKey: .operationsTasks)
        self.order = try container.decode(Order1.self, forKey: .order)
        self.shipperOrgPublicData = try container.decodeIfPresent(OrgPublicData1.self, forKey: .shipperOrgPublicData)
        self.shippingTaskGroups = try container.decode([CasesExpandedListShippingTaskGroup].self, forKey: .shippingTaskGroups)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.case, forKey: .case)
        try container.encodeIfPresent(self.coordinatorOrgPublicData, forKey: .coordinatorOrgPublicData)
        try container.encode(self.executorOrgPublicData, forKey: .executorOrgPublicData)
        try container.encode(self.offChrtExecutorOrgs, forKey: .offChrtExecutorOrgs)
        try container.encodeIfPresent(self.offChrtShipperOrg, forKey: .offChrtShipperOrg)
        try container.encode(self.operationsTasks, forKey: .operationsTasks)
        try container.encode(self.order, forKey: .order)
        try container.encodeIfPresent(self.shipperOrgPublicData, forKey: .shipperOrgPublicData)
        try container.encode(self.shippingTaskGroups, forKey: .shippingTaskGroups)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case `case`
        case coordinatorOrgPublicData = "coordinator_org_public_data"
        case executorOrgPublicData = "executor_org_public_data"
        case offChrtExecutorOrgs = "off_chrt_executor_orgs"
        case offChrtShipperOrg = "off_chrt_shipper_org"
        case operationsTasks = "operations_tasks"
        case order
        case shipperOrgPublicData = "shipper_org_public_data"
        case shippingTaskGroups = "shipping_task_groups"
    }
}