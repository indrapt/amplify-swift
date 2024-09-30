//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension TimestreamWriteClient {
    /// Paginate over `[ListBatchLoadTasksOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBatchLoadTasksInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBatchLoadTasksOutput`
    public func listBatchLoadTasksPaginated(input: ListBatchLoadTasksInput) -> ClientRuntime.PaginatorSequence<ListBatchLoadTasksInput, ListBatchLoadTasksOutput> {
        return ClientRuntime.PaginatorSequence<ListBatchLoadTasksInput, ListBatchLoadTasksOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listBatchLoadTasks(input:))
    }
}

extension ListBatchLoadTasksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBatchLoadTasksInput {
        return ListBatchLoadTasksInput(
            maxResults: self.maxResults,
            nextToken: token,
            taskStatus: self.taskStatus
        )}
}
extension TimestreamWriteClient {
    /// Paginate over `[ListDatabasesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatabasesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatabasesOutput`
    public func listDatabasesPaginated(input: ListDatabasesInput) -> ClientRuntime.PaginatorSequence<ListDatabasesInput, ListDatabasesOutput> {
        return ClientRuntime.PaginatorSequence<ListDatabasesInput, ListDatabasesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDatabases(input:))
    }
}

extension ListDatabasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatabasesInput {
        return ListDatabasesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension TimestreamWriteClient {
    /// Paginate over `[ListTablesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTablesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTablesOutput`
    public func listTablesPaginated(input: ListTablesInput) -> ClientRuntime.PaginatorSequence<ListTablesInput, ListTablesOutput> {
        return ClientRuntime.PaginatorSequence<ListTablesInput, ListTablesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTables(input:))
    }
}

extension ListTablesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTablesInput {
        return ListTablesInput(
            databaseName: self.databaseName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
