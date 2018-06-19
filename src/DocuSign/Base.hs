{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -freduction-depth=0 #-}

module DocuSign.Base where

import DocuSign.Base.ContentTypes
import DocuSign.Base.Types
import Servant.API

import Data.Proxy                     ( Proxy (..) )
import Data.Text                      ( Text )
import Servant.API.Verbs              ( StdMethod (..)
                                      , Verb )
import Servant.Client                 ( ClientM
                                      , client)

type DocuSignAPI
{- accountCustomFieldsDeleteAccountCustomFields                             -} =    "v2" :> "accounts" :> Capture "accountId" Text :> "custom_fields" :> Capture "customFieldId" Text :> QueryParam "apply_to_templates" Text :> Verb 'DELETE 200 '[JSON] ()
{- accountCustomFieldsGetAccountCustomFields                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "custom_fields" :> Verb 'GET 200 '[JSON] AccountCustomFields
{- accountCustomFieldsPostAccountCustomFields                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "custom_fields" :> QueryParam "apply_to_templates" Text :> ReqBody '[JSON] CustomField :> Verb 'POST 200 '[JSON] AccountCustomFields
{- accountCustomFieldsPutAccountCustomFields                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "custom_fields" :> Capture "customFieldId" Text :> QueryParam "apply_to_templates" Text :> ReqBody '[JSON] CustomField :> Verb 'PUT 200 '[JSON] AccountCustomFields
{- accountPasswordRulesGetAccountPasswordRules                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "settings" :> "password_rules" :> Verb 'GET 200 '[JSON] AccountPasswordRules
{- accountPasswordRulesPutAccountPasswordRules                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "settings" :> "password_rules" :> ReqBody '[JSON] AccountPasswordRules :> Verb 'PUT 200 '[JSON] AccountPasswordRules
{- accountSignatureProvidersGetSignatureProviders                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "signatureProviders" :> Verb 'GET 200 '[JSON] AccountSignatureProviders
{- accountsDeleteAccount                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> Verb 'DELETE 200 '[JSON] ()
{- accountsGetAccount                                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> QueryParam "include_account_settings" Text :> Verb 'GET 200 '[JSON] Accounts
{- accountsGetProvisioning                                                  -} :<|> "v2" :> "accounts" :> "provisioning" :> Verb 'GET 200 '[JSON] ProvisioningInformation
{- accountsPostAccounts                                                     -} :<|> "v2" :> "accounts" :> QueryParam "preview_billing_plan" Text :> ReqBody '[JSON] NewAccountDefinition :> Verb 'POST 200 '[JSON] NewAccountSummary
{- apiRequestLogDeleteRequestLogs                                           -} :<|> "v2" :> "diagnostics" :> "request_logs" :> Verb 'DELETE 200 '[JSON] ()
{- apiRequestLogGetRequestLog                                               -} :<|> "v2" :> "diagnostics" :> "request_logs" :> Capture "requestLogId" Text :> Verb 'GET 200 '[PlainText] Text
{- apiRequestLogGetRequestLogSettings                                       -} :<|> "v2" :> "diagnostics" :> "settings" :> Verb 'GET 200 '[JSON] RequestLogs
{- apiRequestLogGetRequestLogs                                              -} :<|> "v2" :> "diagnostics" :> "request_logs" :> QueryParam "encoding" Text :> Verb 'GET 200 '[JSON] ApiRequestLogsResult
{- apiRequestLogPutRequestLogSettings                                       -} :<|> "v2" :> "diagnostics" :> "settings" :> ReqBody '[JSON] RequestLogs :> Verb 'PUT 200 '[JSON] RequestLogs
{- attachmentsDeleteAttachments                                             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "attachments" :> ReqBody '[JSON] EnvelopeAttachmentsRequest :> Verb 'DELETE 200 '[JSON] EnvelopeAttachmentsResult
{- attachmentsGetAttachment                                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "attachments" :> Capture "attachmentId" Text :> Verb 'GET 200 '[JSON] ()
{- attachmentsGetAttachments                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "attachments" :> Verb 'GET 200 '[JSON] EnvelopeAttachmentsResult
{- attachmentsPutAttachment                                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "attachments" :> Capture "attachmentId" Text :> ReqBody '[JSON] Attachment :> Verb 'PUT 200 '[JSON] EnvelopeAttachmentsResult
{- attachmentsPutAttachments                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "attachments" :> ReqBody '[JSON] EnvelopeAttachmentsRequest :> Verb 'PUT 200 '[JSON] EnvelopeAttachmentsResult
{- auditEventsGetAuditEvents                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "audit_events" :> Verb 'GET 200 '[JSON] EnvelopeAuditEventResponse
{- billingChargesGetAccountBillingCharges                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_charges" :> QueryParam "include_charges" Text :> Verb 'GET 200 '[JSON] BillingChargeResponse
{- billingInvoicesGetBillingInvoice                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_invoices" :> Capture "invoiceId" Text :> Verb 'GET 200 '[JSON] Invoices
{- billingInvoicesGetBillingInvoices                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_invoices" :> QueryParam "from_date" Text :> QueryParam "to_date" Text :> Verb 'GET 200 '[JSON] BillingInvoicesResponse
{- billingInvoicesGetBillingInvoicesPastDue                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_invoices_past_due" :> Verb 'GET 200 '[JSON] BillingInvoicesSummary
{- billingPaymentsGetPayment                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_payments" :> Capture "paymentId" Text :> Verb 'GET 200 '[JSON] Payments
{- billingPaymentsGetPaymentList                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_payments" :> QueryParam "from_date" Text :> QueryParam "to_date" Text :> Verb 'GET 200 '[JSON] BillingPaymentsResponse
{- billingPaymentsPostPayment                                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_payments" :> ReqBody '[JSON] BillingPaymentRequest :> Verb 'POST 200 '[JSON] BillingPaymentResponse
{- billingPlanGetBillingPlan                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_plan" :> QueryParam "include_credit_card_information" Text :> QueryParam "include_metadata" Text :> QueryParam "include_successor_plans" Text :> Verb 'GET 200 '[JSON] BillingPlans
{- billingPlanGetCreditCardInfo                                             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_plan" :> "credit_card" :> Verb 'GET 200 '[JSON] CreditCardInformation
{- billingPlanPutBillingPlan                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_plan" :> QueryParam "preview_billing_plan" Text :> ReqBody '[JSON] BillingPlanInformation :> Verb 'PUT 200 '[JSON] BillingPlanUpdateResponse
{- billingPlansGetBillingPlan                                               -} :<|> "v2" :> "billing_plans" :> Capture "billingPlanId" Text :> Verb 'GET 200 '[JSON] BillingPlanResponse
{- billingPlansGetBillingPlans                                              -} :<|> "v2" :> "billing_plans" :> Verb 'GET 200 '[JSON] BillingPlansResponse
{- brandDeleteBrand                                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> Capture "brandId" Text :> Verb 'DELETE 200 '[JSON] ()
{- brandExportGetBrandExportFile                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> Capture "brandId" Text :> "file" :> Verb 'GET 200 '[JSON] ()
{- brandGetBrand                                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> Capture "brandId" Text :> QueryParam "include_external_references" Text :> QueryParam "include_logos" Text :> Verb 'GET 200 '[JSON] Brand
{- brandLogoDeleteBrandLogo                                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> Capture "brandId" Text :> "logos" :> Capture "logoType" Text :> Verb 'DELETE 200 '[JSON] ()
{- brandLogoGetBrandLogo                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> Capture "brandId" Text :> "logos" :> Capture "logoType" Text :> Verb 'GET 200 '[JSON] ()
{- brandLogoPutBrandLogo                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> Capture "brandId" Text :> "logos" :> Capture "logoType" Text :> Verb 'PUT 200 '[JSON] ()
{- brandPutBrand                                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> Capture "brandId" Text :> ReqBody '[JSON] Brand :> Verb 'PUT 200 '[JSON] Brand
{- brandResourcesGetBrandResources                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> Capture "brandId" Text :> "resources" :> Capture "resourceContentType" Text :> QueryParam "langcode" Text :> QueryParam "return_master" Text :> Verb 'GET 200 '[JSON] ()
{- brandResourcesGetBrandResourcesList                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> Capture "brandId" Text :> "resources" :> Verb 'GET 200 '[JSON] BrandResourcesList
{- brandResourcesPutBrandResources                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> Capture "brandId" Text :> "resources" :> Capture "resourceContentType" Text :> Verb 'PUT 200 '[JSON] BrandResources
{- brandsDeleteBrands                                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> ReqBody '[JSON] BrandsRequest :> Verb 'DELETE 200 '[JSON] AccountBrands
{- brandsDeleteGroupBrands                                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "groups" :> Capture "groupId" Text :> "brands" :> ReqBody '[JSON] BrandsRequest :> Verb 'DELETE 200 '[JSON] GroupBrands
{- brandsGetBrands                                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> QueryParam "exclude_distributor_brand" Text :> QueryParam "include_logos" Text :> Verb 'GET 200 '[JSON] AccountBrands
{- brandsGetGroupBrands                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "groups" :> Capture "groupId" Text :> "brands" :> Verb 'GET 200 '[JSON] GroupBrands
{- brandsPostBrands                                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "brands" :> ReqBody '[JSON] Brand :> Verb 'POST 200 '[JSON] AccountBrands
{- brandsPutGroupBrands                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "groups" :> Capture "groupId" Text :> "brands" :> ReqBody '[JSON] BrandsRequest :> Verb 'PUT 200 '[JSON] GroupBrands
{- bulkEnvelopesGetBulkEnvelopesBatchId                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "bulk_envelopes" :> Capture "batchId" Text :> QueryParam "count" Text :> QueryParam "include" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] BulkEnvelopeStatus
{- bulkEnvelopesGetEnvelopesBulk                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "bulk_envelopes" :> QueryParam "count" Text :> QueryParam "include" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] BulkEnvelopes
{- captiveRecipientsDeleteCaptiveRecipientsPart                             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "captive_recipients" :> Capture "recipientPart" Text :> ReqBody '[JSON] CaptiveRecipientInformation :> Verb 'DELETE 200 '[JSON] CaptiveRecipientInformation
{- chunkedUploadsDeleteChunkedUpload                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "chunked_uploads" :> Capture "chunkedUploadId" Text :> Verb 'DELETE 200 '[JSON] ChunkedUploads
{- chunkedUploadsGetChunkedUpload                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "chunked_uploads" :> Capture "chunkedUploadId" Text :> QueryParam "include" Text :> Verb 'GET 200 '[JSON] ChunkedUploads
{- chunkedUploadsPostChunkedUploads                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "chunked_uploads" :> ReqBody '[JSON] ChunkedUploadRequest :> Verb 'POST 200 '[JSON] ChunkedUploads
{- chunkedUploadsPutChunkedUploadPart                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "chunked_uploads" :> Capture "chunkedUploadId" Text :> Capture "chunkedUploadPartSeq" Text :> ReqBody '[JSON] ChunkedUploadRequest :> Verb 'PUT 200 '[JSON] ChunkedUploads
{- chunkedUploadsPutChunkedUploads                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "chunked_uploads" :> Capture "chunkedUploadId" Text :> QueryParam "action" Text :> Verb 'PUT 200 '[JSON] ChunkedUploads
{- cloudStorageDeleteCloudStorage                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "cloud_storage" :> Capture "serviceId" Text :> Verb 'DELETE 200 '[JSON] CloudStorageProviders
{- cloudStorageDeleteCloudStorageProviders                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "cloud_storage" :> ReqBody '[JSON] CloudStorageProviders :> Verb 'DELETE 200 '[JSON] CloudStorageProviders
{- cloudStorageFolderGetCloudStorageFolder                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "cloud_storage" :> Capture "serviceId" Text :> "folders" :> Capture "folderId" Text :> QueryParam "cloud_storage_folder_path" Text :> QueryParam "count" Text :> QueryParam "order" Text :> QueryParam "order_by" Text :> QueryParam "search_text" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] CloudStorage
{- cloudStorageFolderGetCloudStorageFolderAll                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "cloud_storage" :> Capture "serviceId" Text :> "folders" :> QueryParam "cloud_storage_folder_path" Text :> QueryParam "count" Text :> QueryParam "order" Text :> QueryParam "order_by" Text :> QueryParam "search_text" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] CloudStorage
{- cloudStorageGetCloudStorage                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "cloud_storage" :> Capture "serviceId" Text :> QueryParam "redirectUrl" Text :> Verb 'GET 200 '[JSON] CloudStorageProviders
{- cloudStorageGetCloudStorageProviders                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "cloud_storage" :> QueryParam "redirectUrl" Text :> Verb 'GET 200 '[JSON] CloudStorageProviders
{- cloudStoragePostCloudStorage                                             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "cloud_storage" :> ReqBody '[JSON] CloudStorageProviders :> Verb 'POST 200 '[JSON] CloudStorageProviders
{- connectDeleteConnectConfig                                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> Capture "connectId" Text :> Verb 'DELETE 200 '[JSON] ()
{- connectFailuresDeleteConnectFailureLog                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> "failures" :> Capture "failureId" Text :> Verb 'DELETE 200 '[JSON] ()
{- connectFailuresGetConnectLogs                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> "failures" :> QueryParam "from_date" Text :> QueryParam "to_date" Text :> Verb 'GET 200 '[JSON] ConnectEvents
{- connectGetConnectConfig                                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> Capture "connectId" Text :> Verb 'GET 200 '[JSON] ConnectConfigResults
{- connectGetConnectConfigs                                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> Verb 'GET 200 '[JSON] ConnectConfigResults
{- connectGetConnectUsers                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> Capture "connectId" Text :> "users" :> QueryParam "count" Text :> QueryParam "email_substring" Text :> QueryParam "list_included_users" Text :> QueryParam "start_position" Text :> QueryParam "status" Text :> QueryParam "user_name_substring" Text :> Verb 'GET 200 '[JSON] IntegratedUserInfoList
{- connectLogDeleteConnectLog                                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> "logs" :> Capture "logId" Text :> Verb 'DELETE 200 '[JSON] ()
{- connectLogDeleteConnectLogs                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> "logs" :> Verb 'DELETE 200 '[JSON] ()
{- connectLogGetConnectLog                                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> "logs" :> Capture "logId" Text :> QueryParam "additional_info" Text :> Verb 'GET 200 '[JSON] ConnectLog
{- connectLogGetConnectLogs                                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> "logs" :> QueryParam "from_date" Text :> QueryParam "to_date" Text :> Verb 'GET 200 '[JSON] ConnectEvents
{- connectPostConnectConfiguration                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> ReqBody '[JSON] ConnectConfigurations :> Verb 'POST 200 '[JSON] ConnectConfigurations
{- connectPublishPutConnectRetry                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> "envelopes" :> "retry_queue" :> ReqBody '[JSON] ConnectFailureFilter :> Verb 'PUT 200 '[JSON] ConnectFailureResults
{- connectPublishPutConnectRetryByEnvelope                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> "envelopes" :> Capture "envelopeId" Text :> "retry_queue" :> Verb 'PUT 200 '[JSON] ConnectFailureResults
{- connectPutConnectConfiguration                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "connect" :> ReqBody '[JSON] ConnectConfigurations :> Verb 'PUT 200 '[JSON] ConnectConfigurations
{- consumerDisclosureGetConsumerDisclosure                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "consumer_disclosure" :> QueryParam "langCode" Text :> Verb 'GET 200 '[JSON] AccountConsumerDisclosures
{- consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientId             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "consumer_disclosure" :> QueryParam "langCode" Text :> Verb 'GET 200 '[JSON] EnvelopeConsumerDisclosures
{- consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientIdLangCode     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "consumer_disclosure" :> Capture "langCode" Text :> QueryParam "langCode" Text :> Verb 'GET 200 '[JSON] EnvelopeConsumerDisclosures
{- consumerDisclosureGetConsumerDisclosureLangCode                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "consumer_disclosure" :> Capture "langCode" Text :> Verb 'GET 200 '[JSON] AccountConsumerDisclosures
{- consumerDisclosurePutConsumerDisclosure                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "consumer_disclosure" :> Capture "langCode" Text :> QueryParam "include_metadata" Text :> ReqBody '[JSON] EnvelopeConsumerDisclosures :> Verb 'PUT 200 '[JSON] EnvelopeConsumerDisclosures
{- contactsDeleteContactWithId                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "contacts" :> Capture "contactId" Text :> Verb 'DELETE 200 '[JSON] ContactUpdateResponse
{- contactsDeleteContacts                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "contacts" :> ReqBody '[JSON] ContactModRequest :> Verb 'DELETE 200 '[JSON] ContactUpdateResponse
{- contactsGetContactById                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "contacts" :> Capture "contactId" Text :> QueryParam "cloud_provider" Text :> Verb 'GET 200 '[JSON] ContactGetResponse
{- contactsPostContacts                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "contacts" :> ReqBody '[JSON] ContactModRequest :> Verb 'POST 200 '[JSON] ContactUpdateResponse
{- contactsPutContacts                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "contacts" :> ReqBody '[JSON] ContactModRequest :> Verb 'PUT 200 '[JSON] ContactUpdateResponse
{- customFieldsDeleteCustomFields                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "custom_fields" :> ReqBody '[JSON] EnvelopeCustomFields :> Verb 'DELETE 200 '[JSON] EnvelopeCustomFields
{- customFieldsDeleteTemplateCustomFields                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "custom_fields" :> ReqBody '[JSON] TemplateCustomFields :> Verb 'DELETE 200 '[JSON] TemplateCustomFields
{- customFieldsGetCustomFields                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "custom_fields" :> Verb 'GET 200 '[JSON] CustomFieldsEnvelope
{- customFieldsGetTemplateCustomFields                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "custom_fields" :> Verb 'GET 200 '[JSON] TemplateCustomFields
{- customFieldsPostCustomFields                                             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "custom_fields" :> ReqBody '[JSON] EnvelopeCustomFields :> Verb 'POST 200 '[JSON] EnvelopeCustomFields
{- customFieldsPostTemplateCustomFields                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "custom_fields" :> ReqBody '[JSON] TemplateCustomFields :> Verb 'POST 200 '[JSON] TemplateCustomFields
{- customFieldsPutCustomFields                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "custom_fields" :> ReqBody '[JSON] EnvelopeCustomFields :> Verb 'PUT 200 '[JSON] EnvelopeCustomFields
{- customFieldsPutTemplateCustomFields                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "custom_fields" :> ReqBody '[JSON] TemplateCustomFields :> Verb 'PUT 200 '[JSON] TemplateCustomFields
{- documentFieldsDeleteDocumentFields                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "fields" :> ReqBody '[JSON] EnvelopeDocumentFields :> Verb 'DELETE 200 '[JSON] EnvelopeDocumentFields
{- documentFieldsDeleteTemplateDocumentFields                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> "fields" :> ReqBody '[JSON] TemplateDocumentFields :> Verb 'DELETE 200 '[JSON] TemplateDocumentFields
{- documentFieldsGetDocumentFields                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "fields" :> Verb 'GET 200 '[JSON] EnvelopeDocumentFields
{- documentFieldsGetTemplateDocumentFields                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> "fields" :> Verb 'GET 200 '[JSON] TemplateDocumentFields
{- documentFieldsPostDocumentFields                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "fields" :> ReqBody '[JSON] EnvelopeDocumentFields :> Verb 'POST 200 '[JSON] EnvelopeDocumentFields
{- documentFieldsPostTemplateDocumentFields                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> "fields" :> ReqBody '[JSON] TemplateDocumentFields :> Verb 'POST 200 '[JSON] TemplateDocumentFields
{- documentFieldsPutDocumentFields                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "fields" :> ReqBody '[JSON] EnvelopeDocumentFields :> Verb 'PUT 200 '[JSON] EnvelopeDocumentFields
{- documentFieldsPutTemplateDocumentFields                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> "fields" :> ReqBody '[JSON] TemplateDocumentFields :> Verb 'PUT 200 '[JSON] TemplateDocumentFields
{- documentsDeleteDocuments                                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> ReqBody '[JSON] EnvelopeDefinition :> Verb 'DELETE 200 '[JSON] EnvelopeDocuments
{- documentsDeleteTemplateDocuments                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> ReqBody '[JSON] EnvelopeDefinition :> Verb 'DELETE 200 '[JSON] TemplateDocuments
{- documentsGetDocument                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> QueryParam "certificate" Text :> QueryParam "encoding" Text :> QueryParam "encrypt" Text :> QueryParam "language" Text :> QueryParam "recipient_id" Text :> QueryParam "show_changes" Text :> QueryParam "watermark" Text :> Verb 'GET 200 '[PDF] PDF
{- documentsGetDocuments                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> QueryParam "include_metadata" Text :> Verb 'GET 200 '[JSON] EnvelopeDocuments
{- documentsGetTemplateDocument                                             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> QueryParam "encrypt" Text :> QueryParam "show_changes" Text :> Verb 'GET 200 '[PDF] PDF
{- documentsGetTemplateDocuments                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Verb 'GET 200 '[JSON] TemplateDocuments
{- documentsPutDocument                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> QueryParam "apply_document_fields" Text :> Verb 'PUT 200 '[JSON] ()
{- documentsPutDocuments                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> QueryParam "apply_document_fields" Text :> ReqBody '[JSON] EnvelopeDefinition :> Verb 'PUT 200 '[JSON] EnvelopeDocuments
{- documentsPutTemplateDocument                                             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> QueryParam "apply_document_fields" Text :> QueryParam "is_envelope_definition" Text :> ReqBody '[JSON] EnvelopeDefinition :> Verb 'PUT 200 '[JSON] EnvelopeDocument
{- documentsPutTemplateDocuments                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> QueryParam "apply_document_fields" Text :> ReqBody '[JSON] EnvelopeDefinition :> Verb 'PUT 200 '[JSON] TemplateDocuments
{- eMortgagePostTransactions                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "eMortgage" :> "transactions" :> ReqBody '[JSON] EMortgageTransactions :> Verb 'POST 200 '[JSON] PostTransactionsResponse
{- eNoteConfigurationDeleteENoteConfiguration                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "settings" :> "enote_configuration" :> Verb 'DELETE 200 '[JSON] ()
{- eNoteConfigurationGetENoteConfiguration                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "settings" :> "enote_configuration" :> Verb 'GET 200 '[JSON] ENoteConfigurations
{- eNoteConfigurationPutENoteConfiguration                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "settings" :> "enote_configuration" :> ReqBody '[JSON] ENoteConfigurations :> Verb 'PUT 200 '[JSON] ENoteConfigurations
{- emailSettingsDeleteEmailSettings                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "email_settings" :> Verb 'DELETE 200 '[JSON] EnvelopeEmailSettings
{- emailSettingsGetEmailSettings                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "email_settings" :> Verb 'GET 200 '[JSON] EnvelopeEmailSettings
{- emailSettingsPostEmailSettings                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "email_settings" :> ReqBody '[JSON] EnvelopeEmailSettings :> Verb 'POST 200 '[JSON] EnvelopeEmailSettings
{- emailSettingsPutEmailSettings                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "email_settings" :> ReqBody '[JSON] EnvelopeEmailSettings :> Verb 'PUT 200 '[JSON] EnvelopeEmailSettings
{- envelopesGetEnvelope                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> QueryParam "advanced_update" Text :> QueryParam "include" Text :> Verb 'GET 200 '[JSON] Envelopes
{- envelopesGetEnvelopes                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> QueryParam "ac_status" Text :> QueryParam "block" Text :> QueryParam "count" Text :> QueryParam "custom_field" Text :> QueryParam "email" Text :> QueryParam "envelope_ids" Text :> QueryParam "exclude" Text :> QueryParam "folder_ids" Text :> QueryParam "folder_types" Text :> QueryParam "from_date" Text :> QueryParam "from_to_status" Text :> QueryParam "include" Text :> QueryParam "include_purge_information" Text :> QueryParam "intersecting_folder_ids" Text :> QueryParam "order" Text :> QueryParam "order_by" Text :> QueryParam "powerformids" Text :> QueryParam "search_text" Text :> QueryParam "start_position" Text :> QueryParam "status" Text :> QueryParam "to_date" Text :> QueryParam "transaction_ids" Text :> QueryParam "user_filter" Text :> QueryParam "user_id" Text :> QueryParam "user_name" Text :> Verb 'GET 200 '[JSON] EnvelopesInformation
{- envelopesPostEnvelopes                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> QueryParam "cdse_mode" Text :> QueryParam "completed_documents_only" Text :> QueryParam "merge_roles_on_draft" Text :> ReqBody '[JSON] EnvelopeDefinition :> Verb 'POST 200 '[JSON] EnvelopeSummary
{- envelopesPutEnvelope                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> QueryParam "advanced_update" Text :> QueryParam "resend_envelope" Text :> ReqBody '[JSON] Envelopes :> Verb 'PUT 200 '[JSON] EnvelopeUpdateSummary
{- envelopesPutStatus                                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> "status" :> QueryParam "email" Text :> QueryParam "from_date" Text :> QueryParam "start_position" Text :> QueryParam "to_date" Text :> ReqBody '[JSON] EnvelopeIdsRequest :> Verb 'PUT 200 '[JSON] EnvelopesInformation
{- foldersGetFolderItems                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "folders" :> Capture "folderId" Text :> QueryParam "from_date" Text :> QueryParam "include_items" Text :> QueryParam "owner_email" Text :> QueryParam "owner_name" Text :> QueryParam "search_text" Text :> QueryParam "start_position" Text :> QueryParam "status" Text :> QueryParam "to_date" Text :> Verb 'GET 200 '[JSON] FolderItemsResponse
{- foldersGetFolders                                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "folders" :> QueryParam "include" Text :> QueryParam "include_items" Text :> QueryParam "start_position" Text :> QueryParam "template" Text :> QueryParam "user_filter" Text :> Verb 'GET 200 '[JSON] Folders
{- foldersPutFolderById                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "folders" :> Capture "folderId" Text :> ReqBody '[JSON] FoldersRequest :> Verb 'PUT 200 '[JSON] Folders
{- formDataGetFormData                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "form_data" :> Verb 'GET 200 '[JSON] EnvelopeFormData
{- groupsDeleteGroupUsers                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "groups" :> Capture "groupId" Text :> "users" :> ReqBody '[JSON] UserInfoList :> Verb 'DELETE 200 '[JSON] GroupUsers
{- groupsDeleteGroups                                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "groups" :> ReqBody '[JSON] Groups :> Verb 'DELETE 200 '[JSON] Groups
{- groupsGetGroupUsers                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "groups" :> Capture "groupId" Text :> "users" :> QueryParam "count" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] GroupUsers
{- groupsGetGroups                                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "groups" :> QueryParam "count" Text :> QueryParam "group_name" Text :> QueryParam "group_type" Text :> QueryParam "search_text" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] Groups
{- groupsPostGroups                                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "groups" :> ReqBody '[JSON] Groups :> Verb 'POST 200 '[JSON] Groups
{- groupsPutGroupUsers                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "groups" :> Capture "groupId" Text :> "users" :> ReqBody '[JSON] UserInfoList :> Verb 'PUT 200 '[JSON] GroupUsers
{- groupsPutGroups                                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "groups" :> ReqBody '[JSON] Groups :> Verb 'PUT 200 '[JSON] Groups
{- lockDeleteEnvelopeLock                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "lock" :> Verb 'DELETE 200 '[JSON] EnvelopeLocks
{- lockDeleteTemplateLock                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "lock" :> ReqBody '[JSON] LockRequest :> Verb 'DELETE 200 '[JSON] TemplateLocks
{- lockGetEnvelopeLock                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "lock" :> Verb 'GET 200 '[JSON] EnvelopeLocks
{- lockGetTemplateLock                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "lock" :> Verb 'GET 200 '[JSON] TemplateLocks
{- lockPostEnvelopeLock                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "lock" :> ReqBody '[JSON] LockRequest :> Verb 'POST 200 '[JSON] EnvelopeLocks
{- lockPostTemplateLock                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "lock" :> ReqBody '[JSON] LockRequest :> Verb 'POST 200 '[JSON] TemplateLocks
{- lockPutEnvelopeLock                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "lock" :> ReqBody '[JSON] LockRequest :> Verb 'PUT 200 '[JSON] EnvelopeLocks
{- lockPutTemplateLock                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "lock" :> ReqBody '[JSON] LockRequest :> Verb 'PUT 200 '[JSON] TemplateLocks
{- loginInformationGetLoginInformation                                      -} :<|> "v2" :> "login_information" :> QueryParam "api_password" Text :> QueryParam "embed_account_id_guid" Text :> QueryParam "include_account_id_guid" Text :> QueryParam "login_settings" Text :> Verb 'GET 200 '[JSON] Authentication
{- loginInformationPutLoginInformation                                      -} :<|> "v2" :> "login_information" :> Capture "loginPart" Text :> ReqBody '[JSON] UserPasswordInformation :> Verb 'PUT 200 '[JSON] ()
{- notificationGetEnvelopesEnvelopeIdNotification                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "notification" :> Verb 'GET 200 '[JSON] Notification
{- notificationGetTemplatesTemplateIdNotification                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "notification" :> Verb 'GET 200 '[JSON] Notification
{- notificationPutEnvelopesEnvelopeIdNotification                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "notification" :> ReqBody '[JSON] EnvelopeNotificationRequest :> Verb 'PUT 200 '[JSON] Notification
{- notificationPutTemplatesTemplateIdNotification                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "notification" :> ReqBody '[JSON] TemplateNotificationRequest :> Verb 'PUT 200 '[JSON] Notification
{- oAuth2PostRevoke                                                         -} :<|> "v2" :> "oauth2" :> "revoke" :> Verb 'POST 200 '[JSON] ()
{- oAuth2PostToken                                                          -} :<|> "v2" :> "oauth2" :> "token" :> Verb 'POST 200 '[JSON] OauthAccess
{- pagesDeletePage                                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "pages" :> Capture "pageNumber" Text :> Verb 'DELETE 200 '[JSON] ()
{- pagesDeleteTemplatePage                                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> "pages" :> Capture "pageNumber" Text :> ReqBody '[JSON] PageRequest :> Verb 'DELETE 200 '[JSON] ()
{- pagesGetPageImage                                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "pages" :> Capture "pageNumber" Text :> "page_image" :> QueryParam "dpi" Text :> QueryParam "max_height" Text :> QueryParam "max_width" Text :> QueryParam "show_changes" Text :> Verb 'GET 200 '[PNG] PNG
{- pagesGetPageImages                                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "pages" :> QueryParam "count" Text :> QueryParam "dpi" Text :> QueryParam "max_height" Text :> QueryParam "max_width" Text :> QueryParam "nocache" Text :> QueryParam "show_changes" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] PageImages
{- pagesGetTemplatePageImage                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> "pages" :> Capture "pageNumber" Text :> "page_image" :> QueryParam "dpi" Text :> QueryParam "max_height" Text :> QueryParam "max_width" Text :> QueryParam "show_changes" Text :> Verb 'GET 200 '[PNG] PNG
{- pagesGetTemplatePageImages                                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> "pages" :> QueryParam "count" Text :> QueryParam "dpi" Text :> QueryParam "max_height" Text :> QueryParam "max_width" Text :> QueryParam "nocache" Text :> QueryParam "show_changes" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] PageImages
{- pagesPutPageImage                                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "pages" :> Capture "pageNumber" Text :> "page_image" :> ReqBody '[JSON] PageRequest :> Verb 'PUT 200 '[JSON] ()
{- pagesPutTemplatePageImage                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> "pages" :> Capture "pageNumber" Text :> "page_image" :> ReqBody '[JSON] PageRequest :> Verb 'PUT 200 '[JSON] ()
{- passwordRulesGetPasswordRules                                            -} :<|> "v2" :> "current_user" :> "password_rules" :> Verb 'GET 200 '[JSON] UserPasswordRules
{- paymentGatewayAccountsGetAllPaymentGatewayAccounts                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "payment_gateway_accounts" :> Verb 'GET 200 '[JSON] PaymentGatewayAccountsInfo
{- permissionProfilesDeletePermissionProfiles                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "permission_profiles" :> Capture "permissionProfileId" Text :> Verb 'DELETE 200 '[JSON] ()
{- permissionProfilesGetPermissionProfile                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "permission_profiles" :> Capture "permissionProfileId" Text :> QueryParam "include" Text :> Verb 'GET 200 '[JSON] AccountPermissionProfiles
{- permissionProfilesGetPermissionProfiles                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "permission_profiles" :> QueryParam "include" Text :> Verb 'GET 200 '[JSON] PermissionProfileInformation
{- permissionProfilesPostPermissionProfiles                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "permission_profiles" :> QueryParam "include" Text :> ReqBody '[JSON] AccountPermissionProfiles :> Verb 'POST 200 '[JSON] AccountPermissionProfiles
{- permissionProfilesPutPermissionProfiles                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "permission_profiles" :> Capture "permissionProfileId" Text :> QueryParam "include" Text :> ReqBody '[JSON] AccountPermissionProfiles :> Verb 'PUT 200 '[JSON] AccountPermissionProfiles
{- powerFormsDeletePowerForm                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "powerforms" :> Capture "powerFormId" Text :> Verb 'DELETE 200 '[JSON] ()
{- powerFormsDeletePowerFormsList                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "powerforms" :> ReqBody '[JSON] PowerFormsRequest :> Verb 'DELETE 200 '[JSON] PowerFormsResponse
{- powerFormsGetPowerForm                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "powerforms" :> Capture "powerFormId" Text :> Verb 'GET 200 '[JSON] PowerForms
{- powerFormsGetPowerFormFormData                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "powerforms" :> Capture "powerFormId" Text :> "form_data" :> QueryParam "from_date" Text :> QueryParam "to_date" Text :> Verb 'GET 200 '[JSON] PowerFormsFormDataResponse
{- powerFormsGetPowerFormsList                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "powerforms" :> QueryParam "from_date" Text :> QueryParam "order" Text :> QueryParam "order_by" Text :> QueryParam "to_date" Text :> Verb 'GET 200 '[JSON] PowerFormsResponse
{- powerFormsGetPowerFormsSenders                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "powerforms" :> "senders" :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] PowerFormSendersResponse
{- powerFormsPostPowerForm                                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "powerforms" :> ReqBody '[JSON] PowerForms :> Verb 'POST 200 '[JSON] PowerForms
{- powerFormsPutPowerForm                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "powerforms" :> Capture "powerFormId" Text :> ReqBody '[JSON] PowerForms :> Verb 'PUT 200 '[JSON] PowerForms
{- purchasedEnvelopesPutPurchasedEnvelopes                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "billing_plan" :> "purchased_envelopes" :> ReqBody '[JSON] PurchasedEnvelopesInformation :> Verb 'PUT 200 '[JSON] ()
{- recipientNamesGetRecipientNames                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "recipient_names" :> QueryParam "email" Text :> Verb 'GET 200 '[JSON] RecipientNamesResponse
{- recipientsDeleteBulkRecipientsFile                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "bulk_recipients" :> Verb 'DELETE 200 '[JSON] BulkRecipientsUpdateResponse
{- recipientsDeleteRecipient                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> Verb 'DELETE 200 '[JSON] EnvelopeRecipients
{- recipientsDeleteRecipientTabs                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "tabs" :> ReqBody '[JSON] EnvelopeRecipientTabs :> Verb 'DELETE 200 '[JSON] EnvelopeRecipientTabs
{- recipientsDeleteRecipients                                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> ReqBody '[JSON] EnvelopeRecipients :> Verb 'DELETE 200 '[JSON] EnvelopeRecipients
{- recipientsDeleteTemplateBulkRecipientsFile                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> Capture "recipientId" Text :> "bulk_recipients" :> Verb 'DELETE 200 '[JSON] BulkRecipientsUpdateResponse
{- recipientsDeleteTemplateRecipient                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> Capture "recipientId" Text :> ReqBody '[JSON] TemplateRecipients :> Verb 'DELETE 200 '[JSON] TemplateRecipients
{- recipientsDeleteTemplateRecipientTabs                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> Capture "recipientId" Text :> "tabs" :> ReqBody '[JSON] TemplateTabs :> Verb 'DELETE 200 '[JSON] TemplateRecipientTabs
{- recipientsDeleteTemplateRecipients                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> ReqBody '[JSON] TemplateRecipients :> Verb 'DELETE 200 '[JSON] TemplateRecipients
{- recipientsGetBulkRecipients                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "bulk_recipients" :> QueryParam "include_tabs" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] EnvelopeBulkRecipients
{- recipientsGetRecipientDocumentVisibility                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "document_visibility" :> Verb 'GET 200 '[JSON] EnvelopeDocumentVisibility
{- recipientsGetRecipientInitialsImage                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "initials_image" :> QueryParam "include_chrome" Text :> Verb 'GET 200 '[GIF] GIF
{- recipientsGetRecipientSignature                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "signature" :> Verb 'GET 200 '[JSON] UserSignatures
{- recipientsGetRecipientSignatureImage                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "signature_image" :> QueryParam "include_chrome" Text :> Verb 'GET 200 '[GIF] GIF
{- recipientsGetRecipientTabs                                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "tabs" :> QueryParam "include_anchor_tab_locations" Text :> QueryParam "include_metadata" Text :> Verb 'GET 200 '[JSON] EnvelopeRecipientTabs
{- recipientsGetRecipients                                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> QueryParam "include_anchor_tab_locations" Text :> QueryParam "include_extended" Text :> QueryParam "include_metadata" Text :> QueryParam "include_tabs" Text :> Verb 'GET 200 '[JSON] EnvelopeRecipients
{- recipientsGetTemplateBulkRecipients                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> Capture "recipientId" Text :> "bulk_recipients" :> QueryParam "include_tabs" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] TemplateBulkRecipients
{- recipientsGetTemplateRecipientDocumentVisibility                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> Capture "recipientId" Text :> "document_visibility" :> Verb 'GET 200 '[JSON] EnvelopeDocumentVisibility
{- recipientsGetTemplateRecipientTabs                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> Capture "recipientId" Text :> "tabs" :> QueryParam "include_anchor_tab_locations" Text :> QueryParam "include_metadata" Text :> Verb 'GET 200 '[JSON] TemplateRecipientTabs
{- recipientsGetTemplateRecipients                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> QueryParam "include_anchor_tab_locations" Text :> QueryParam "include_extended" Text :> QueryParam "include_tabs" Text :> Verb 'GET 200 '[JSON] TemplateRecipients
{- recipientsPostRecipientTabs                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "tabs" :> ReqBody '[JSON] EnvelopeRecipientTabs :> Verb 'POST 200 '[JSON] EnvelopeRecipientTabs
{- recipientsPostRecipients                                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> QueryParam "resend_envelope" Text :> ReqBody '[JSON] EnvelopeRecipients :> Verb 'POST 200 '[JSON] EnvelopeRecipients
{- recipientsPostTemplateRecipientTabs                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> Capture "recipientId" Text :> "tabs" :> ReqBody '[JSON] TemplateTabs :> Verb 'POST 200 '[JSON] TemplateRecipientTabs
{- recipientsPostTemplateRecipients                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> QueryParam "resend_envelope" Text :> ReqBody '[JSON] TemplateRecipients :> Verb 'POST 200 '[JSON] TemplateRecipients
{- recipientsPutBulkRecipients                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "bulk_recipients" :> ReqBody '[JSON] BulkRecipientsRequest :> Verb 'PUT 200 '[JSON] BulkRecipientsSummaryResponse
{- recipientsPutRecipientDocumentVisibility                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "document_visibility" :> ReqBody '[JSON] EnvelopeDocumentVisibility :> Verb 'PUT 200 '[JSON] EnvelopeDocumentVisibility
{- recipientsPutRecipientInitialsImage                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "initials_image" :> Verb 'PUT 200 '[JSON] ()
{- recipientsPutRecipientSignatureImage                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "signature_image" :> Verb 'PUT 200 '[JSON] ()
{- recipientsPutRecipientTabs                                               -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> Capture "recipientId" Text :> "tabs" :> ReqBody '[JSON] EnvelopeRecipientTabs :> Verb 'PUT 200 '[JSON] EnvelopeRecipientTabs
{- recipientsPutRecipients                                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> QueryParam "resend_envelope" Text :> ReqBody '[JSON] EnvelopeRecipients :> Verb 'PUT 200 '[JSON] RecipientsUpdateSummary
{- recipientsPutRecipientsDocumentVisibility                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "recipients" :> "document_visibility" :> ReqBody '[JSON] EnvelopeDocumentVisibility :> Verb 'PUT 200 '[JSON] EnvelopeDocumentVisibility
{- recipientsPutTemplateBulkRecipients                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> Capture "recipientId" Text :> "bulk_recipients" :> ReqBody '[JSON] BulkRecipientsRequest :> Verb 'PUT 200 '[JSON] BulkRecipientsSummaryResponse
{- recipientsPutTemplateRecipientDocumentVisibility                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> Capture "recipientId" Text :> "document_visibility" :> ReqBody '[JSON] TemplateDocumentVisibility :> Verb 'PUT 200 '[JSON] TemplateDocumentVisibility
{- recipientsPutTemplateRecipientTabs                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> Capture "recipientId" Text :> "tabs" :> ReqBody '[JSON] TemplateTabs :> Verb 'PUT 200 '[JSON] TemplateRecipientTabs
{- recipientsPutTemplateRecipients                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> QueryParam "resend_envelope" Text :> ReqBody '[JSON] TemplateRecipients :> Verb 'PUT 200 '[JSON] RecipientsUpdateSummary
{- recipientsPutTemplateRecipientsDocumentVisibility                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "recipients" :> "document_visibility" :> ReqBody '[JSON] TemplateDocumentVisibility :> Verb 'PUT 200 '[JSON] TemplateDocumentVisibility
{- searchFoldersGetSearchFolderContents                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "search_folders" :> Capture "searchFolderId" Text :> QueryParam "all" Text :> QueryParam "count" Text :> QueryParam "from_date" Text :> QueryParam "include_recipients" Text :> QueryParam "order" Text :> QueryParam "order_by" Text :> QueryParam "start_position" Text :> QueryParam "to_date" Text :> Verb 'GET 200 '[JSON] FolderItemResponse
{- serviceInformationGetResourceInformation                                 -} :<|> "v2" :> Verb 'GET 200 '[JSON] Resources
{- serviceInformationGetServiceInformation                                  -} :<|> "service_information" :> Verb 'GET 200 '[JSON] Services
{- settingsGetSettings                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "settings" :> Verb 'GET 200 '[JSON] AccountSettingsInformation
{- settingsPutSettings                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "settings" :> ReqBody '[JSON] AccountSettingsInformation :> Verb 'PUT 200 '[JSON] ()
{- sharedAccessGetSharedAccess                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "shared_access" :> QueryParam "count" Text :> QueryParam "envelopes_not_shared_user_status" Text :> QueryParam "folder_ids" Text :> QueryParam "item_type" Text :> QueryParam "search_text" Text :> QueryParam "shared" Text :> QueryParam "start_position" Text :> QueryParam "user_ids" Text :> Verb 'GET 200 '[JSON] AccountSharedAccess
{- sharedAccessPutSharedAccess                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "shared_access" :> QueryParam "item_type" Text :> QueryParam "user_ids" Text :> ReqBody '[JSON] AccountSharedAccess :> Verb 'PUT 200 '[JSON] AccountSharedAccess
{- signingGroupsDeleteSigningGroupUsers                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "signing_groups" :> Capture "signingGroupId" Text :> "users" :> ReqBody '[JSON] SigningGroupUsers :> Verb 'DELETE 200 '[JSON] SigningGroupUsers
{- signingGroupsDeleteSigningGroups                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "signing_groups" :> ReqBody '[JSON] SigningGroupInformation :> Verb 'DELETE 200 '[JSON] SigningGroupInformation
{- signingGroupsGetSigningGroup                                             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "signing_groups" :> Capture "signingGroupId" Text :> Verb 'GET 200 '[JSON] SigningGroups
{- signingGroupsGetSigningGroupUsers                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "signing_groups" :> Capture "signingGroupId" Text :> "users" :> Verb 'GET 200 '[JSON] SigningGroupUsers
{- signingGroupsGetSigningGroups                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "signing_groups" :> QueryParam "group_type" Text :> QueryParam "include_users" Text :> Verb 'GET 200 '[JSON] SigningGroupInformation
{- signingGroupsPostSigningGroups                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "signing_groups" :> ReqBody '[JSON] SigningGroupInformation :> Verb 'POST 200 '[JSON] SigningGroupInformation
{- signingGroupsPutSigningGroup                                             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "signing_groups" :> Capture "signingGroupId" Text :> ReqBody '[JSON] SigningGroups :> Verb 'PUT 200 '[JSON] SigningGroups
{- signingGroupsPutSigningGroupUsers                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "signing_groups" :> Capture "signingGroupId" Text :> "users" :> ReqBody '[JSON] SigningGroupUsers :> Verb 'PUT 200 '[JSON] SigningGroupUsers
{- signingGroupsPutSigningGroups                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "signing_groups" :> ReqBody '[JSON] SigningGroupInformation :> Verb 'PUT 200 '[JSON] SigningGroupInformation
{- supportedLanguagesGetSupportedLanguages                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "supported_languages" :> Verb 'GET 200 '[JSON] SupportedLanguages
{- tabDeleteCustomTab                                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "tab_definitions" :> Capture "customTabId" Text :> Verb 'DELETE 200 '[JSON] ()
{- tabGetCustomTab                                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "tab_definitions" :> Capture "customTabId" Text :> Verb 'GET 200 '[JSON] CustomTabs
{- tabPutCustomTab                                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "tab_definitions" :> Capture "customTabId" Text :> ReqBody '[JSON] CustomTabs :> Verb 'PUT 200 '[JSON] CustomTabs
{- tabSettingsGetTabSettings                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "settings" :> "tabs" :> Verb 'GET 200 '[JSON] AccountTabSettings
{- tabSettingsPutSettings                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "settings" :> "tabs" :> ReqBody '[JSON] AccountTabSettings :> Verb 'PUT 200 '[JSON] AccountTabSettings
{- tabsGetDocumentTabs                                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "tabs" :> QueryParam "page_numbers" Text :> Verb 'GET 200 '[JSON] EnvelopeDocumentTabs
{- tabsGetPageTabs                                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "pages" :> Capture "pageNumber" Text :> "tabs" :> Verb 'GET 200 '[JSON] EnvelopeDocumentTabs
{- tabsGetTabDefinitions                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "tab_definitions" :> QueryParam "custom_tab_only" Text :> Verb 'GET 200 '[JSON] TabMetadataList
{- tabsGetTemplateDocumentTabs                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> "tabs" :> QueryParam "page_numbers" Text :> Verb 'GET 200 '[JSON] TemplateDocumentTabs
{- tabsGetTemplatePageTabs                                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "documents" :> Capture "documentId" Text :> "pages" :> Capture "pageNumber" Text :> "tabs" :> Verb 'GET 200 '[JSON] TemplateDocumentTabs
{- tabsPostTabDefinitions                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "tab_definitions" :> ReqBody '[JSON] CustomTabs :> Verb 'POST 200 '[JSON] CustomTabs
{- templatesDeleteDocumentTemplates                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "templates" :> Capture "templateId" Text :> Verb 'DELETE 200 '[JSON] ()
{- templatesDeleteTemplatePart                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> Capture "templatePart" Text :> ReqBody '[JSON] Groups :> Verb 'DELETE 200 '[JSON] Groups
{- templatesGetDocumentTemplates                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "templates" :> QueryParam "include" Text :> Verb 'GET 200 '[JSON] EnvelopeTemplates
{- templatesGetEnvelopeTemplates                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "templates" :> QueryParam "include" Text :> Verb 'GET 200 '[JSON] EnvelopeTemplates
{- templatesGetTemplate                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> QueryParam "include" Text :> Verb 'GET 200 '[JSON] Templates
{- templatesGetTemplates                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> QueryParam "count" Text :> QueryParam "folder" Text :> QueryParam "folder_ids" Text :> QueryParam "folder_types" Text :> QueryParam "from_date" Text :> QueryParam "include" Text :> QueryParam "order" Text :> QueryParam "order_by" Text :> QueryParam "search_text" Text :> QueryParam "shared" Text :> QueryParam "shared_by_me" Text :> QueryParam "start_position" Text :> QueryParam "to_date" Text :> QueryParam "used_from_date" Text :> QueryParam "used_to_date" Text :> QueryParam "user_filter" Text :> QueryParam "user_id" Text :> Verb 'GET 200 '[JSON] EnvelopeTemplateResults
{- templatesPostDocumentTemplates                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "documents" :> Capture "documentId" Text :> "templates" :> ReqBody '[JSON] DocumentTemplateList :> Verb 'POST 200 '[JSON] DocumentTemplateList
{- templatesPostEnvelopeTemplates                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "templates" :> ReqBody '[JSON] DocumentTemplateList :> Verb 'POST 200 '[JSON] DocumentTemplateList
{- templatesPostTemplates                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> ReqBody '[JSON] Templates :> Verb 'POST 200 '[JSON] TemplateSummary
{- templatesPutTemplate                                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> ReqBody '[JSON] Templates :> Verb 'PUT 200 '[JSON] TemplateUpdateSummary
{- templatesPutTemplatePart                                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> Capture "templatePart" Text :> ReqBody '[JSON] Groups :> Verb 'PUT 200 '[JSON] Groups
{- unsupportedFileTypesGetUnsupportedFileTypes                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "unsupported_file_types" :> Verb 'GET 200 '[JSON] FileTypeList
{- userCustomSettingsDeleteCustomSettings                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "custom_settings" :> ReqBody '[JSON] UserCustomSettings :> Verb 'DELETE 200 '[JSON] UserCustomSettings
{- userCustomSettingsGetCustomSettings                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "custom_settings" :> Verb 'GET 200 '[JSON] UserCustomSettings
{- userCustomSettingsPutCustomSettings                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "custom_settings" :> ReqBody '[JSON] UserCustomSettings :> Verb 'PUT 200 '[JSON] UserCustomSettings
{- userGetUser                                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> QueryParam "additional_info" Text :> QueryParam "email" Text :> Verb 'GET 200 '[JSON] Users
{- userProfileGetProfile                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "profile" :> Verb 'GET 200 '[JSON] UserProfiles
{- userProfileImageDeleteUserProfileImage                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "profile" :> "image" :> Verb 'DELETE 200 '[JSON] ()
{- userProfileImageGetUserProfileImage                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "profile" :> "image" :> QueryParam "encoding" Text :> Verb 'GET 200 '[GIF] GIF
{- userProfileImagePutUserProfileImage                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "profile" :> "image" :> Verb 'PUT 200 '[JSON] ()
{- userProfilePutProfile                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "profile" :> ReqBody '[JSON] UserProfiles :> Verb 'PUT 200 '[JSON] ()
{- userPutUser                                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> ReqBody '[JSON] Users :> Verb 'PUT 200 '[JSON] Users
{- userSettingsGetUserSettings                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "settings" :> Verb 'GET 200 '[JSON] UserSettingsInformation
{- userSettingsPutUserSettings                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "settings" :> ReqBody '[JSON] UserSettingsInformation :> Verb 'PUT 200 '[JSON] ()
{- userSignaturesDeleteUserSignature                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "signatures" :> Capture "signatureId" Text :> Verb 'DELETE 200 '[JSON] ()
{- userSignaturesDeleteUserSignatureImage                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "signatures" :> Capture "signatureId" Text :> Capture "imageType" Text :> Verb 'DELETE 200 '[JSON] UserSignatures
{- userSignaturesGetUserSignature                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "signatures" :> Capture "signatureId" Text :> Verb 'GET 200 '[JSON] UserSignatures
{- userSignaturesGetUserSignatureImage                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "signatures" :> Capture "signatureId" Text :> Capture "imageType" Text :> QueryParam "include_chrome" Text :> Verb 'GET 200 '[GIF] GIF
{- userSignaturesGetUserSignatures                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "signatures" :> QueryParam "stamp_type" Text :> Verb 'GET 200 '[JSON] UserSignaturesInformation
{- userSignaturesPostUserSignatures                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "signatures" :> ReqBody '[JSON] UserSignaturesInformation :> Verb 'POST 200 '[JSON] UserSignaturesInformation
{- userSignaturesPutUserSignature                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "signatures" :> ReqBody '[JSON] UserSignaturesInformation :> Verb 'PUT 200 '[JSON] UserSignaturesInformation
{- userSignaturesPutUserSignatureById                                       -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "signatures" :> Capture "signatureId" Text :> QueryParam "close_existing_signature" Text :> ReqBody '[JSON] UserSignatureDefinition :> Verb 'PUT 200 '[JSON] UserSignatures
{- userSignaturesPutUserSignatureImage                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "signatures" :> Capture "signatureId" Text :> Capture "imageType" Text :> Verb 'PUT 200 '[JSON] UserSignatures
{- userSocialLoginDeleteUserSocialLogin                                     -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "social" :> ReqBody '[JSON] UserSocialAccountLogins :> Verb 'DELETE 200 '[JSON] ()
{- userSocialLoginGetUserSocialLogin                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "social" :> Verb 'GET 200 '[JSON] UserSocialIdResult
{- userSocialLoginPutUserSocialLogin                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> Capture "userId" Text :> "social" :> ReqBody '[JSON] UserSocialAccountLogins :> Verb 'PUT 200 '[JSON] ()
{- usersDeleteUsers                                                         -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> ReqBody '[JSON] UserInfoList :> Verb 'DELETE 200 '[JSON] GroupUsers
{- usersGetUsers                                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> QueryParam "additional_info" Text :> QueryParam "count" Text :> QueryParam "email" Text :> QueryParam "email_substring" Text :> QueryParam "group_id" Text :> QueryParam "include_usersettings_for_csv" Text :> QueryParam "login_status" Text :> QueryParam "not_group_id" Text :> QueryParam "start_position" Text :> QueryParam "status" Text :> QueryParam "user_name_substring" Text :> Verb 'GET 200 '[JSON] UserInformationList
{- usersPostUsers                                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> ReqBody '[JSON] NewUsersDefinition :> Verb 'POST 200 '[JSON] NewUsersSummary
{- usersPutUsers                                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "users" :> ReqBody '[JSON] UserInformationList :> Verb 'PUT 200 '[JSON] UserInformationList
{- viewsPostAccountConsoleView                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "views" :> "console" :> ReqBody '[JSON] ConsoleViewRequest :> Verb 'POST 200 '[JSON] EnvelopeViews
{- viewsPostEnvelopeCorrectView                                             -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "views" :> "correct" :> ReqBody '[JSON] CorrectViewRequest :> Verb 'POST 200 '[JSON] EnvelopeViews
{- viewsPostEnvelopeEditView                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "views" :> "edit" :> ReqBody '[JSON] ReturnUrlRequest :> Verb 'POST 200 '[JSON] EnvelopeViews
{- viewsPostEnvelopeRecipientView                                           -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "views" :> "recipient" :> ReqBody '[JSON] RecipientViewRequest :> Verb 'POST 200 '[JSON] EnvelopeViews
{- viewsPostEnvelopeSenderView                                              -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "envelopes" :> Capture "envelopeId" Text :> "views" :> "sender" :> ReqBody '[JSON] ReturnUrlRequest :> Verb 'POST 200 '[JSON] EnvelopeViews
{- viewsPostTemplateEditView                                                -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "templates" :> Capture "templateId" Text :> "views" :> "edit" :> ReqBody '[JSON] ReturnUrlRequest :> Verb 'POST 200 '[JSON] TemplateViews
{- watermarkGetWatermark                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "watermark" :> Verb 'GET 200 '[JSON] AccountWatermarks
{- watermarkPreviewPutWatermarkPreview                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "watermark" :> "preview" :> ReqBody '[JSON] AccountWatermarks :> Verb 'PUT 200 '[JSON] AccountWatermarks
{- watermarkPutWatermark                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "watermark" :> ReqBody '[JSON] AccountWatermarks :> Verb 'PUT 200 '[JSON] AccountWatermarks
{- workspaceDeleteWorkspace                                                 -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> Capture "workspaceId" Text :> Verb 'DELETE 200 '[JSON] Workspaces
{- workspaceFileGetWorkspaceFile                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> Capture "workspaceId" Text :> "folders" :> Capture "folderId" Text :> "files" :> Capture "fileId" Text :> QueryParam "is_download" Text :> QueryParam "pdf_version" Text :> Verb 'GET 200 '[JSON] ()
{- workspaceFilePagesGetWorkspaceFilePages                                  -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> Capture "workspaceId" Text :> "folders" :> Capture "folderId" Text :> "files" :> Capture "fileId" Text :> "pages" :> QueryParam "count" Text :> QueryParam "dpi" Text :> QueryParam "max_height" Text :> QueryParam "max_width" Text :> QueryParam "start_position" Text :> Verb 'GET 200 '[JSON] PageImages
{- workspaceFilePostWorkspaceFiles                                          -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> Capture "workspaceId" Text :> "folders" :> Capture "folderId" Text :> "files" :> Verb 'POST 200 '[JSON] WorkspaceItems
{- workspaceFilePutWorkspaceFile                                            -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> Capture "workspaceId" Text :> "folders" :> Capture "folderId" Text :> "files" :> Capture "fileId" Text :> Verb 'PUT 200 '[JSON] WorkspaceItems
{- workspaceFolderDeleteWorkspaceItems                                      -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> Capture "workspaceId" Text :> "folders" :> Capture "folderId" Text :> ReqBody '[JSON] WorkspaceItemList :> Verb 'DELETE 200 '[JSON] ()
{- workspaceFolderGetWorkspaceFolder                                        -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> Capture "workspaceId" Text :> "folders" :> Capture "folderId" Text :> QueryParam "count" Text :> QueryParam "include_files" Text :> QueryParam "include_sub_folders" Text :> QueryParam "include_thumbnails" Text :> QueryParam "include_user_detail" Text :> QueryParam "start_position" Text :> QueryParam "workspace_user_id" Text :> Verb 'GET 200 '[JSON] WorkspaceFolderContents
{- workspaceGetWorkspace                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> Capture "workspaceId" Text :> Verb 'GET 200 '[JSON] Workspaces
{- workspaceGetWorkspaces                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> Verb 'GET 200 '[JSON] WorkspaceList
{- workspacePostWorkspace                                                   -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> ReqBody '[JSON] Workspaces :> Verb 'POST 200 '[JSON] Workspaces
{- workspacePutWorkspace                                                    -} :<|> "v2" :> "accounts" :> Capture "accountId" Text :> "workspaces" :> Capture "workspaceId" Text :> ReqBody '[JSON] Workspaces :> Verb 'PUT 200 '[JSON] Workspaces

data DocuSignClient m = DocuSignClient
  { accountCustomFieldsDeleteAccountCustomFields :: Text -> Text -> Maybe Text -> m ()
  , accountCustomFieldsGetAccountCustomFields :: Text -> m AccountCustomFields
  , accountCustomFieldsPostAccountCustomFields :: Text -> Maybe Text -> CustomField -> m AccountCustomFields
  , accountCustomFieldsPutAccountCustomFields :: Text -> Text -> Maybe Text -> CustomField -> m AccountCustomFields
  , accountPasswordRulesGetAccountPasswordRules :: Text -> m AccountPasswordRules
  , accountPasswordRulesPutAccountPasswordRules :: Text -> AccountPasswordRules -> m AccountPasswordRules
  , accountSignatureProvidersGetSignatureProviders :: Text -> m AccountSignatureProviders
  , accountsDeleteAccount :: Text -> m ()
  , accountsGetAccount :: Text -> Maybe Text -> m Accounts
  , accountsGetProvisioning :: m ProvisioningInformation
  , accountsPostAccounts :: Maybe Text -> NewAccountDefinition -> m NewAccountSummary
  , apiRequestLogDeleteRequestLogs :: m ()
  , apiRequestLogGetRequestLog :: Text -> m Text
  , apiRequestLogGetRequestLogSettings :: m RequestLogs
  , apiRequestLogGetRequestLogs :: Maybe Text -> m ApiRequestLogsResult
  , apiRequestLogPutRequestLogSettings :: RequestLogs -> m RequestLogs
  , attachmentsDeleteAttachments :: Text -> Text -> EnvelopeAttachmentsRequest -> m EnvelopeAttachmentsResult
  , attachmentsGetAttachment :: Text -> Text -> Text -> m ()
  , attachmentsGetAttachments :: Text -> Text -> m EnvelopeAttachmentsResult
  , attachmentsPutAttachment :: Text -> Text -> Text -> Attachment -> m EnvelopeAttachmentsResult
  , attachmentsPutAttachments :: Text -> Text -> EnvelopeAttachmentsRequest -> m EnvelopeAttachmentsResult
  , auditEventsGetAuditEvents :: Text -> Text -> m EnvelopeAuditEventResponse
  , billingChargesGetAccountBillingCharges :: Text -> Maybe Text -> m BillingChargeResponse
  , billingInvoicesGetBillingInvoice :: Text -> Text -> m Invoices
  , billingInvoicesGetBillingInvoices :: Text -> Maybe Text -> Maybe Text -> m BillingInvoicesResponse
  , billingInvoicesGetBillingInvoicesPastDue :: Text -> m BillingInvoicesSummary
  , billingPaymentsGetPayment :: Text -> Text -> m Payments
  , billingPaymentsGetPaymentList :: Text -> Maybe Text -> Maybe Text -> m BillingPaymentsResponse
  , billingPaymentsPostPayment :: Text -> BillingPaymentRequest -> m BillingPaymentResponse
  , billingPlanGetBillingPlan :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> m BillingPlans
  , billingPlanGetCreditCardInfo :: Text -> m CreditCardInformation
  , billingPlanPutBillingPlan :: Text -> Maybe Text -> BillingPlanInformation -> m BillingPlanUpdateResponse
  , billingPlansGetBillingPlan :: Text -> m BillingPlanResponse
  , billingPlansGetBillingPlans :: m BillingPlansResponse
  , brandDeleteBrand :: Text -> Text -> m ()
  , brandExportGetBrandExportFile :: Text -> Text -> m ()
  , brandGetBrand :: Text -> Text -> Maybe Text -> Maybe Text -> m Brand
  , brandLogoDeleteBrandLogo :: Text -> Text -> Text -> m ()
  , brandLogoGetBrandLogo :: Text -> Text -> Text -> m ()
  , brandLogoPutBrandLogo :: Text -> Text -> Text -> m ()
  , brandPutBrand :: Text -> Text -> Brand -> m Brand
  , brandResourcesGetBrandResources :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> m ()
  , brandResourcesGetBrandResourcesList :: Text -> Text -> m BrandResourcesList
  , brandResourcesPutBrandResources :: Text -> Text -> Text -> m BrandResources
  , brandsDeleteBrands :: Text -> BrandsRequest -> m AccountBrands
  , brandsDeleteGroupBrands :: Text -> Text -> BrandsRequest -> m GroupBrands
  , brandsGetBrands :: Text -> Maybe Text -> Maybe Text -> m AccountBrands
  , brandsGetGroupBrands :: Text -> Text -> m GroupBrands
  , brandsPostBrands :: Text -> Brand -> m AccountBrands
  , brandsPutGroupBrands :: Text -> Text -> BrandsRequest -> m GroupBrands
  , bulkEnvelopesGetBulkEnvelopesBatchId :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> m BulkEnvelopeStatus
  , bulkEnvelopesGetEnvelopesBulk :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> m BulkEnvelopes
  , captiveRecipientsDeleteCaptiveRecipientsPart :: Text -> Text -> CaptiveRecipientInformation -> m CaptiveRecipientInformation
  , chunkedUploadsDeleteChunkedUpload :: Text -> Text -> m ChunkedUploads
  , chunkedUploadsGetChunkedUpload :: Text -> Text -> Maybe Text -> m ChunkedUploads
  , chunkedUploadsPostChunkedUploads :: Text -> ChunkedUploadRequest -> m ChunkedUploads
  , chunkedUploadsPutChunkedUploadPart :: Text -> Text -> Text -> ChunkedUploadRequest -> m ChunkedUploads
  , chunkedUploadsPutChunkedUploads :: Text -> Text -> Maybe Text -> m ChunkedUploads
  , cloudStorageDeleteCloudStorage :: Text -> Text -> Text -> m CloudStorageProviders
  , cloudStorageDeleteCloudStorageProviders :: Text -> Text -> CloudStorageProviders -> m CloudStorageProviders
  , cloudStorageFolderGetCloudStorageFolder :: Text -> Text -> Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m CloudStorage
  , cloudStorageFolderGetCloudStorageFolderAll :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m CloudStorage
  , cloudStorageGetCloudStorage :: Text -> Text -> Text -> Maybe Text -> m CloudStorageProviders
  , cloudStorageGetCloudStorageProviders :: Text -> Text -> Maybe Text -> m CloudStorageProviders
  , cloudStoragePostCloudStorage :: Text -> Text -> CloudStorageProviders -> m CloudStorageProviders
  , connectDeleteConnectConfig :: Text -> Text -> m ()
  , connectFailuresDeleteConnectFailureLog :: Text -> Text -> m ()
  , connectFailuresGetConnectLogs :: Text -> Maybe Text -> Maybe Text -> m ConnectEvents
  , connectGetConnectConfig :: Text -> Text -> m ConnectConfigResults
  , connectGetConnectConfigs :: Text -> m ConnectConfigResults
  , connectGetConnectUsers :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m IntegratedUserInfoList
  , connectLogDeleteConnectLog :: Text -> Text -> m ()
  , connectLogDeleteConnectLogs :: Text -> m ()
  , connectLogGetConnectLog :: Text -> Text -> Maybe Text -> m ConnectLog
  , connectLogGetConnectLogs :: Text -> Maybe Text -> Maybe Text -> m ConnectEvents
  , connectPostConnectConfiguration :: Text -> ConnectConfigurations -> m ConnectConfigurations
  , connectPublishPutConnectRetry :: Text -> ConnectFailureFilter -> m ConnectFailureResults
  , connectPublishPutConnectRetryByEnvelope :: Text -> Text -> m ConnectFailureResults
  , connectPutConnectConfiguration :: Text -> ConnectConfigurations -> m ConnectConfigurations
  , consumerDisclosureGetConsumerDisclosure :: Text -> Maybe Text -> m AccountConsumerDisclosures
  , consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientId :: Text -> Text -> Text -> Maybe Text -> m EnvelopeConsumerDisclosures
  , consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientIdLangCode :: Text -> Text -> Text -> Text -> Maybe Text -> m EnvelopeConsumerDisclosures
  , consumerDisclosureGetConsumerDisclosureLangCode :: Text -> Text -> m AccountConsumerDisclosures
  , consumerDisclosurePutConsumerDisclosure :: Text -> Text -> Maybe Text -> EnvelopeConsumerDisclosures -> m EnvelopeConsumerDisclosures
  , contactsDeleteContactWithId :: Text -> Text -> m ContactUpdateResponse
  , contactsDeleteContacts :: Text -> ContactModRequest -> m ContactUpdateResponse
  , contactsGetContactById :: Text -> Text -> Maybe Text -> m ContactGetResponse
  , contactsPostContacts :: Text -> ContactModRequest -> m ContactUpdateResponse
  , contactsPutContacts :: Text -> ContactModRequest -> m ContactUpdateResponse
  , customFieldsDeleteCustomFields :: Text -> Text -> EnvelopeCustomFields -> m EnvelopeCustomFields
  , customFieldsDeleteTemplateCustomFields :: Text -> Text -> TemplateCustomFields -> m TemplateCustomFields
  , customFieldsGetCustomFields :: Text -> Text -> m CustomFieldsEnvelope
  , customFieldsGetTemplateCustomFields :: Text -> Text -> m TemplateCustomFields
  , customFieldsPostCustomFields :: Text -> Text -> EnvelopeCustomFields -> m EnvelopeCustomFields
  , customFieldsPostTemplateCustomFields :: Text -> Text -> TemplateCustomFields -> m TemplateCustomFields
  , customFieldsPutCustomFields :: Text -> Text -> EnvelopeCustomFields -> m EnvelopeCustomFields
  , customFieldsPutTemplateCustomFields :: Text -> Text -> TemplateCustomFields -> m TemplateCustomFields
  , documentFieldsDeleteDocumentFields :: Text -> Text -> Text -> EnvelopeDocumentFields -> m EnvelopeDocumentFields
  , documentFieldsDeleteTemplateDocumentFields :: Text -> Text -> Text -> TemplateDocumentFields -> m TemplateDocumentFields
  , documentFieldsGetDocumentFields :: Text -> Text -> Text -> m EnvelopeDocumentFields
  , documentFieldsGetTemplateDocumentFields :: Text -> Text -> Text -> m TemplateDocumentFields
  , documentFieldsPostDocumentFields :: Text -> Text -> Text -> EnvelopeDocumentFields -> m EnvelopeDocumentFields
  , documentFieldsPostTemplateDocumentFields :: Text -> Text -> Text -> TemplateDocumentFields -> m TemplateDocumentFields
  , documentFieldsPutDocumentFields :: Text -> Text -> Text -> EnvelopeDocumentFields -> m EnvelopeDocumentFields
  , documentFieldsPutTemplateDocumentFields :: Text -> Text -> Text -> TemplateDocumentFields -> m TemplateDocumentFields
  , documentsDeleteDocuments :: Text -> Text -> EnvelopeDefinition -> m EnvelopeDocuments
  , documentsDeleteTemplateDocuments :: Text -> Text -> EnvelopeDefinition -> m TemplateDocuments
  , documentsGetDocument :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m PDF
  , documentsGetDocuments :: Text -> Text -> Maybe Text -> m EnvelopeDocuments
  , documentsGetTemplateDocument :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> m PDF
  , documentsGetTemplateDocuments :: Text -> Text -> m TemplateDocuments
  , documentsPutDocument :: Text -> Text -> Text -> Maybe Text -> m ()
  , documentsPutDocuments :: Text -> Text -> Maybe Text -> EnvelopeDefinition -> m EnvelopeDocuments
  , documentsPutTemplateDocument :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> EnvelopeDefinition -> m EnvelopeDocument
  , documentsPutTemplateDocuments :: Text -> Text -> Maybe Text -> EnvelopeDefinition -> m TemplateDocuments
  , eMortgagePostTransactions :: Text -> EMortgageTransactions -> m PostTransactionsResponse
  , eNoteConfigurationDeleteENoteConfiguration :: Text -> m ()
  , eNoteConfigurationGetENoteConfiguration :: Text -> m ENoteConfigurations
  , eNoteConfigurationPutENoteConfiguration :: Text -> ENoteConfigurations -> m ENoteConfigurations
  , emailSettingsDeleteEmailSettings :: Text -> Text -> m EnvelopeEmailSettings
  , emailSettingsGetEmailSettings :: Text -> Text -> m EnvelopeEmailSettings
  , emailSettingsPostEmailSettings :: Text -> Text -> EnvelopeEmailSettings -> m EnvelopeEmailSettings
  , emailSettingsPutEmailSettings :: Text -> Text -> EnvelopeEmailSettings -> m EnvelopeEmailSettings
  , envelopesGetEnvelope :: Text -> Text -> Maybe Text -> Maybe Text -> m Envelopes
  , envelopesGetEnvelopes :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m EnvelopesInformation
  , envelopesPostEnvelopes :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> EnvelopeDefinition -> m EnvelopeSummary
  , envelopesPutEnvelope :: Text -> Text -> Maybe Text -> Maybe Text -> Envelopes -> m EnvelopeUpdateSummary
  , envelopesPutStatus :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> EnvelopeIdsRequest -> m EnvelopesInformation
  , foldersGetFolderItems :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m FolderItemsResponse
  , foldersGetFolders :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m Folders
  , foldersPutFolderById :: Text -> Text -> FoldersRequest -> m Folders
  , formDataGetFormData :: Text -> Text -> m EnvelopeFormData
  , groupsDeleteGroupUsers :: Text -> Text -> UserInfoList -> m GroupUsers
  , groupsDeleteGroups :: Text -> Groups -> m Groups
  , groupsGetGroupUsers :: Text -> Text -> Maybe Text -> Maybe Text -> m GroupUsers
  , groupsGetGroups :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m Groups
  , groupsPostGroups :: Text -> Groups -> m Groups
  , groupsPutGroupUsers :: Text -> Text -> UserInfoList -> m GroupUsers
  , groupsPutGroups :: Text -> Groups -> m Groups
  , lockDeleteEnvelopeLock :: Text -> Text -> m EnvelopeLocks
  , lockDeleteTemplateLock :: Text -> Text -> LockRequest -> m TemplateLocks
  , lockGetEnvelopeLock :: Text -> Text -> m EnvelopeLocks
  , lockGetTemplateLock :: Text -> Text -> m TemplateLocks
  , lockPostEnvelopeLock :: Text -> Text -> LockRequest -> m EnvelopeLocks
  , lockPostTemplateLock :: Text -> Text -> LockRequest -> m TemplateLocks
  , lockPutEnvelopeLock :: Text -> Text -> LockRequest -> m EnvelopeLocks
  , lockPutTemplateLock :: Text -> Text -> LockRequest -> m TemplateLocks
  , loginInformationGetLoginInformation :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m Authentication
  , loginInformationPutLoginInformation :: Text -> UserPasswordInformation -> m ()
  , notificationGetEnvelopesEnvelopeIdNotification :: Text -> Text -> m Notification
  , notificationGetTemplatesTemplateIdNotification :: Text -> Text -> m Notification
  , notificationPutEnvelopesEnvelopeIdNotification :: Text -> Text -> EnvelopeNotificationRequest -> m Notification
  , notificationPutTemplatesTemplateIdNotification :: Text -> Text -> TemplateNotificationRequest -> m Notification
  , oAuth2PostRevoke :: m ()
  , oAuth2PostToken :: m OauthAccess
  , pagesDeletePage :: Text -> Text -> Text -> Text -> m ()
  , pagesDeleteTemplatePage :: Text -> Text -> Text -> Text -> PageRequest -> m ()
  , pagesGetPageImage :: Text -> Text -> Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m PNG
  , pagesGetPageImages :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m PageImages
  , pagesGetTemplatePageImage :: Text -> Text -> Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m PNG
  , pagesGetTemplatePageImages :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m PageImages
  , pagesPutPageImage :: Text -> Text -> Text -> Text -> PageRequest -> m ()
  , pagesPutTemplatePageImage :: Text -> Text -> Text -> Text -> PageRequest -> m ()
  , passwordRulesGetPasswordRules :: m UserPasswordRules
  , paymentGatewayAccountsGetAllPaymentGatewayAccounts :: Text -> m PaymentGatewayAccountsInfo
  , permissionProfilesDeletePermissionProfiles :: Text -> Text -> m ()
  , permissionProfilesGetPermissionProfile :: Text -> Text -> Maybe Text -> m AccountPermissionProfiles
  , permissionProfilesGetPermissionProfiles :: Text -> Maybe Text -> m PermissionProfileInformation
  , permissionProfilesPostPermissionProfiles :: Text -> Maybe Text -> AccountPermissionProfiles -> m AccountPermissionProfiles
  , permissionProfilesPutPermissionProfiles :: Text -> Text -> Maybe Text -> AccountPermissionProfiles -> m AccountPermissionProfiles
  , powerFormsDeletePowerForm :: Text -> Text -> m ()
  , powerFormsDeletePowerFormsList :: Text -> PowerFormsRequest -> m PowerFormsResponse
  , powerFormsGetPowerForm :: Text -> Text -> m PowerForms
  , powerFormsGetPowerFormFormData :: Text -> Text -> Maybe Text -> Maybe Text -> m PowerFormsFormDataResponse
  , powerFormsGetPowerFormsList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m PowerFormsResponse
  , powerFormsGetPowerFormsSenders :: Text -> Maybe Text -> m PowerFormSendersResponse
  , powerFormsPostPowerForm :: Text -> PowerForms -> m PowerForms
  , powerFormsPutPowerForm :: Text -> Text -> PowerForms -> m PowerForms
  , purchasedEnvelopesPutPurchasedEnvelopes :: Text -> PurchasedEnvelopesInformation -> m ()
  , recipientNamesGetRecipientNames :: Text -> Maybe Text -> m RecipientNamesResponse
  , recipientsDeleteBulkRecipientsFile :: Text -> Text -> Text -> m BulkRecipientsUpdateResponse
  , recipientsDeleteRecipient :: Text -> Text -> Text -> m EnvelopeRecipients
  , recipientsDeleteRecipientTabs :: Text -> Text -> Text -> EnvelopeRecipientTabs -> m EnvelopeRecipientTabs
  , recipientsDeleteRecipients :: Text -> Text -> EnvelopeRecipients -> m EnvelopeRecipients
  , recipientsDeleteTemplateBulkRecipientsFile :: Text -> Text -> Text -> m BulkRecipientsUpdateResponse
  , recipientsDeleteTemplateRecipient :: Text -> Text -> Text -> TemplateRecipients -> m TemplateRecipients
  , recipientsDeleteTemplateRecipientTabs :: Text -> Text -> Text -> TemplateTabs -> m TemplateRecipientTabs
  , recipientsDeleteTemplateRecipients :: Text -> Text -> TemplateRecipients -> m TemplateRecipients
  , recipientsGetBulkRecipients :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> m EnvelopeBulkRecipients
  , recipientsGetRecipientDocumentVisibility :: Text -> Text -> Text -> m EnvelopeDocumentVisibility
  , recipientsGetRecipientInitialsImage :: Text -> Text -> Text -> Maybe Text -> m GIF
  , recipientsGetRecipientSignature :: Text -> Text -> Text -> m UserSignatures
  , recipientsGetRecipientSignatureImage :: Text -> Text -> Text -> Maybe Text -> m GIF
  , recipientsGetRecipientTabs :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> m EnvelopeRecipientTabs
  , recipientsGetRecipients :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m EnvelopeRecipients
  , recipientsGetTemplateBulkRecipients :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> m TemplateBulkRecipients
  , recipientsGetTemplateRecipientDocumentVisibility :: Text -> Text -> Text -> m EnvelopeDocumentVisibility
  , recipientsGetTemplateRecipientTabs :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> m TemplateRecipientTabs
  , recipientsGetTemplateRecipients :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> m TemplateRecipients
  , recipientsPostRecipientTabs :: Text -> Text -> Text -> EnvelopeRecipientTabs -> m EnvelopeRecipientTabs
  , recipientsPostRecipients :: Text -> Text -> Maybe Text -> EnvelopeRecipients -> m EnvelopeRecipients
  , recipientsPostTemplateRecipientTabs :: Text -> Text -> Text -> TemplateTabs -> m TemplateRecipientTabs
  , recipientsPostTemplateRecipients :: Text -> Text -> Maybe Text -> TemplateRecipients -> m TemplateRecipients
  , recipientsPutBulkRecipients :: Text -> Text -> Text -> BulkRecipientsRequest -> m BulkRecipientsSummaryResponse
  , recipientsPutRecipientDocumentVisibility :: Text -> Text -> Text -> EnvelopeDocumentVisibility -> m EnvelopeDocumentVisibility
  , recipientsPutRecipientInitialsImage :: Text -> Text -> Text -> m ()
  , recipientsPutRecipientSignatureImage :: Text -> Text -> Text -> m ()
  , recipientsPutRecipientTabs :: Text -> Text -> Text -> EnvelopeRecipientTabs -> m EnvelopeRecipientTabs
  , recipientsPutRecipients :: Text -> Text -> Maybe Text -> EnvelopeRecipients -> m RecipientsUpdateSummary
  , recipientsPutRecipientsDocumentVisibility :: Text -> Text -> EnvelopeDocumentVisibility -> m EnvelopeDocumentVisibility
  , recipientsPutTemplateBulkRecipients :: Text -> Text -> Text -> BulkRecipientsRequest -> m BulkRecipientsSummaryResponse
  , recipientsPutTemplateRecipientDocumentVisibility :: Text -> Text -> Text -> TemplateDocumentVisibility -> m TemplateDocumentVisibility
  , recipientsPutTemplateRecipientTabs :: Text -> Text -> Text -> TemplateTabs -> m TemplateRecipientTabs
  , recipientsPutTemplateRecipients :: Text -> Text -> Maybe Text -> TemplateRecipients -> m RecipientsUpdateSummary
  , recipientsPutTemplateRecipientsDocumentVisibility :: Text -> Text -> TemplateDocumentVisibility -> m TemplateDocumentVisibility
  , searchFoldersGetSearchFolderContents :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m FolderItemResponse
  , serviceInformationGetResourceInformation :: m Resources
  , serviceInformationGetServiceInformation :: m Services
  , settingsGetSettings :: Text -> m AccountSettingsInformation
  , settingsPutSettings :: Text -> AccountSettingsInformation -> m ()
  , sharedAccessGetSharedAccess :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m AccountSharedAccess
  , sharedAccessPutSharedAccess :: Text -> Maybe Text -> Maybe Text -> AccountSharedAccess -> m AccountSharedAccess
  , signingGroupsDeleteSigningGroupUsers :: Text -> Text -> SigningGroupUsers -> m SigningGroupUsers
  , signingGroupsDeleteSigningGroups :: Text -> SigningGroupInformation -> m SigningGroupInformation
  , signingGroupsGetSigningGroup :: Text -> Text -> m SigningGroups
  , signingGroupsGetSigningGroupUsers :: Text -> Text -> m SigningGroupUsers
  , signingGroupsGetSigningGroups :: Text -> Maybe Text -> Maybe Text -> m SigningGroupInformation
  , signingGroupsPostSigningGroups :: Text -> SigningGroupInformation -> m SigningGroupInformation
  , signingGroupsPutSigningGroup :: Text -> Text -> SigningGroups -> m SigningGroups
  , signingGroupsPutSigningGroupUsers :: Text -> Text -> SigningGroupUsers -> m SigningGroupUsers
  , signingGroupsPutSigningGroups :: Text -> SigningGroupInformation -> m SigningGroupInformation
  , supportedLanguagesGetSupportedLanguages :: Text -> m SupportedLanguages
  , tabDeleteCustomTab :: Text -> Text -> m ()
  , tabGetCustomTab :: Text -> Text -> m CustomTabs
  , tabPutCustomTab :: Text -> Text -> CustomTabs -> m CustomTabs
  , tabSettingsGetTabSettings :: Text -> m AccountTabSettings
  , tabSettingsPutSettings :: Text -> AccountTabSettings -> m AccountTabSettings
  , tabsGetDocumentTabs :: Text -> Text -> Text -> Maybe Text -> m EnvelopeDocumentTabs
  , tabsGetPageTabs :: Text -> Text -> Text -> Text -> m EnvelopeDocumentTabs
  , tabsGetTabDefinitions :: Text -> Maybe Text -> m TabMetadataList
  , tabsGetTemplateDocumentTabs :: Text -> Text -> Text -> Maybe Text -> m TemplateDocumentTabs
  , tabsGetTemplatePageTabs :: Text -> Text -> Text -> Text -> m TemplateDocumentTabs
  , tabsPostTabDefinitions :: Text -> CustomTabs -> m CustomTabs
  , templatesDeleteDocumentTemplates :: Text -> Text -> Text -> Text -> m ()
  , templatesDeleteTemplatePart :: Text -> Text -> Text -> Groups -> m Groups
  , templatesGetDocumentTemplates :: Text -> Text -> Text -> Maybe Text -> m EnvelopeTemplates
  , templatesGetEnvelopeTemplates :: Text -> Text -> Maybe Text -> m EnvelopeTemplates
  , templatesGetTemplate :: Text -> Text -> Maybe Text -> m Templates
  , templatesGetTemplates :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m EnvelopeTemplateResults
  , templatesPostDocumentTemplates :: Text -> Text -> Text -> DocumentTemplateList -> m DocumentTemplateList
  , templatesPostEnvelopeTemplates :: Text -> Text -> DocumentTemplateList -> m DocumentTemplateList
  , templatesPostTemplates :: Text -> Templates -> m TemplateSummary
  , templatesPutTemplate :: Text -> Text -> Templates -> m TemplateUpdateSummary
  , templatesPutTemplatePart :: Text -> Text -> Text -> Groups -> m Groups
  , unsupportedFileTypesGetUnsupportedFileTypes :: Text -> m FileTypeList
  , userCustomSettingsDeleteCustomSettings :: Text -> Text -> UserCustomSettings -> m UserCustomSettings
  , userCustomSettingsGetCustomSettings :: Text -> Text -> m UserCustomSettings
  , userCustomSettingsPutCustomSettings :: Text -> Text -> UserCustomSettings -> m UserCustomSettings
  , userGetUser :: Text -> Text -> Maybe Text -> Maybe Text -> m Users
  , userProfileGetProfile :: Text -> Text -> m UserProfiles
  , userProfileImageDeleteUserProfileImage :: Text -> Text -> m ()
  , userProfileImageGetUserProfileImage :: Text -> Text -> Maybe Text -> m GIF
  , userProfileImagePutUserProfileImage :: Text -> Text -> m ()
  , userProfilePutProfile :: Text -> Text -> UserProfiles -> m ()
  , userPutUser :: Text -> Text -> Users -> m Users
  , userSettingsGetUserSettings :: Text -> Text -> m UserSettingsInformation
  , userSettingsPutUserSettings :: Text -> Text -> UserSettingsInformation -> m ()
  , userSignaturesDeleteUserSignature :: Text -> Text -> Text -> m ()
  , userSignaturesDeleteUserSignatureImage :: Text -> Text -> Text -> Text -> m UserSignatures
  , userSignaturesGetUserSignature :: Text -> Text -> Text -> m UserSignatures
  , userSignaturesGetUserSignatureImage :: Text -> Text -> Text -> Text -> Maybe Text -> m GIF
  , userSignaturesGetUserSignatures :: Text -> Text -> Maybe Text -> m UserSignaturesInformation
  , userSignaturesPostUserSignatures :: Text -> Text -> UserSignaturesInformation -> m UserSignaturesInformation
  , userSignaturesPutUserSignature :: Text -> Text -> UserSignaturesInformation -> m UserSignaturesInformation
  , userSignaturesPutUserSignatureById :: Text -> Text -> Text -> Maybe Text -> UserSignatureDefinition -> m UserSignatures
  , userSignaturesPutUserSignatureImage :: Text -> Text -> Text -> Text -> m UserSignatures
  , userSocialLoginDeleteUserSocialLogin :: Text -> Text -> UserSocialAccountLogins -> m ()
  , userSocialLoginGetUserSocialLogin :: Text -> Text -> m UserSocialIdResult
  , userSocialLoginPutUserSocialLogin :: Text -> Text -> UserSocialAccountLogins -> m ()
  , usersDeleteUsers :: Text -> UserInfoList -> m GroupUsers
  , usersGetUsers :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m UserInformationList
  , usersPostUsers :: Text -> NewUsersDefinition -> m NewUsersSummary
  , usersPutUsers :: Text -> UserInformationList -> m UserInformationList
  , viewsPostAccountConsoleView :: Text -> ConsoleViewRequest -> m EnvelopeViews
  , viewsPostEnvelopeCorrectView :: Text -> Text -> CorrectViewRequest -> m EnvelopeViews
  , viewsPostEnvelopeEditView :: Text -> Text -> ReturnUrlRequest -> m EnvelopeViews
  , viewsPostEnvelopeRecipientView :: Text -> Text -> RecipientViewRequest -> m EnvelopeViews
  , viewsPostEnvelopeSenderView :: Text -> Text -> ReturnUrlRequest -> m EnvelopeViews
  , viewsPostTemplateEditView :: Text -> Text -> ReturnUrlRequest -> m TemplateViews
  , watermarkGetWatermark :: Text -> m AccountWatermarks
  , watermarkPreviewPutWatermarkPreview :: Text -> AccountWatermarks -> m AccountWatermarks
  , watermarkPutWatermark :: Text -> AccountWatermarks -> m AccountWatermarks
  , workspaceDeleteWorkspace :: Text -> Text -> m Workspaces
  , workspaceFileGetWorkspaceFile :: Text -> Text -> Text -> Text -> Maybe Text -> Maybe Text -> m ()
  , workspaceFilePagesGetWorkspaceFilePages :: Text -> Text -> Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m PageImages
  , workspaceFilePostWorkspaceFiles :: Text -> Text -> Text -> m WorkspaceItems
  , workspaceFilePutWorkspaceFile :: Text -> Text -> Text -> Text -> m WorkspaceItems
  , workspaceFolderDeleteWorkspaceItems :: Text -> Text -> Text -> WorkspaceItemList -> m ()
  , workspaceFolderGetWorkspaceFolder :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> m WorkspaceFolderContents
  , workspaceGetWorkspace :: Text -> Text -> m Workspaces
  , workspaceGetWorkspaces :: Text -> m WorkspaceList
  , workspacePostWorkspace :: Text -> Workspaces -> m Workspaces
  , workspacePutWorkspace :: Text -> Text -> Workspaces -> m Workspaces
  }

docuSignClient :: DocuSignClient ClientM
docuSignClient = DocuSignClient {..}
  where
  (      accountCustomFieldsDeleteAccountCustomFields
    :<|> accountCustomFieldsGetAccountCustomFields
    :<|> accountCustomFieldsPostAccountCustomFields
    :<|> accountCustomFieldsPutAccountCustomFields
    :<|> accountPasswordRulesGetAccountPasswordRules
    :<|> accountPasswordRulesPutAccountPasswordRules
    :<|> accountSignatureProvidersGetSignatureProviders
    :<|> accountsDeleteAccount
    :<|> accountsGetAccount
    :<|> accountsGetProvisioning
    :<|> accountsPostAccounts
    :<|> apiRequestLogDeleteRequestLogs
    :<|> apiRequestLogGetRequestLog
    :<|> apiRequestLogGetRequestLogSettings
    :<|> apiRequestLogGetRequestLogs
    :<|> apiRequestLogPutRequestLogSettings
    :<|> attachmentsDeleteAttachments
    :<|> attachmentsGetAttachment
    :<|> attachmentsGetAttachments
    :<|> attachmentsPutAttachment
    :<|> attachmentsPutAttachments
    :<|> auditEventsGetAuditEvents
    :<|> billingChargesGetAccountBillingCharges
    :<|> billingInvoicesGetBillingInvoice
    :<|> billingInvoicesGetBillingInvoices
    :<|> billingInvoicesGetBillingInvoicesPastDue
    :<|> billingPaymentsGetPayment
    :<|> billingPaymentsGetPaymentList
    :<|> billingPaymentsPostPayment
    :<|> billingPlanGetBillingPlan
    :<|> billingPlanGetCreditCardInfo
    :<|> billingPlanPutBillingPlan
    :<|> billingPlansGetBillingPlan
    :<|> billingPlansGetBillingPlans
    :<|> brandDeleteBrand
    :<|> brandExportGetBrandExportFile
    :<|> brandGetBrand
    :<|> brandLogoDeleteBrandLogo
    :<|> brandLogoGetBrandLogo
    :<|> brandLogoPutBrandLogo
    :<|> brandPutBrand
    :<|> brandResourcesGetBrandResources
    :<|> brandResourcesGetBrandResourcesList
    :<|> brandResourcesPutBrandResources
    :<|> brandsDeleteBrands
    :<|> brandsDeleteGroupBrands
    :<|> brandsGetBrands
    :<|> brandsGetGroupBrands
    :<|> brandsPostBrands
    :<|> brandsPutGroupBrands
    :<|> bulkEnvelopesGetBulkEnvelopesBatchId
    :<|> bulkEnvelopesGetEnvelopesBulk
    :<|> captiveRecipientsDeleteCaptiveRecipientsPart
    :<|> chunkedUploadsDeleteChunkedUpload
    :<|> chunkedUploadsGetChunkedUpload
    :<|> chunkedUploadsPostChunkedUploads
    :<|> chunkedUploadsPutChunkedUploadPart
    :<|> chunkedUploadsPutChunkedUploads
    :<|> cloudStorageDeleteCloudStorage
    :<|> cloudStorageDeleteCloudStorageProviders
    :<|> cloudStorageFolderGetCloudStorageFolder
    :<|> cloudStorageFolderGetCloudStorageFolderAll
    :<|> cloudStorageGetCloudStorage
    :<|> cloudStorageGetCloudStorageProviders
    :<|> cloudStoragePostCloudStorage
    :<|> connectDeleteConnectConfig
    :<|> connectFailuresDeleteConnectFailureLog
    :<|> connectFailuresGetConnectLogs
    :<|> connectGetConnectConfig
    :<|> connectGetConnectConfigs
    :<|> connectGetConnectUsers
    :<|> connectLogDeleteConnectLog
    :<|> connectLogDeleteConnectLogs
    :<|> connectLogGetConnectLog
    :<|> connectLogGetConnectLogs
    :<|> connectPostConnectConfiguration
    :<|> connectPublishPutConnectRetry
    :<|> connectPublishPutConnectRetryByEnvelope
    :<|> connectPutConnectConfiguration
    :<|> consumerDisclosureGetConsumerDisclosure
    :<|> consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientId
    :<|> consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientIdLangCode
    :<|> consumerDisclosureGetConsumerDisclosureLangCode
    :<|> consumerDisclosurePutConsumerDisclosure
    :<|> contactsDeleteContactWithId
    :<|> contactsDeleteContacts
    :<|> contactsGetContactById
    :<|> contactsPostContacts
    :<|> contactsPutContacts
    :<|> customFieldsDeleteCustomFields
    :<|> customFieldsDeleteTemplateCustomFields
    :<|> customFieldsGetCustomFields
    :<|> customFieldsGetTemplateCustomFields
    :<|> customFieldsPostCustomFields
    :<|> customFieldsPostTemplateCustomFields
    :<|> customFieldsPutCustomFields
    :<|> customFieldsPutTemplateCustomFields
    :<|> documentFieldsDeleteDocumentFields
    :<|> documentFieldsDeleteTemplateDocumentFields
    :<|> documentFieldsGetDocumentFields
    :<|> documentFieldsGetTemplateDocumentFields
    :<|> documentFieldsPostDocumentFields
    :<|> documentFieldsPostTemplateDocumentFields
    :<|> documentFieldsPutDocumentFields
    :<|> documentFieldsPutTemplateDocumentFields
    :<|> documentsDeleteDocuments
    :<|> documentsDeleteTemplateDocuments
    :<|> documentsGetDocument
    :<|> documentsGetDocuments
    :<|> documentsGetTemplateDocument
    :<|> documentsGetTemplateDocuments
    :<|> documentsPutDocument
    :<|> documentsPutDocuments
    :<|> documentsPutTemplateDocument
    :<|> documentsPutTemplateDocuments
    :<|> eMortgagePostTransactions
    :<|> eNoteConfigurationDeleteENoteConfiguration
    :<|> eNoteConfigurationGetENoteConfiguration
    :<|> eNoteConfigurationPutENoteConfiguration
    :<|> emailSettingsDeleteEmailSettings
    :<|> emailSettingsGetEmailSettings
    :<|> emailSettingsPostEmailSettings
    :<|> emailSettingsPutEmailSettings
    :<|> envelopesGetEnvelope
    :<|> envelopesGetEnvelopes
    :<|> envelopesPostEnvelopes
    :<|> envelopesPutEnvelope
    :<|> envelopesPutStatus
    :<|> foldersGetFolderItems
    :<|> foldersGetFolders
    :<|> foldersPutFolderById
    :<|> formDataGetFormData
    :<|> groupsDeleteGroupUsers
    :<|> groupsDeleteGroups
    :<|> groupsGetGroupUsers
    :<|> groupsGetGroups
    :<|> groupsPostGroups
    :<|> groupsPutGroupUsers
    :<|> groupsPutGroups
    :<|> lockDeleteEnvelopeLock
    :<|> lockDeleteTemplateLock
    :<|> lockGetEnvelopeLock
    :<|> lockGetTemplateLock
    :<|> lockPostEnvelopeLock
    :<|> lockPostTemplateLock
    :<|> lockPutEnvelopeLock
    :<|> lockPutTemplateLock
    :<|> loginInformationGetLoginInformation
    :<|> loginInformationPutLoginInformation
    :<|> notificationGetEnvelopesEnvelopeIdNotification
    :<|> notificationGetTemplatesTemplateIdNotification
    :<|> notificationPutEnvelopesEnvelopeIdNotification
    :<|> notificationPutTemplatesTemplateIdNotification
    :<|> oAuth2PostRevoke
    :<|> oAuth2PostToken
    :<|> pagesDeletePage
    :<|> pagesDeleteTemplatePage
    :<|> pagesGetPageImage
    :<|> pagesGetPageImages
    :<|> pagesGetTemplatePageImage
    :<|> pagesGetTemplatePageImages
    :<|> pagesPutPageImage
    :<|> pagesPutTemplatePageImage
    :<|> passwordRulesGetPasswordRules
    :<|> paymentGatewayAccountsGetAllPaymentGatewayAccounts
    :<|> permissionProfilesDeletePermissionProfiles
    :<|> permissionProfilesGetPermissionProfile
    :<|> permissionProfilesGetPermissionProfiles
    :<|> permissionProfilesPostPermissionProfiles
    :<|> permissionProfilesPutPermissionProfiles
    :<|> powerFormsDeletePowerForm
    :<|> powerFormsDeletePowerFormsList
    :<|> powerFormsGetPowerForm
    :<|> powerFormsGetPowerFormFormData
    :<|> powerFormsGetPowerFormsList
    :<|> powerFormsGetPowerFormsSenders
    :<|> powerFormsPostPowerForm
    :<|> powerFormsPutPowerForm
    :<|> purchasedEnvelopesPutPurchasedEnvelopes
    :<|> recipientNamesGetRecipientNames
    :<|> recipientsDeleteBulkRecipientsFile
    :<|> recipientsDeleteRecipient
    :<|> recipientsDeleteRecipientTabs
    :<|> recipientsDeleteRecipients
    :<|> recipientsDeleteTemplateBulkRecipientsFile
    :<|> recipientsDeleteTemplateRecipient
    :<|> recipientsDeleteTemplateRecipientTabs
    :<|> recipientsDeleteTemplateRecipients
    :<|> recipientsGetBulkRecipients
    :<|> recipientsGetRecipientDocumentVisibility
    :<|> recipientsGetRecipientInitialsImage
    :<|> recipientsGetRecipientSignature
    :<|> recipientsGetRecipientSignatureImage
    :<|> recipientsGetRecipientTabs
    :<|> recipientsGetRecipients
    :<|> recipientsGetTemplateBulkRecipients
    :<|> recipientsGetTemplateRecipientDocumentVisibility
    :<|> recipientsGetTemplateRecipientTabs
    :<|> recipientsGetTemplateRecipients
    :<|> recipientsPostRecipientTabs
    :<|> recipientsPostRecipients
    :<|> recipientsPostTemplateRecipientTabs
    :<|> recipientsPostTemplateRecipients
    :<|> recipientsPutBulkRecipients
    :<|> recipientsPutRecipientDocumentVisibility
    :<|> recipientsPutRecipientInitialsImage
    :<|> recipientsPutRecipientSignatureImage
    :<|> recipientsPutRecipientTabs
    :<|> recipientsPutRecipients
    :<|> recipientsPutRecipientsDocumentVisibility
    :<|> recipientsPutTemplateBulkRecipients
    :<|> recipientsPutTemplateRecipientDocumentVisibility
    :<|> recipientsPutTemplateRecipientTabs
    :<|> recipientsPutTemplateRecipients
    :<|> recipientsPutTemplateRecipientsDocumentVisibility
    :<|> searchFoldersGetSearchFolderContents
    :<|> serviceInformationGetResourceInformation
    :<|> serviceInformationGetServiceInformation
    :<|> settingsGetSettings
    :<|> settingsPutSettings
    :<|> sharedAccessGetSharedAccess
    :<|> sharedAccessPutSharedAccess
    :<|> signingGroupsDeleteSigningGroupUsers
    :<|> signingGroupsDeleteSigningGroups
    :<|> signingGroupsGetSigningGroup
    :<|> signingGroupsGetSigningGroupUsers
    :<|> signingGroupsGetSigningGroups
    :<|> signingGroupsPostSigningGroups
    :<|> signingGroupsPutSigningGroup
    :<|> signingGroupsPutSigningGroupUsers
    :<|> signingGroupsPutSigningGroups
    :<|> supportedLanguagesGetSupportedLanguages
    :<|> tabDeleteCustomTab
    :<|> tabGetCustomTab
    :<|> tabPutCustomTab
    :<|> tabSettingsGetTabSettings
    :<|> tabSettingsPutSettings
    :<|> tabsGetDocumentTabs
    :<|> tabsGetPageTabs
    :<|> tabsGetTabDefinitions
    :<|> tabsGetTemplateDocumentTabs
    :<|> tabsGetTemplatePageTabs
    :<|> tabsPostTabDefinitions
    :<|> templatesDeleteDocumentTemplates
    :<|> templatesDeleteTemplatePart
    :<|> templatesGetDocumentTemplates
    :<|> templatesGetEnvelopeTemplates
    :<|> templatesGetTemplate
    :<|> templatesGetTemplates
    :<|> templatesPostDocumentTemplates
    :<|> templatesPostEnvelopeTemplates
    :<|> templatesPostTemplates
    :<|> templatesPutTemplate
    :<|> templatesPutTemplatePart
    :<|> unsupportedFileTypesGetUnsupportedFileTypes
    :<|> userCustomSettingsDeleteCustomSettings
    :<|> userCustomSettingsGetCustomSettings
    :<|> userCustomSettingsPutCustomSettings
    :<|> userGetUser
    :<|> userProfileGetProfile
    :<|> userProfileImageDeleteUserProfileImage
    :<|> userProfileImageGetUserProfileImage
    :<|> userProfileImagePutUserProfileImage
    :<|> userProfilePutProfile
    :<|> userPutUser
    :<|> userSettingsGetUserSettings
    :<|> userSettingsPutUserSettings
    :<|> userSignaturesDeleteUserSignature
    :<|> userSignaturesDeleteUserSignatureImage
    :<|> userSignaturesGetUserSignature
    :<|> userSignaturesGetUserSignatureImage
    :<|> userSignaturesGetUserSignatures
    :<|> userSignaturesPostUserSignatures
    :<|> userSignaturesPutUserSignature
    :<|> userSignaturesPutUserSignatureById
    :<|> userSignaturesPutUserSignatureImage
    :<|> userSocialLoginDeleteUserSocialLogin
    :<|> userSocialLoginGetUserSocialLogin
    :<|> userSocialLoginPutUserSocialLogin
    :<|> usersDeleteUsers
    :<|> usersGetUsers
    :<|> usersPostUsers
    :<|> usersPutUsers
    :<|> viewsPostAccountConsoleView
    :<|> viewsPostEnvelopeCorrectView
    :<|> viewsPostEnvelopeEditView
    :<|> viewsPostEnvelopeRecipientView
    :<|> viewsPostEnvelopeSenderView
    :<|> viewsPostTemplateEditView
    :<|> watermarkGetWatermark
    :<|> watermarkPreviewPutWatermarkPreview
    :<|> watermarkPutWatermark
    :<|> workspaceDeleteWorkspace
    :<|> workspaceFileGetWorkspaceFile
    :<|> workspaceFilePagesGetWorkspaceFilePages
    :<|> workspaceFilePostWorkspaceFiles
    :<|> workspaceFilePutWorkspaceFile
    :<|> workspaceFolderDeleteWorkspaceItems
    :<|> workspaceFolderGetWorkspaceFolder
    :<|> workspaceGetWorkspace
    :<|> workspaceGetWorkspaces
    :<|> workspacePostWorkspace
    :<|> workspacePutWorkspace
    ) = client (Proxy :: Proxy DocuSignAPI)

