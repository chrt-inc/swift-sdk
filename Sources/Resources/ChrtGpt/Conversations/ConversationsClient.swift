import Foundation

public final class ConversationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Permanently deletes the caller's ChrtGPT conversations and their history, skipping IDs that don't exist or aren't the caller's. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (ChrtGPTConversationsDeleteManyReq) -> (ChrtGPTConversationsDeleteManyRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.conversations.deleteManyV1(request: .init(conversationIds: [
    ///         "conversation_ids"
    ///     ]))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteManyV1(request: Requests.ChrtGptConversationsDeleteManyReq, requestOptions: RequestOptions? = nil) async throws -> ChrtGptConversationsDeleteManyRes {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/chrt_gpt/conversations/delete_many/v1",
            body: request,
            requestOptions: requestOptions,
            responseType: ChrtGptConversationsDeleteManyRes.self
        )
    }

    /// Lists the caller's ChrtGPT conversations, most recently active first by default. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | () -> (ChrtGPTConversationListRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.conversations.listV1(
    ///         sortBy: .updatedAt,
    ///         sortOrder: .asc,
    ///         page: 1,
    ///         pageSize: 1
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter sortBy: Field to sort by
    /// - Parameter sortOrder: Sort order (asc or desc)
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listV1(sortBy: ChrtGptConversationSortByEnum? = nil, sortOrder: SortOrderEnum? = nil, page: Int? = nil, pageSize: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> ChrtGptConversationListRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/chrt_gpt/conversations/list/v1",
            queryParams: [
                "sort_by": sortBy.map { .string($0.rawValue) }, 
                "sort_order": sortOrder.map { .string($0.rawValue) }, 
                "page": page.map { .int($0) }, 
                "page_size": pageSize.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: ChrtGptConversationListRes.self
        )
    }

    /// Renames one of the caller's ChrtGPT conversations; ChrtGPT never retitles it after that. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | (ChrtGPTConversationsUpdateTitleReq) -> (ChrtGPTConversation1)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.conversations.updateTitleV1(
    ///         conversationId: "conversation_id",
    ///         request: .init(title: "title")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updateTitleV1(conversationId: String, request: Requests.ChrtGptConversationsUpdateTitleReq, requestOptions: RequestOptions? = nil) async throws -> ChrtGptConversation1 {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/chrt_gpt/conversations/update_title/v1/\(conversationId)",
            body: request,
            requestOptions: requestOptions,
            responseType: ChrtGptConversation1.self
        )
    }

    /// Gets one of the caller's ChrtGPT conversations with its history of messages, tool calls, and web searches. | authz: allowed_org_types=[shipper, provider], min_org_role=operator | () -> (ChrtGPTConversationRes)
    ///
    /// ```swift
    /// import Foundation
    /// import Chrt
    ///
    /// private func main() async throws {
    ///     let client = ChrtClient(token: "<token>")
    ///
    ///     _ = try await client.chrtGpt.conversations.getV1(conversationId: "conversation_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getV1(conversationId: String, requestOptions: RequestOptions? = nil) async throws -> ChrtGptConversationRes {
        return try await httpClient.performRequest(
            method: .get,
            path: "/chrt_gpt/conversations/v1/\(conversationId)",
            requestOptions: requestOptions,
            responseType: ChrtGptConversationRes.self
        )
    }
}