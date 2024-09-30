//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension MediaTailorClient {
    /// Paginate over `[ListAlertsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAlertsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAlertsOutput`
    public func listAlertsPaginated(input: ListAlertsInput) -> ClientRuntime.PaginatorSequence<ListAlertsInput, ListAlertsOutput> {
        return ClientRuntime.PaginatorSequence<ListAlertsInput, ListAlertsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listAlerts(input:))
    }
}

extension ListAlertsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAlertsInput {
        return ListAlertsInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

extension PaginatorSequence where OperationStackInput == ListAlertsInput, OperationStackOutput == ListAlertsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listAlertsPaginated`
    /// to access the nested member `[MediaTailorClientTypes.Alert]`
    /// - Returns: `[MediaTailorClientTypes.Alert]`
    public func items() async throws -> [MediaTailorClientTypes.Alert] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
