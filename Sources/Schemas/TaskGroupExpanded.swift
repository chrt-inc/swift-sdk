import Foundation

public struct TaskGroupExpanded: Codable, Hashable, Sendable {
    public let awbNumbers: [String]?
    public let coordinatorOrgCompanyName: String?
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let coordinatorOrgHandle: String?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let driver: Driver1?
    public let executorOrgCompanyName: String?
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let executorOrgHandle: String?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let offChrtShipperOrgCompanyName: String?
    public let offChrtShipperOrgId: String?
    public let shipperOrgCompanyName: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let taskGroup: TaskGroup1
    public let tasksExpanded: [TaskExpanded]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        awbNumbers: [String]? = nil,
        coordinatorOrgCompanyName: String? = nil,
        coordinatorOrgHandle: String? = nil,
        coordinatorOrgId: String? = nil,
        driver: Driver1? = nil,
        executorOrgCompanyName: String? = nil,
        executorOrgHandle: String? = nil,
        executorOrgId: String? = nil,
        offChrtShipperOrgCompanyName: String? = nil,
        offChrtShipperOrgId: String? = nil,
        shipperOrgCompanyName: String? = nil,
        shipperOrgId: String? = nil,
        taskGroup: TaskGroup1,
        tasksExpanded: [TaskExpanded]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.awbNumbers = awbNumbers
        self.coordinatorOrgCompanyName = coordinatorOrgCompanyName
        self.coordinatorOrgHandle = coordinatorOrgHandle
        self.coordinatorOrgId = coordinatorOrgId
        self.driver = driver
        self.executorOrgCompanyName = executorOrgCompanyName
        self.executorOrgHandle = executorOrgHandle
        self.executorOrgId = executorOrgId
        self.offChrtShipperOrgCompanyName = offChrtShipperOrgCompanyName
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.shipperOrgId = shipperOrgId
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.awbNumbers = try container.decodeIfPresent([String].self, forKey: .awbNumbers)
        self.coordinatorOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgCompanyName)
        self.coordinatorOrgHandle = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgHandle)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.driver = try container.decodeIfPresent(Driver1.self, forKey: .driver)
        self.executorOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .executorOrgCompanyName)
        self.executorOrgHandle = try container.decodeIfPresent(String.self, forKey: .executorOrgHandle)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.offChrtShipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgCompanyName)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeIfPresent([TaskExpanded].self, forKey: .tasksExpanded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.awbNumbers, forKey: .awbNumbers)
        try container.encodeIfPresent(self.coordinatorOrgCompanyName, forKey: .coordinatorOrgCompanyName)
        try container.encodeIfPresent(self.coordinatorOrgHandle, forKey: .coordinatorOrgHandle)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.driver, forKey: .driver)
        try container.encodeIfPresent(self.executorOrgCompanyName, forKey: .executorOrgCompanyName)
        try container.encodeIfPresent(self.executorOrgHandle, forKey: .executorOrgHandle)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgCompanyName, forKey: .offChrtShipperOrgCompanyName)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case awbNumbers = "awb_numbers"
        case coordinatorOrgCompanyName = "coordinator_org_company_name"
        case coordinatorOrgHandle = "coordinator_org_handle"
        case coordinatorOrgId = "coordinator_org_id"
        case driver
        case executorOrgCompanyName = "executor_org_company_name"
        case executorOrgHandle = "executor_org_handle"
        case executorOrgId = "executor_org_id"
        case offChrtShipperOrgCompanyName = "off_chrt_shipper_org_company_name"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case shipperOrgCompanyName = "shipper_org_company_name"
        case shipperOrgId = "shipper_org_id"
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
    }
}