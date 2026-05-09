import Foundation

public final class OperationsClient: Sendable {
    public let cases: CasesClient
    public let departments: DepartmentsClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.cases = CasesClient(config: config)
        self.departments = DepartmentsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}