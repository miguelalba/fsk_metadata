# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ToxicologicalModelScope Class
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
ToxicologicalModelScope <- R6::R6Class(
  'ToxicologicalModelScope',
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
        stopifnot(is.list(`spatialInformation`), length(`spatialInformation`) != 0)
        lapply(`spatialInformation`, function(x) stopifnot(is.character(x)))
        self$`spatialInformation` <- `spatialInformation`
      }
    },
    toJSON = function() {
      ToxicologicalModelScopeObject <- list()
      if (!is.null(self$`hazard`)) {
        ToxicologicalModelScopeObject[['hazard']] <- lapply(self$`hazard`, function(x) x$toJSON())
      }
      if (!is.null(self$`populationGroup`)) {
        ToxicologicalModelScopeObject[['populationGroup']] <- lapply(self$`populationGroup`, function(x) x$toJSON())
      }
      if (!is.null(self$`generalComment`)) {
        ToxicologicalModelScopeObject[['generalComment']] <- self$`generalComment`
      }
      if (!is.null(self$`temporalInformation`)) {
        ToxicologicalModelScopeObject[['temporalInformation']] <- self$`temporalInformation`
      }
      if (!is.null(self$`spatialInformation`)) {
        ToxicologicalModelScopeObject[['spatialInformation']] <- self$`spatialInformation`
      }

      ToxicologicalModelScopeObject
    },
    fromJSON = function(ToxicologicalModelScopeJson) {
      ToxicologicalModelScopeObject <- jsonlite::fromJSON(ToxicologicalModelScopeJson)
      if (!is.null(ToxicologicalModelScopeObject$`hazard`)) {
        self$`hazard` <- lapply(ToxicologicalModelScopeObject$`hazard`, function(x) {
          hazardObject <- Hazard$new()
          hazardObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          hazardObject
        })
      }
      if (!is.null(ToxicologicalModelScopeObject$`populationGroup`)) {
        self$`populationGroup` <- lapply(ToxicologicalModelScopeObject$`populationGroup`, function(x) {
          populationGroupObject <- PopulationGroup$new()
          populationGroupObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          populationGroupObject
        })
      }
      if (!is.null(ToxicologicalModelScopeObject$`generalComment`)) {
        self$`generalComment` <- ToxicologicalModelScopeObject$`generalComment`
      }
      if (!is.null(ToxicologicalModelScopeObject$`temporalInformation`)) {
        self$`temporalInformation` <- ToxicologicalModelScopeObject$`temporalInformation`
      }
      if (!is.null(ToxicologicalModelScopeObject$`spatialInformation`)) {
        self$`spatialInformation` <- ToxicologicalModelScopeObject$`spatialInformation`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "hazard": [%s],
           "populationGroup": [%s],
           "generalComment": %s,
           "temporalInformation": %s,
           "spatialInformation": [%s]
        }',
        lapply(self$`hazard`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`populationGroup`, function(x) paste(x$toJSON(), sep=",")),
        self$`generalComment`,
        self$`temporalInformation`,
        lapply(self$`spatialInformation`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(ToxicologicalModelScopeJson) {
      ToxicologicalModelScopeObject <- jsonlite::fromJSON(ToxicologicalModelScopeJson)
      self$`hazard` <- lapply(ToxicologicalModelScopeObject$`hazard`, function(x) Hazard$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`populationGroup` <- lapply(ToxicologicalModelScopeObject$`populationGroup`, function(x) PopulationGroup$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`generalComment` <- ToxicologicalModelScopeObject$`generalComment`
      self$`temporalInformation` <- ToxicologicalModelScopeObject$`temporalInformation`
      self$`spatialInformation` <- ToxicologicalModelScopeObject$`spatialInformation`
    }
  )
)
