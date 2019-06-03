# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ProcessModelScope Class
#'
#' @field product 
#' @field hazard 
#' @field generalComment 
#' @field temporalInformation 
#' @field spatialInformation 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProcessModelScope <- R6::R6Class(
  'ProcessModelScope',
  public = list(
    `product` = NULL,
    `hazard` = NULL,
    `generalComment` = NULL,
    `temporalInformation` = NULL,
    `spatialInformation` = NULL,
    initialize = function(`product`, `hazard`, `generalComment`, `temporalInformation`, `spatialInformation`){
      if (!missing(`product`)) {
        stopifnot(is.list(`product`), length(`product`) != 0)
        lapply(`product`, function(x) stopifnot(R6::is.R6(x)))
        self$`product` <- `product`
      }
      if (!missing(`hazard`)) {
        stopifnot(is.list(`hazard`), length(`hazard`) != 0)
        lapply(`hazard`, function(x) stopifnot(R6::is.R6(x)))
        self$`hazard` <- `hazard`
      }
      if (!missing(`generalComment`)) {
        stopifnot(is.character(`generalComment`), length(`generalComment`) == 1)
        self$`generalComment` <- `generalComment`
      }
      if (!missing(`temporalInformation`)) {
        stopifnot(is.character(`temporalInformation`), length(`temporalInformation`) == 1)
        self$`temporalInformation` <- `temporalInformation`
      }
      if (!missing(`spatialInformation`)) {
        stopifnot(is.list(`spatialInformation`), length(`spatialInformation`) != 0)
        lapply(`spatialInformation`, function(x) stopifnot(is.character(x)))
        self$`spatialInformation` <- `spatialInformation`
      }
    },
    toJSON = function() {
      ProcessModelScopeObject <- list()
      if (!is.null(self$`product`)) {
        ProcessModelScopeObject[['product']] <- lapply(self$`product`, function(x) x$toJSON())
      }
      if (!is.null(self$`hazard`)) {
        ProcessModelScopeObject[['hazard']] <- lapply(self$`hazard`, function(x) x$toJSON())
      }
      if (!is.null(self$`generalComment`)) {
        ProcessModelScopeObject[['generalComment']] <- self$`generalComment`
      }
      if (!is.null(self$`temporalInformation`)) {
        ProcessModelScopeObject[['temporalInformation']] <- self$`temporalInformation`
      }
      if (!is.null(self$`spatialInformation`)) {
        ProcessModelScopeObject[['spatialInformation']] <- self$`spatialInformation`
      }

      ProcessModelScopeObject
    },
    fromJSON = function(ProcessModelScopeJson) {
      ProcessModelScopeObject <- jsonlite::fromJSON(ProcessModelScopeJson)
      if (!is.null(ProcessModelScopeObject$`product`)) {
        self$`product` <- lapply(ProcessModelScopeObject$`product`, function(x) {
          productObject <- Product$new()
          productObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          productObject
        })
      }
      if (!is.null(ProcessModelScopeObject$`hazard`)) {
        self$`hazard` <- lapply(ProcessModelScopeObject$`hazard`, function(x) {
          hazardObject <- Hazard$new()
          hazardObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          hazardObject
        })
      }
      if (!is.null(ProcessModelScopeObject$`generalComment`)) {
        self$`generalComment` <- ProcessModelScopeObject$`generalComment`
      }
      if (!is.null(ProcessModelScopeObject$`temporalInformation`)) {
        self$`temporalInformation` <- ProcessModelScopeObject$`temporalInformation`
      }
      if (!is.null(ProcessModelScopeObject$`spatialInformation`)) {
        self$`spatialInformation` <- ProcessModelScopeObject$`spatialInformation`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "product": [%s],
           "hazard": [%s],
           "generalComment": %s,
           "temporalInformation": %s,
           "spatialInformation": [%s]
        }',
        lapply(self$`product`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`hazard`, function(x) paste(x$toJSON(), sep=",")),
        self$`generalComment`,
        self$`temporalInformation`,
        lapply(self$`spatialInformation`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(ProcessModelScopeJson) {
      ProcessModelScopeObject <- jsonlite::fromJSON(ProcessModelScopeJson)
      self$`product` <- lapply(ProcessModelScopeObject$`product`, function(x) Product$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`hazard` <- lapply(ProcessModelScopeObject$`hazard`, function(x) Hazard$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`generalComment` <- ProcessModelScopeObject$`generalComment`
      self$`temporalInformation` <- ProcessModelScopeObject$`temporalInformation`
      self$`spatialInformation` <- ProcessModelScopeObject$`spatialInformation`
    }
  )
)
