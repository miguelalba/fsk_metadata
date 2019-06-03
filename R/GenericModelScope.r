# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GenericModelScope Class
#'
#' @field product 
#' @field hazard 
#' @field populationGroup 
#' @field generalComment 
#' @field temporalInformation 
#' @field spatialInformation 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenericModelScope <- R6::R6Class(
  'GenericModelScope',
  public = list(
    `product` = NULL,
    `hazard` = NULL,
    `populationGroup` = NULL,
    `generalComment` = NULL,
    `temporalInformation` = NULL,
    `spatialInformation` = NULL,
    initialize = function(`product`, `hazard`, `populationGroup`, `generalComment`, `temporalInformation`, `spatialInformation`){
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
      if (!missing(`populationGroup`)) {
        stopifnot(is.list(`populationGroup`), length(`populationGroup`) != 0)
        lapply(`populationGroup`, function(x) stopifnot(R6::is.R6(x)))
        self$`populationGroup` <- `populationGroup`
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
      GenericModelScopeObject <- list()
      if (!is.null(self$`product`)) {
        GenericModelScopeObject[['product']] <- lapply(self$`product`, function(x) x$toJSON())
      }
      if (!is.null(self$`hazard`)) {
        GenericModelScopeObject[['hazard']] <- lapply(self$`hazard`, function(x) x$toJSON())
      }
      if (!is.null(self$`populationGroup`)) {
        GenericModelScopeObject[['populationGroup']] <- lapply(self$`populationGroup`, function(x) x$toJSON())
      }
      if (!is.null(self$`generalComment`)) {
        GenericModelScopeObject[['generalComment']] <- self$`generalComment`
      }
      if (!is.null(self$`temporalInformation`)) {
        GenericModelScopeObject[['temporalInformation']] <- self$`temporalInformation`
      }
      if (!is.null(self$`spatialInformation`)) {
        GenericModelScopeObject[['spatialInformation']] <- self$`spatialInformation`
      }

      GenericModelScopeObject
    },
    fromJSON = function(GenericModelScopeJson) {
      GenericModelScopeObject <- jsonlite::fromJSON(GenericModelScopeJson)
      if (!is.null(GenericModelScopeObject$`product`)) {
        self$`product` <- lapply(GenericModelScopeObject$`product`, function(x) {
          productObject <- Product$new()
          productObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          productObject
        })
      }
      if (!is.null(GenericModelScopeObject$`hazard`)) {
        self$`hazard` <- lapply(GenericModelScopeObject$`hazard`, function(x) {
          hazardObject <- Hazard$new()
          hazardObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          hazardObject
        })
      }
      if (!is.null(GenericModelScopeObject$`populationGroup`)) {
        self$`populationGroup` <- lapply(GenericModelScopeObject$`populationGroup`, function(x) {
          populationGroupObject <- PopulationGroup$new()
          populationGroupObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          populationGroupObject
        })
      }
      if (!is.null(GenericModelScopeObject$`generalComment`)) {
        self$`generalComment` <- GenericModelScopeObject$`generalComment`
      }
      if (!is.null(GenericModelScopeObject$`temporalInformation`)) {
        self$`temporalInformation` <- GenericModelScopeObject$`temporalInformation`
      }
      if (!is.null(GenericModelScopeObject$`spatialInformation`)) {
        self$`spatialInformation` <- GenericModelScopeObject$`spatialInformation`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "product": [%s],
           "hazard": [%s],
           "populationGroup": [%s],
           "generalComment": %s,
           "temporalInformation": %s,
           "spatialInformation": [%s]
        }',
        lapply(self$`product`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`hazard`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`populationGroup`, function(x) paste(x$toJSON(), sep=",")),
        self$`generalComment`,
        self$`temporalInformation`,
        lapply(self$`spatialInformation`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(GenericModelScopeJson) {
      GenericModelScopeObject <- jsonlite::fromJSON(GenericModelScopeJson)
      self$`product` <- lapply(GenericModelScopeObject$`product`, function(x) Product$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`hazard` <- lapply(GenericModelScopeObject$`hazard`, function(x) Hazard$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`populationGroup` <- lapply(GenericModelScopeObject$`populationGroup`, function(x) PopulationGroup$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`generalComment` <- GenericModelScopeObject$`generalComment`
      self$`temporalInformation` <- GenericModelScopeObject$`temporalInformation`
      self$`spatialInformation` <- GenericModelScopeObject$`spatialInformation`
    }
  )
)