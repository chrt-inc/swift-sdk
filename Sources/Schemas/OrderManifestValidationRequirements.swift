import Foundation

public struct OrderManifestValidationRequirements: Codable, Hashable, Sendable {
    public let atLeastOneTaskHasTimeWindow: Bool?
    public let cargosHaveValidLifecycle: Bool?
    public let orderHasCoordinator: Bool?
    public let orderHasShipper: Bool?
    public let orderHasTaskGroups: Bool?
    public let taskGroupsHaveValidTaskSequence: Bool?
    public let taskGroupsHaveValidTasks: Bool?
    public let tasksHaveValidActions: Bool?
    public let tasksHaveValidCargo: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        atLeastOneTaskHasTimeWindow: Bool? = nil,
        cargosHaveValidLifecycle: Bool? = nil,
        orderHasCoordinator: Bool? = nil,
        orderHasShipper: Bool? = nil,
        orderHasTaskGroups: Bool? = nil,
        taskGroupsHaveValidTaskSequence: Bool? = nil,
        taskGroupsHaveValidTasks: Bool? = nil,
        tasksHaveValidActions: Bool? = nil,
        tasksHaveValidCargo: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.atLeastOneTaskHasTimeWindow = atLeastOneTaskHasTimeWindow
        self.cargosHaveValidLifecycle = cargosHaveValidLifecycle
        self.orderHasCoordinator = orderHasCoordinator
        self.orderHasShipper = orderHasShipper
        self.orderHasTaskGroups = orderHasTaskGroups
        self.taskGroupsHaveValidTaskSequence = taskGroupsHaveValidTaskSequence
        self.taskGroupsHaveValidTasks = taskGroupsHaveValidTasks
        self.tasksHaveValidActions = tasksHaveValidActions
        self.tasksHaveValidCargo = tasksHaveValidCargo
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.atLeastOneTaskHasTimeWindow = try container.decodeIfPresent(Bool.self, forKey: .atLeastOneTaskHasTimeWindow)
        self.cargosHaveValidLifecycle = try container.decodeIfPresent(Bool.self, forKey: .cargosHaveValidLifecycle)
        self.orderHasCoordinator = try container.decodeIfPresent(Bool.self, forKey: .orderHasCoordinator)
        self.orderHasShipper = try container.decodeIfPresent(Bool.self, forKey: .orderHasShipper)
        self.orderHasTaskGroups = try container.decodeIfPresent(Bool.self, forKey: .orderHasTaskGroups)
        self.taskGroupsHaveValidTaskSequence = try container.decodeIfPresent(Bool.self, forKey: .taskGroupsHaveValidTaskSequence)
        self.taskGroupsHaveValidTasks = try container.decodeIfPresent(Bool.self, forKey: .taskGroupsHaveValidTasks)
        self.tasksHaveValidActions = try container.decodeIfPresent(Bool.self, forKey: .tasksHaveValidActions)
        self.tasksHaveValidCargo = try container.decodeIfPresent(Bool.self, forKey: .tasksHaveValidCargo)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.atLeastOneTaskHasTimeWindow, forKey: .atLeastOneTaskHasTimeWindow)
        try container.encodeIfPresent(self.cargosHaveValidLifecycle, forKey: .cargosHaveValidLifecycle)
        try container.encodeIfPresent(self.orderHasCoordinator, forKey: .orderHasCoordinator)
        try container.encodeIfPresent(self.orderHasShipper, forKey: .orderHasShipper)
        try container.encodeIfPresent(self.orderHasTaskGroups, forKey: .orderHasTaskGroups)
        try container.encodeIfPresent(self.taskGroupsHaveValidTaskSequence, forKey: .taskGroupsHaveValidTaskSequence)
        try container.encodeIfPresent(self.taskGroupsHaveValidTasks, forKey: .taskGroupsHaveValidTasks)
        try container.encodeIfPresent(self.tasksHaveValidActions, forKey: .tasksHaveValidActions)
        try container.encodeIfPresent(self.tasksHaveValidCargo, forKey: .tasksHaveValidCargo)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case atLeastOneTaskHasTimeWindow = "at_least_one_task_has_time_window"
        case cargosHaveValidLifecycle = "cargos_have_valid_lifecycle"
        case orderHasCoordinator = "order_has_coordinator"
        case orderHasShipper = "order_has_shipper"
        case orderHasTaskGroups = "order_has_task_groups"
        case taskGroupsHaveValidTaskSequence = "task_groups_have_valid_task_sequence"
        case taskGroupsHaveValidTasks = "task_groups_have_valid_tasks"
        case tasksHaveValidActions = "tasks_have_valid_actions"
        case tasksHaveValidCargo = "tasks_have_valid_cargo"
    }
}