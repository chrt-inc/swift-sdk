import Foundation

public struct TaskGroupExpanded: Codable, Hashable, Sendable {
    public let taskGroup: TaskGroup1
    public let tasksExpanded: [TaskExpanded]?
    public let driver: Driver1?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let executorOrgCompanyName: String?
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let executorOrgHandle: String?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let coordinatorOrgCompanyName: String?
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let coordinatorOrgHandle: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let shipperOrgCompanyName: String?
    public let offChrtShipperOrgId: String?
    public let offChrtShipperOrgCompanyName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        tasksExpanded: [TaskExpanded]? = nil,
        driver: Driver1? = nil,
        executorOrgId: String? = nil,
        executorOrgCompanyName: String? = nil,
        executorOrgHandle: String? = nil,
        coordinatorOrgId: String? = nil,
        coordinatorOrgCompanyName: String? = nil,
        coordinatorOrgHandle: String? = nil,
        shipperOrgId: String? = nil,
        shipperOrgCompanyName: String? = nil,
        offChrtShipperOrgId: String? = nil,
        offChrtShipperOrgCompanyName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.tasksExpanded = tasksExpanded
        self.driver = driver
        self.executorOrgId = executorOrgId
        self.executorOrgCompanyName = executorOrgCompanyName
        self.executorOrgHandle = executorOrgHandle
        self.coordinatorOrgId = coordinatorOrgId
        self.coordinatorOrgCompanyName = coordinatorOrgCompanyName
        self.coordinatorOrgHandle = coordinatorOrgHandle
        self.shipperOrgId = shipperOrgId
        self.shipperOrgCompanyName = shipperOrgCompanyName
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.offChrtShipperOrgCompanyName = offChrtShipperOrgCompanyName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.tasksExpanded = try container.decodeIfPresent([TaskExpanded].self, forKey: .tasksExpanded)
        self.driver = try container.decodeIfPresent(Driver1.self, forKey: .driver)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.executorOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .executorOrgCompanyName)
        self.executorOrgHandle = try container.decodeIfPresent(String.self, forKey: .executorOrgHandle)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.coordinatorOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgCompanyName)
        self.coordinatorOrgHandle = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgHandle)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.shipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .shipperOrgCompanyName)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.offChrtShipperOrgCompanyName = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgCompanyName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encodeIfPresent(self.tasksExpanded, forKey: .tasksExpanded)
        try container.encodeIfPresent(self.driver, forKey: .driver)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.executorOrgCompanyName, forKey: .executorOrgCompanyName)
        try container.encodeIfPresent(self.executorOrgHandle, forKey: .executorOrgHandle)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.coordinatorOrgCompanyName, forKey: .coordinatorOrgCompanyName)
        try container.encodeIfPresent(self.coordinatorOrgHandle, forKey: .coordinatorOrgHandle)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.shipperOrgCompanyName, forKey: .shipperOrgCompanyName)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgCompanyName, forKey: .offChrtShipperOrgCompanyName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case tasksExpanded = "tasks_expanded"
        case driver
        case executorOrgId = "executor_org_id"
        case executorOrgCompanyName = "executor_org_company_name"
        case executorOrgHandle = "executor_org_handle"
        case coordinatorOrgId = "coordinator_org_id"
        case coordinatorOrgCompanyName = "coordinator_org_company_name"
        case coordinatorOrgHandle = "coordinator_org_handle"
        case shipperOrgId = "shipper_org_id"
        case shipperOrgCompanyName = "shipper_org_company_name"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case offChrtShipperOrgCompanyName = "off_chrt_shipper_org_company_name"
    }
}