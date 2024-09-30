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

extension EMRcontainersClient {
    /// Paginate over `[ListJobRunsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListJobRunsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListJobRunsOutput`
    public func listJobRunsPaginated(input: ListJobRunsInput) -> ClientRuntime.PaginatorSequence<ListJobRunsInput, ListJobRunsOutput> {
        return ClientRuntime.PaginatorSequence<ListJobRunsInput, ListJobRunsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listJobRuns(input:))
    }
}

extension ListJobRunsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobRunsInput {
        return ListJobRunsInput(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            states: self.states,
            virtualClusterId: self.virtualClusterId
        )}
}

extension PaginatorSequence where OperationStackInput == ListJobRunsInput, OperationStackOutput == ListJobRunsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listJobRunsPaginated`
    /// to access the nested member `[EMRcontainersClientTypes.JobRun]`
    /// - Returns: `[EMRcontainersClientTypes.JobRun]`
    public func jobRuns() async throws -> [EMRcontainersClientTypes.JobRun] {
        return try await self.asyncCompactMap { item in item.jobRuns }
    }
}
extension EMRcontainersClient {
    /// Paginate over `[ListJobTemplatesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListJobTemplatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListJobTemplatesOutput`
    public func listJobTemplatesPaginated(input: ListJobTemplatesInput) -> ClientRuntime.PaginatorSequence<ListJobTemplatesInput, ListJobTemplatesOutput> {
        return ClientRuntime.PaginatorSequence<ListJobTemplatesInput, ListJobTemplatesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listJobTemplates(input:))
    }
}

extension ListJobTemplatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobTemplatesInput {
        return ListJobTemplatesInput(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListJobTemplatesInput, OperationStackOutput == ListJobTemplatesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listJobTemplatesPaginated`
    /// to access the nested member `[EMRcontainersClientTypes.JobTemplate]`
    /// - Returns: `[EMRcontainersClientTypes.JobTemplate]`
    public func templates() async throws -> [EMRcontainersClientTypes.JobTemplate] {
        return try await self.asyncCompactMap { item in item.templates }
    }
}
extension EMRcontainersClient {
    /// Paginate over `[ListManagedEndpointsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListManagedEndpointsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListManagedEndpointsOutput`
    public func listManagedEndpointsPaginated(input: ListManagedEndpointsInput) -> ClientRuntime.PaginatorSequence<ListManagedEndpointsInput, ListManagedEndpointsOutput> {
        return ClientRuntime.PaginatorSequence<ListManagedEndpointsInput, ListManagedEndpointsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listManagedEndpoints(input:))
    }
}

extension ListManagedEndpointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListManagedEndpointsInput {
        return ListManagedEndpointsInput(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            nextToken: token,
            states: self.states,
            types: self.types,
            virtualClusterId: self.virtualClusterId
        )}
}

extension PaginatorSequence where OperationStackInput == ListManagedEndpointsInput, OperationStackOutput == ListManagedEndpointsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listManagedEndpointsPaginated`
    /// to access the nested member `[EMRcontainersClientTypes.Endpoint]`
    /// - Returns: `[EMRcontainersClientTypes.Endpoint]`
    public func endpoints() async throws -> [EMRcontainersClientTypes.Endpoint] {
        return try await self.asyncCompactMap { item in item.endpoints }
    }
}
extension EMRcontainersClient {
    /// Paginate over `[ListSecurityConfigurationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSecurityConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSecurityConfigurationsOutput`
    public func listSecurityConfigurationsPaginated(input: ListSecurityConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListSecurityConfigurationsInput, ListSecurityConfigurationsOutput> {
        return ClientRuntime.PaginatorSequence<ListSecurityConfigurationsInput, ListSecurityConfigurationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSecurityConfigurations(input:))
    }
}

extension ListSecurityConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSecurityConfigurationsInput {
        return ListSecurityConfigurationsInput(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListSecurityConfigurationsInput, OperationStackOutput == ListSecurityConfigurationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSecurityConfigurationsPaginated`
    /// to access the nested member `[EMRcontainersClientTypes.SecurityConfiguration]`
    /// - Returns: `[EMRcontainersClientTypes.SecurityConfiguration]`
    public func securityConfigurations() async throws -> [EMRcontainersClientTypes.SecurityConfiguration] {
        return try await self.asyncCompactMap { item in item.securityConfigurations }
    }
}
extension EMRcontainersClient {
    /// Paginate over `[ListVirtualClustersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListVirtualClustersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListVirtualClustersOutput`
    public func listVirtualClustersPaginated(input: ListVirtualClustersInput) -> ClientRuntime.PaginatorSequence<ListVirtualClustersInput, ListVirtualClustersOutput> {
        return ClientRuntime.PaginatorSequence<ListVirtualClustersInput, ListVirtualClustersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listVirtualClusters(input:))
    }
}

extension ListVirtualClustersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListVirtualClustersInput {
        return ListVirtualClustersInput(
            containerProviderId: self.containerProviderId,
            containerProviderType: self.containerProviderType,
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            eksAccessEntryIntegrated: self.eksAccessEntryIntegrated,
            maxResults: self.maxResults,
            nextToken: token,
            states: self.states
        )}
}

extension PaginatorSequence where OperationStackInput == ListVirtualClustersInput, OperationStackOutput == ListVirtualClustersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listVirtualClustersPaginated`
    /// to access the nested member `[EMRcontainersClientTypes.VirtualCluster]`
    /// - Returns: `[EMRcontainersClientTypes.VirtualCluster]`
    public func virtualClusters() async throws -> [EMRcontainersClientTypes.VirtualCluster] {
        return try await self.asyncCompactMap { item in item.virtualClusters }
    }
}
