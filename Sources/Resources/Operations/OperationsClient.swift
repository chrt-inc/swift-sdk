import Foundation

public final class OperationsClient: Sendable {
    public let cases: CasesClient
    public let checklists: ChecklistsClient
    public let departments: DepartmentsClient
    public let operationsTasks: OperationsTasksClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cases = CasesClient(config: config)
        self.checklists = ChecklistsClient(config: config)
        self.departments = DepartmentsClient(config: config)
        self.operationsTasks = OperationsTasksClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}