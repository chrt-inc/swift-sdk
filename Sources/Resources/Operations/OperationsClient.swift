import Foundation

public final class OperationsClient: Sendable {
    public let departmentRoutingRules: DepartmentRoutingRulesClient
    public let departments: DepartmentsClient
    public let operationsTaskLists: OperationsTaskListsClient
    public let operationsTasks: OperationsTasksClient
    public let orderInternalMessages: OrderInternalMessagesClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.departmentRoutingRules = DepartmentRoutingRulesClient(config: config)
        self.departments = DepartmentsClient(config: config)
        self.operationsTaskLists = OperationsTaskListsClient(config: config)
        self.operationsTasks = OperationsTasksClient(config: config)
        self.orderInternalMessages = OrderInternalMessagesClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}