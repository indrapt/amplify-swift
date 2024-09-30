//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation
import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension CodeGuruSecurityClient {
    /// Paginate over `[GetFindingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetFindingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetFindingsOutput`
    public func getFindingsPaginated(input: GetFindingsInput) -> ClientRuntime.PaginatorSequence<GetFindingsInput, GetFindingsOutput> {
        return ClientRuntime.PaginatorSequence<GetFindingsInput, GetFindingsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getFindings(input:))
    }
}

extension GetFindingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetFindingsInput {
        return GetFindingsInput(
            maxResults: self.maxResults,
            nextToken: token,
            scanName: self.scanName,
            status: self.status
        )}
}

extension PaginatorSequence where OperationStackInput == GetFindingsInput, OperationStackOutput == GetFindingsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getFindingsPaginated`
    /// to access the nested member `[CodeGuruSecurityClientTypes.Finding]`
    /// - Returns: `[CodeGuruSecurityClientTypes.Finding]`
    public func findings() async throws -> [CodeGuruSecurityClientTypes.Finding] {
        return try await self.asyncCompactMap { item in item.findings }
    }
}
extension CodeGuruSecurityClient {
    /// Paginate over `[ListFindingsMetricsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFindingsMetricsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFindingsMetricsOutput`
    public func listFindingsMetricsPaginated(input: ListFindingsMetricsInput) -> ClientRuntime.PaginatorSequence<ListFindingsMetricsInput, ListFindingsMetricsOutput> {
        return ClientRuntime.PaginatorSequence<ListFindingsMetricsInput, ListFindingsMetricsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFindingsMetrics(input:))
    }
}

extension ListFindingsMetricsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFindingsMetricsInput {
        return ListFindingsMetricsInput(
            endDate: self.endDate,
            maxResults: self.maxResults,
            nextToken: token,
            startDate: self.startDate
        )}
}

extension PaginatorSequence where OperationStackInput == ListFindingsMetricsInput, OperationStackOutput == ListFindingsMetricsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFindingsMetricsPaginated`
    /// to access the nested member `[CodeGuruSecurityClientTypes.AccountFindingsMetric]`
    /// - Returns: `[CodeGuruSecurityClientTypes.AccountFindingsMetric]`
    public func findingsMetrics() async throws -> [CodeGuruSecurityClientTypes.AccountFindingsMetric] {
        return try await self.asyncCompactMap { item in item.findingsMetrics }
    }
}
extension CodeGuruSecurityClient {
    /// Paginate over `[ListScansOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListScansInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListScansOutput`
    public func listScansPaginated(input: ListScansInput) -> ClientRuntime.PaginatorSequence<ListScansInput, ListScansOutput> {
        return ClientRuntime.PaginatorSequence<ListScansInput, ListScansOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listScans(input:))
    }
}

extension ListScansInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListScansInput {
        return ListScansInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListScansInput, OperationStackOutput == ListScansOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listScansPaginated`
    /// to access the nested member `[CodeGuruSecurityClientTypes.ScanSummary]`
    /// - Returns: `[CodeGuruSecurityClientTypes.ScanSummary]`
    public func summaries() async throws -> [CodeGuruSecurityClientTypes.ScanSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}
