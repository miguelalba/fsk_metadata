# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DoseResponseModelScope Class
#'
#' @field hazard 
#' @field populationGroup 
#' @field generalComment 
#' @field temporalInformation 
#' @field spatialInformation 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DoseResponseModelScope <- R6::R6Class(
  'DoseResponseModelScope',
  public = list(
    `hazard` = NULL,
    `populationGroup` = NULL,
    `generalComment` = NULL,
    `temporalInformation` = NULL,
    `spatialInformation` = NULL,
    initialize = function(`hazard`, `populationGroup`, `generalComment`, `temporalInformation`, `spatialInformation`){
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
        stopifnot(is.character(`spatialInformation`), length(`spatialInformation`) == 1)
        self$`spatialInformation` <- `spatialInformation`
      }
    },
    toJSON = function() {
      DoseResponseModelScopeObject <- list()
      if (!is.null(self$`hazard`)) {
        DoseResponseModelScopeObject[['hazard']] <- lapply(self$`hazard`, function(x) x$toJSON())
      }
      if (!is.null(self$`populationGroup`)) {
        DoseResponseModelScopeObject[['populationGroup']] <- lapply(self$`populationGroup`, function(x) x$toJSON())
      }
      if (!is.null(self$`generalComment`)) {
        DoseResponseModelScopeObject[['generalComment']] <- self$`generalComment`
      }
      if (!is.null(self$`temporalInformation`)) {
        DoseResponseModelScopeObject[['temporalInformation']] <- self$`temporalInformation`
      }
      if (!is.null(self$`spatialInformation`)) {
        DoseResponseModelScopeObject[['spatialInformation']] <- self$`spatialInformation`
      }

      DoseResponseModelScopeObject
    },
    fromJSON = function(DoseResponseModelScopeJson) {
      DoseResponseModelScopeObject <- jsonlite::fromJSON(DoseResponseModelScopeJson)
      if (!is.null(DoseResponseModelScopeObject$`hazard`)) {
        self$`hazard` <- lapply(DoseResponseModelScopeObject$`hazard`, function(x) {
          hazardObject <- Hazard$new()
          hazardObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          hazardObject
        })
      }
      if (!is.null(DoseResponseModelScopeObject$`populationGroup`)) {
        self$`populationGroup` <- lapply(DoseResponseModelScopeObject$`populationGroup`, function(x) {
          populationGroupObject <- PopulationGroup$new()
          populationGroupObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          populationGroupObject
        })
      }
      if (!is.null(DoseResponseModelScopeObject$`generalComment`)) {
        self$`generalComment` <- DoseResponseModelScopeObject$`generalComment`
      }
      if (!is.null(DoseResponseModelScopeObject$`temporalInformation`)) {
        self$`temporalInformation` <- DoseResponseModelScopeObject$`temporalInformation`
      }
      if (!is.null(DoseResponseModelScopeObject$`spatialInformation`)) {
        self$`spatialInformation` <- DoseResponseModelScopeObject$`spatialInformation`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "hazard": [%s],
           "populationGroup": [%s],
           "generalComment": %s,
           "temporalInformation": %s,
           "spatialInformation": %s
        }',
        lapply(self$`hazard`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`populationGroup`, function(x) paste(x$toJSON(), sep=",")),
        self$`generalComment`,
        self$`temporalInformation`,
        self$`spatialInformation`
      )
    },
    fromJSONString = function(DoseResponseModelScopeJson) {
      DoseResponseModelScopeObject <- jsonlite::fromJSON(DoseResponseModelScopeJson)
      self$`hazard` <- lapply(DoseResponseModelScopeObject$`hazard`, function(x) Hazard$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`populationGroup` <- lapply(DoseResponseModelScopeObject$`populationGroup`, function(x) PopulationGroup$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`generalComment` <- DoseResponseModelScopeObject$`generalComment`
      self$`temporalInformation` <- DoseResponseModelScopeObject$`temporalInformation`
      self$`spatialInformation` <- DoseResponseModelScopeObject$`spatialInformation`
    }
  )
)
