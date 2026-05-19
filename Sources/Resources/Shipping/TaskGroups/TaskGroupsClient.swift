import Foundation

public final class TaskGroupsClient: Sendable {
    public let taskGroupId: TaskGroupIdClient
    public let s3Object: TaskGroupsS3ObjectClient
    public let expanded: TaskGroupsExpandedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.taskGroupId = TaskGroupIdClient(config: config)
        self.s3Object = TaskGroupsS3ObjectClient(config: config)
        self.expanded = TaskGroupsExpandedClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Starts a task group by transitioning it from STAGED to IN_PROGRESS and syncing related order state. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/task_groups/start/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the ordering of tasks within a task group. Requires complete list of task IDs in desired order. Completed tasks must be before staged tasks. | authz_personas=[lig_owner_operators] | (SetTaskOrderingReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setTaskOrderingV1(taskGroupId: String, request: Requests.SetTaskOrderingReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/shipping/task_groups/set_task_ordering/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Assigns or swaps the driver on a task group. Driver must belong to the task group's executor organization. | authz_personas=[executor_org_operators] | (UpdateDriverReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDriverV1(taskGroupId: String, request: Requests.UpdateDriverReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_groups/update_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes the driver from a task group (sets driver_id to null). Allowed when STAGED or IN_PROGRESS (if no tasks have reached a terminal status). | authz_personas=[executor_org_operators, driver_for_executor] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeDriverV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_groups/remove_driver/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Assigns an executor organization (on-chrt or off-chrt) to a task group. Coordinator-only. Requires both executor_org_id and off_chrt_executor_org_id to be None (use remove_executor/v1 first to swap). | authz_personas=[coordinator_org_operators] | (AddExecutorReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addExecutorV1(taskGroupId: String, request: Requests.AddExecutorReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_groups/add_executor/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the executor on a task group along with the assigned driver and all PPP/PPD billing attachments, returning the TG to executor-less state. Coordinator-only. PPP/PPD LineItemGroup1 and BillingLedgerPeriod1 documents stay alive (orphaned-but-alive); the (ex-)executor disposes of them via their own routes. SPP is unaffected. | authz_personas=[coordinator_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeExecutorV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_groups/remove_executor/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the flight number and/or fa_flight_ids on a task group. | authz_personas=[lig_owner_operators] | (SetFlightInfoReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setFlightInfoV1(taskGroupId: String, request: SetFlightInfoReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/shipping/task_groups/set_flight_info/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a message to a task group's message log. | authz_personas=[driver_for_executor, executor_org_operators, coordinator_org_operators, shipper_org_operators] | (AddMessageReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addMessageV1(taskGroupId: String, request: Requests.AddMessageReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/add_message/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Links the operator-supplied OPEN BillingLedgerPeriod to this TaskGroup's SPP vector. Period parties must match the TG's SPP parties. The SPP vector must have no ledger attached and no rate sheet (rate-sheet/ledger exclusivity). Ad-hoc LIGs without a rate sheet may coexist. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (AttachBillingLedgerPeriodReq) -> (BillingLedgerPeriod1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attachBillingLedgerPeriodToShipperPayProviderV1(taskGroupId: String, request: AttachBillingLedgerPeriodReq, requestOptions: RequestOptions? = nil) async throws -> BillingLedgerPeriod1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/attach_billing_ledger_period_to_shipper_pay_provider/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: BillingLedgerPeriod1.self
        )
    }

    /// Links the operator-supplied OPEN BillingLedgerPeriod to this TaskGroup's PPP vector. Period parties must match the TG's PPP parties. The PPP vector must have no ledger attached and no rate sheet (rate-sheet/ledger exclusivity). Ad-hoc LIGs without a rate sheet may coexist. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (AttachBillingLedgerPeriodReq) -> (BillingLedgerPeriod1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attachBillingLedgerPeriodToProviderPayProviderV1(taskGroupId: String, request: AttachBillingLedgerPeriodReq, requestOptions: RequestOptions? = nil) async throws -> BillingLedgerPeriod1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/attach_billing_ledger_period_to_provider_pay_provider/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: BillingLedgerPeriod1.self
        )
    }

    /// Links the operator-supplied OPEN BillingLedgerPeriod to this TaskGroup's PPD vector. Period parties must match the TG's PPD parties. The PPD vector must have no ledger attached and no rate sheet (rate-sheet/ledger exclusivity). Ad-hoc LIGs without a rate sheet may coexist. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | (AttachBillingLedgerPeriodReq) -> (BillingLedgerPeriod1)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attachBillingLedgerPeriodToProviderPayDriverV1(taskGroupId: String, request: AttachBillingLedgerPeriodReq, requestOptions: RequestOptions? = nil) async throws -> BillingLedgerPeriod1 {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/attach_billing_ledger_period_to_provider_pay_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: BillingLedgerPeriod1.self
        )
    }

    /// Detaches the SPP billing ledger period from this TaskGroup. Reverses attach_billing_ledger_period_to_shipper_pay_provider/v1. Linked period must be OPEN. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detachBillingLedgerPeriodFromShipperPayProviderV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/task_groups/detach_billing_ledger_period_from_shipper_pay_provider/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Detaches the PPP billing ledger period from this TaskGroup. Reverses attach_billing_ledger_period_to_provider_pay_provider/v1. Linked period must be OPEN. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detachBillingLedgerPeriodFromProviderPayProviderV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/task_groups/detach_billing_ledger_period_from_provider_pay_provider/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Detaches the PPD billing ledger period from this TaskGroup. Reverses attach_billing_ledger_period_to_provider_pay_driver/v1. Linked period must be OPEN. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detachBillingLedgerPeriodFromProviderPayDriverV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/task_groups/detach_billing_ledger_period_from_provider_pay_driver/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Attaches a STAGED, detached LineItemGroup to the SPP vector AND sets `LineItemGroup1.task_group_id` (one txn). The LIG must have `task_group_id is None`, be owned by the coordinator, and be party-matched to SPP. The SPP vector must have no LIG attached; if the LIG carries `rate_sheet_id`, no billing ledger period may be attached either (rate-sheet/ledger exclusivity). The LIG's `rate_sheet_id` is stamped onto `shipper_pay_provider_rate_sheet_id` as a breadcrumb. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (AttachLigToVectorClientReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attachLigToShipperPayProviderV1(taskGroupId: String, request: AttachLigToVectorClientReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/attach_lig_to_shipper_pay_provider/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Attaches a STAGED, detached LineItemGroup to the PPP vector AND sets `LineItemGroup1.task_group_id` (one txn). The LIG must have `task_group_id is None`, be owned by the coordinator, and be party-matched to PPP. The PPP vector must have no LIG attached; if the LIG carries `rate_sheet_id`, no billing ledger period may be attached either (rate-sheet/ledger exclusivity). The LIG's `rate_sheet_id` is stamped onto `provider_pay_provider_rate_sheet_id` as a breadcrumb. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (AttachLigToVectorClientReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attachLigToProviderPayProviderV1(taskGroupId: String, request: AttachLigToVectorClientReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/attach_lig_to_provider_pay_provider/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Attaches a STAGED, detached LineItemGroup to the PPD vector AND sets `LineItemGroup1.task_group_id` (one txn). The LIG must have `task_group_id is None`, be owned by the executor, and be party-matched to PPD. The PPD vector must have no LIG attached; if the LIG carries `rate_sheet_id`, no billing ledger period may be attached either (rate-sheet/ledger exclusivity). The LIG's `rate_sheet_id` is stamped onto `provider_pay_driver_rate_sheet_id` as a breadcrumb. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | (AttachLigToVectorClientReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attachLigToProviderPayDriverV1(taskGroupId: String, request: AttachLigToVectorClientReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/attach_lig_to_provider_pay_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the SPP vector's `_line_item_group_id` and `_rate_sheet_id` AND clears the LIG's `task_group_id` back-ref (one txn). The LIG document and its line items remain alive but fully detached on both sides. The SPP vector must currently have a LIG attached. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detachLigFromShipperPayProviderV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/task_groups/detach_lig_from_shipper_pay_provider/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the PPP vector's `_line_item_group_id` and `_rate_sheet_id` AND clears the LIG's `task_group_id` back-ref (one txn). The LIG document and its line items remain alive but fully detached on both sides. The PPP vector must currently have a LIG attached. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detachLigFromProviderPayProviderV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/task_groups/detach_lig_from_provider_pay_provider/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Clears the PPD vector's `_line_item_group_id` and `_rate_sheet_id` AND clears the LIG's `task_group_id` back-ref (one txn). The LIG document and its line items remain alive but fully detached on both sides. The PPD vector must currently have a LIG attached. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func detachLigFromProviderPayDriverV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/shipping/task_groups/detach_lig_from_provider_pay_driver/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Preview the LineItem materialization that would result from applying a rate sheet to the SPP vector of the named TaskGroup. Returns the resolved rate sheet, materialized LineItems (NOT inserted), the pre-adjustment total, and the requested parties (shipper -> coordinator). Auto-resolves the rate sheet via RateSheetMapping1 for the requested shipper unless body.rate_sheet_id is provided. No DB writes — operator can iterate freely. To commit, call from_rate_sheet/create_for_shipper_pay_provider/v1 then attach_lig_to_shipper_pay_provider/v1. | authz: allowed_org_types=[provider, shipper], min_org_role=operator, authz_personas=[task_group_coordinator_operators, shipper_org_operators] | (TaskGroupQuoteForShipperPayProviderClientReq) -> (TaskGroupQuoteResp)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func quoteForShipperPayProviderV1(taskGroupId: String, request: Requests.TaskGroupQuoteForShipperPayProviderClientReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupQuoteResp {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/quote_for_shipper_pay_provider/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupQuoteResp.self
        )
    }

    /// Preview the LineItem materialization that would result from applying a rate sheet to the PPP vector of the named TaskGroup. Returns the resolved rate sheet, materialized LineItems (NOT inserted), the pre-adjustment total, and the requested parties (coordinator -> executor). Auto-resolves the rate sheet via RateSheetMapping1 for the requested executor unless body.rate_sheet_id is provided. No DB writes — operator can iterate freely. To commit, call from_rate_sheet/create_for_provider_pay_provider/v1 then attach_lig_to_provider_pay_provider/v1. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[task_group_coordinator_operators] | (TaskGroupQuoteForProviderPayProviderClientReq) -> (TaskGroupQuoteResp)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func quoteForProviderPayProviderV1(taskGroupId: String, request: Requests.TaskGroupQuoteForProviderPayProviderClientReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupQuoteResp {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/quote_for_provider_pay_provider/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupQuoteResp.self
        )
    }

    /// Preview the LineItem materialization that would result from applying a rate sheet to the PPD vector of the named TaskGroup. Returns the resolved rate sheet, materialized LineItems (NOT inserted), the pre-adjustment total, and the requested parties (executor -> driver). Auto-resolves the rate sheet via RateSheetMapping1 for the requested driver unless body.rate_sheet_id is provided. PPD is on-chrt-executor only — TGs with an off-chrt executor are 400'd. No DB writes — operator can iterate freely. To commit, call from_rate_sheet/create_for_provider_pay_driver/v1 then attach_lig_to_provider_pay_driver/v1. | authz: allowed_org_types=[provider], min_org_role=operator, authz_personas=[executor_org_operators] | (TaskGroupQuoteForProviderPayDriverClientReq) -> (TaskGroupQuoteResp)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func quoteForProviderPayDriverV1(taskGroupId: String, request: Requests.TaskGroupQuoteForProviderPayDriverClientReq, requestOptions: RequestOptions? = nil) async throws -> TaskGroupQuoteResp {
        return try await httpClient.performRequest(
            method: .post,
            path: "/shipping/task_groups/quote_for_provider_pay_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: TaskGroupQuoteResp.self
        )
    }
}