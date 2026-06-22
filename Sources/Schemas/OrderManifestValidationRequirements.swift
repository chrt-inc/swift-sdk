import Foundation

public struct OrderManifestValidationRequirements: Codable, Hashable, Sendable {
    public let orderHasTaskGroups: Bool?
    public let taskGroupsHaveValidTasks: Bool?
    public let tasksHaveValidActions: Bool?
    public let taskGroupsHaveValidTaskSequence: Bool?
    public let tasksHaveValidCargo: Bool?
    public let cargosHaveValidLifecycle: Bool?
    public let atLeastOneTaskHasTimeWindow: Bool?
    public let orderHasShipper: Bool?
    public let orderHasCoordinator: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderHasTaskGroups: Bool? = nil,
        taskGroupsHaveValidTasks: Bool? = nil,
        tasksHaveValidActions: Bool? = nil,
        taskGroupsHaveValidTaskSequence: Bool? = nil,
        tasksHaveValidCargo: Bool? = nil,
        cargosHaveValidLifecycle: Bool? = nil,
        atLeastOneTaskHasTimeWindow: Bool? = nil,
        orderHasShipper: Bool? = nil,
        orderHasCoordinator: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderHasTaskGroups = orderHasTaskGroups
        self.taskGroupsHaveValidTasks = taskGroupsHaveValidTasks
        self.tasksHaveValidActions = tasksHaveValidActions
        self.taskGroupsHaveValidTaskSequence = taskGroupsHaveValidTaskSequence
        self.tasksHaveValidCargo = tasksHaveValidCargo
        self.cargosHaveValidLifecycle = cargosHaveValidLifecycle
        self.atLeastOneTaskHasTimeWindow = atLeastOneTaskHasTimeWindow
        self.orderHasShipper = orderHasShipper
        self.orderHasCoordinator = orderHasCoordinator
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderHasTaskGroups = try container.decodeIfPresent(Bool.self, forKey: .orderHasTaskGroups)
        self.taskGroupsHaveValidTasks = try container.decodeIfPresent(Bool.self, forKey: .taskGroupsHaveValidTasks)
        self.tasksHaveValidActions = try container.decodeIfPresent(Bool.self, forKey: .tasksHaveValidActions)
        self.taskGroupsHaveValidTaskSequence = try container.decodeIfPresent(Bool.self, forKey: .taskGroupsHaveValidTaskSequence)
        self.tasksHaveValidCargo = try container.decodeIfPresent(Bool.self, forKey: .tasksHaveValidCargo)
        self.cargosHaveValidLifecycle = try container.decodeIfPresent(Bool.self, forKey: .cargosHaveValidLifecycle)
        self.atLeastOneTaskHasTimeWindow = try container.decodeIfPresent(Bool.self, forKey: .atLeastOneTaskHasTimeWindow)
        self.orderHasShipper = try container.decodeIfPresent(Bool.self, forKey: .orderHasShipper)
        self.orderHasCoordinator = try container.decodeIfPresent(Bool.self, forKey: .orderHasCoordinator)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.orderHasTaskGroups, forKey: .orderHasTaskGroups)
        try container.encodeIfPresent(self.taskGroupsHaveValidTasks, forKey: .taskGroupsHaveValidTasks)
        try container.encodeIfPresent(self.tasksHaveValidActions, forKey: .tasksHaveValidActions)
        try container.encodeIfPresent(self.taskGroupsHaveValidTaskSequence, forKey: .taskGroupsHaveValidTaskSequence)
        try container.encodeIfPresent(self.tasksHaveValidCargo, forKey: .tasksHaveValidCargo)
        try container.encodeIfPresent(self.cargosHaveValidLifecycle, forKey: .cargosHaveValidLifecycle)
        try container.encodeIfPresent(self.atLeastOneTaskHasTimeWindow, forKey: .atLeastOneTaskHasTimeWindow)
        try container.encodeIfPresent(self.orderHasShipper, forKey: .orderHasShipper)
        try container.encodeIfPresent(self.orderHasCoordinator, forKey: .orderHasCoordinator)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderHasTaskGroups = "order_has_task_groups"
        case taskGroupsHaveValidTasks = "task_groups_have_valid_tasks"
        case tasksHaveValidActions = "tasks_have_valid_actions"
        case taskGroupsHaveValidTaskSequence = "task_groups_have_valid_task_sequence"
        case tasksHaveValidCargo = "tasks_have_valid_cargo"
        case cargosHaveValidLifecycle = "cargos_have_valid_lifecycle"
        case atLeastOneTaskHasTimeWindow = "at_least_one_task_has_time_window"
        case orderHasShipper = "order_has_shipper"
        case orderHasCoordinator = "order_has_coordinator"
    }
}