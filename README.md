## Introduction

The `docusign-base` package provides a low-level Haskell binding to the [DocuSign](https://www.docusign.com/) [eSignature REST API](https://github.com/docusign/eSign-OpenAPI-Specification).

If you're writing Haskell code to connect with DocuSign, we recommend that you use the [`docusign-client`](https://github.com/capital-match/docusign-client) package, as it presents a safer and more idiomatic Haskell interface to this API.

## About this package

The contents of this package are mostly **auto-generated** from the DocuSign OpenAPI specification, but with *some* minor manual tweaks.

At the time of writing, the process for generating this package has not yet been automated.

However, it should be possible to reproduce the contents of this package by following the steps below:

## Basic steps

1. Install the [Swagger CodeGen](https://github.com/swagger-api/swagger-codegen) tool.
2. Download a copy of the [DocuSign eSignature REST API specification](https://github.com/docusign/eSign-OpenAPI-Specification/blob/master/esignature.rest.swagger.json).
3. Use the Swagger CodeGen tool to generate a Haskell language client.
4. Upgrade `servant` and `servant-client` packages to their latest versions.
5. Add a standalone [`Default`](http://hackage.haskell.org/package/data-default) instance to each generated record type.

## Improving compiler performance

By default, Swagger CodeGen places all generated Haskell record types into one single giant module. Due to the sheer size of the DocuSign API, the number of generated record types is very large.

To enable parallel compilation, this package places every record type into its own **separate module**. This enables GHC to compile independent types in parallel, potentially saving a huge amount of time when compiling on machines with multiple cores. (At the time of writing, GHC is not able to compile independent parts of a code base in parallel unless those parts are located within separate modules.) To enable parallel compilation, please remember to specify the `-j` GHC compiler option.

## Supporting optional parameters

In many places, the DocuSign API documentation indicates that parameters for certain functions are optional. However, whether or not a parameter is optional often depends on the use case. There are certain parameters that are *required to be present* in certain use cases, but *required to be absent* in other use cases.

Unfortunately, this optionality is not always encoded within the official REST API Swagger specification. As a result, when Swagger Codegen is used to generate a Haskell Client for this specification, it produces record types where all fields are required. To rectify this over-strictness, this package makes a further modification, that all fields are marked as optional, using the Haskell `Maybe` type.

The [`docusign-client`](https://github.com/capital-match/docusign-client) package defines a safer and more idiomatic Haskell interface to this API, exporting record types that are specific to individual use cases.
