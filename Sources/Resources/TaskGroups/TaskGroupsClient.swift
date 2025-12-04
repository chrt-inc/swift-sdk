import Foundation

public final class TaskGroupsClient: Sendable {
    public let taskGroupId: TaskGroupIdClient
    public let s3ObjectMetadata: TaskGroupsS3ObjectMetadataClient
    public let s3Object: TaskGroupsS3ObjectClient
    public let expanded: TaskGroupsExpandedClient
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.taskGroupId = TaskGroupIdClient(config: config)
        self.s3ObjectMetadata = TaskGroupsS3ObjectMetadataClient(config: config)
        self.s3Object = TaskGroupsS3ObjectClient(config: config)
        self.expanded = TaskGroupsExpandedClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }

    /// Starts a task group by transitioning it from STAGED to IN_PROGRESS and syncing related order state. | authz_personas=[courier_driver, lig_org_operators] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_groups/start/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the ordering of tasks within a task group. Requires complete list of task IDs in desired order. Completed tasks must be before staged tasks. | authz_personas=[lig_org_operators] | (SetTaskOrderingReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setTaskOrderingV1(taskGroupId: String, request: Requests.SetTaskOrderingReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .put,
            path: "/oort/task_groups/set_task_ordering/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Sets the flight number on a task group, plus any TENDER_TO_AIRLINE tasks in the immediately preceding task group and RECOVER_FROM_AIRLINE tasks in the immediately following task group. | authz_personas=[lig_org_operators] | (SetFlightNumberReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setFlightNumberV1(taskGroupId: String, request: Requests.SetFlightNumberReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/task_groups/set_flight_number/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the driver assigned to a task group. | authz_personas=[courier_org_operators] | (UpdateDriverReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateDriverV1(taskGroupId: String, request: Requests.UpdateDriverReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/task_groups/update_driver/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Removes the driver from a task group (sets driver_id to null). | authz_personas=[courier_org_operators, courier_driver] | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func removeDriverV1(taskGroupId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/task_groups/remove_driver/v1/\(taskGroupId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Updates the courier organization assigned to a task group. | authz_personas=[forwarder_org_operators] | (UpdateCourierOrgReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateCourierOrgV1(taskGroupId: String, request: Requests.UpdateCourierOrgReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/oort/task_groups/update_courier_org/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Adds a message to a task group's message log. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators, shipper_org_operators] | (AddMessageReq) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addMessageV1(taskGroupId: String, request: Requests.AddMessageReq, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/add_message/v1/\(taskGroupId)",
            body: request,
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Uploads an image file to a task group with automatic blurhash generation. | authz_personas=[courier_driver, courier_org_operators, forwarder_org_operators, shipper_org_operators] | (UploadFile) -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addS3ObjectV1(taskGroupId: String, request: Requests.BodyPostAddS3ObjectV1OortTaskGroupsAddS3ObjectV1TaskGroupIdPost, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .post,
            path: "/oort/task_groups/add_s3_object/v1/\(taskGroupId)",
            contentType: .multipartFormData,
            body: request.asMultipartFormData(),
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }

    /// Deletes an S3 object metadata and the associated S3 object from a task group. Only the uploader or an operator from the uploading org can delete. | () -> (bool)
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteS3ObjectV1(taskGroupS3ObjectMetadataId: String, requestOptions: RequestOptions? = nil) async throws -> Bool {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/oort/task_groups/delete_s3_object/v1/\(taskGroupS3ObjectMetadataId)",
            requestOptions: requestOptions,
            responseType: Bool.self
        )
    }
}