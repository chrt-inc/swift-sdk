import Foundation

public final class OperationsClient: Sendable {
    public let cases: CasesClient
    public let departmentRoutingRules: DepartmentRoutingRulesClient
    public let departments: DepartmentsClient
    public let operationsTaskLists: OperationsTaskListsClient
    public let operationsTasks: OperationsTasksClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cases = CasesClient(config: config)
        self.departmentRoutingRules = DepartmentRoutingRulesClient(config: config)
        self.departments = DepartmentsClient(config: config)
        self.operationsTaskLists = OperationsTaskListsClient(config: config)
        self.operationsTasks = OperationsTasksClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}