# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PopulationGroup Class
#'
#' @field name 
#' @field targetPopulation 
#' @field populationSpan 
#' @field populationDescription 
#' @field populationAge 
#' @field populationGender 
#' @field bmi 
#' @field specialDietGroups 
#' @field patternConsumption 
#' @field region 
#' @field country 
#' @field populationRiskFactor 
#' @field season 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PopulationGroup <- R6::R6Class(
  'PopulationGroup',
  public = list(
    `name` = NULL,
    `targetPopulation` = NULL,
    `populationSpan` = NULL,
    `populationDescription` = NULL,
    `populationAge` = NULL,
    `populationGender` = NULL,
    `bmi` = NULL,
    `specialDietGroups` = NULL,
    `patternConsumption` = NULL,
    `region` = NULL,
    `country` = NULL,
    `populationRiskFactor` = NULL,
    `season` = NULL,
    initialize = function(`name`, `targetPopulation`, `populationSpan`, `populationDescription`, `populationAge`, `populationGender`, `bmi`, `specialDietGroups`, `patternConsumption`, `region`, `country`, `populationRiskFactor`, `season`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`targetPopulation`)) {
        stopifnot(is.character(`targetPopulation`), length(`targetPopulation`) == 1)
        self$`targetPopulation` <- `targetPopulation`
      }
      if (!missing(`populationSpan`)) {
        stopifnot(is.list(`populationSpan`), length(`populationSpan`) != 0)
        lapply(`populationSpan`, function(x) stopifnot(is.character(x)))
        self$`populationSpan` <- `populationSpan`
      }
      if (!missing(`populationDescription`)) {
        stopifnot(is.list(`populationDescription`), length(`populationDescription`) != 0)
        lapply(`populationDescription`, function(x) stopifnot(is.character(x)))
        self$`populationDescription` <- `populationDescription`
      }
      if (!missing(`populationAge`)) {
        stopifnot(is.list(`populationAge`), length(`populationAge`) != 0)
        lapply(`populationAge`, function(x) stopifnot(is.character(x)))
        self$`populationAge` <- `populationAge`
      }
      if (!missing(`populationGender`)) {
        stopifnot(is.character(`populationGender`), length(`populationGender`) == 1)
        self$`populationGender` <- `populationGender`
      }
      if (!missing(`bmi`)) {
        stopifnot(is.list(`bmi`), length(`bmi`) != 0)
        lapply(`bmi`, function(x) stopifnot(is.character(x)))
        self$`bmi` <- `bmi`
      }
      if (!missing(`specialDietGroups`)) {
        stopifnot(is.list(`specialDietGroups`), length(`specialDietGroups`) != 0)
        lapply(`specialDietGroups`, function(x) stopifnot(is.character(x)))
        self$`specialDietGroups` <- `specialDietGroups`
      }
      if (!missing(`patternConsumption`)) {
        stopifnot(is.list(`patternConsumption`), length(`patternConsumption`) != 0)
        lapply(`patternConsumption`, function(x) stopifnot(is.character(x)))
        self$`patternConsumption` <- `patternConsumption`
      }
      if (!missing(`region`)) {
        stopifnot(is.list(`region`), length(`region`) != 0)
        lapply(`region`, function(x) stopifnot(is.character(x)))
        self$`region` <- `region`
      }
      if (!missing(`country`)) {
        stopifnot(is.list(`country`), length(`country`) != 0)
        lapply(`country`, function(x) stopifnot(is.character(x)))
        self$`country` <- `country`
      }
      if (!missing(`populationRiskFactor`)) {
        stopifnot(is.list(`populationRiskFactor`), length(`populationRiskFactor`) != 0)
        lapply(`populationRiskFactor`, function(x) stopifnot(is.character(x)))
        self$`populationRiskFactor` <- `populationRiskFactor`
      }
      if (!missing(`season`)) {
        stopifnot(is.list(`season`), length(`season`) != 0)
        lapply(`season`, function(x) stopifnot(is.character(x)))
        self$`season` <- `season`
      }
    },
    toJSON = function() {
      PopulationGroupObject <- list()
      if (!is.null(self$`name`)) {
        PopulationGroupObject[['name']] <- self$`name`
      }
      if (!is.null(self$`targetPopulation`)) {
        PopulationGroupObject[['targetPopulation']] <- self$`targetPopulation`
      }
      if (!is.null(self$`populationSpan`)) {
        PopulationGroupObject[['populationSpan']] <- self$`populationSpan`
      }
      if (!is.null(self$`populationDescription`)) {
        PopulationGroupObject[['populationDescription']] <- self$`populationDescription`
      }
      if (!is.null(self$`populationAge`)) {
        PopulationGroupObject[['populationAge']] <- self$`populationAge`
      }
      if (!is.null(self$`populationGender`)) {
        PopulationGroupObject[['populationGender']] <- self$`populationGender`
      }
      if (!is.null(self$`bmi`)) {
        PopulationGroupObject[['bmi']] <- self$`bmi`
      }
      if (!is.null(self$`specialDietGroups`)) {
        PopulationGroupObject[['specialDietGroups']] <- self$`specialDietGroups`
      }
      if (!is.null(self$`patternConsumption`)) {
        PopulationGroupObject[['patternConsumption']] <- self$`patternConsumption`
      }
      if (!is.null(self$`region`)) {
        PopulationGroupObject[['region']] <- self$`region`
      }
      if (!is.null(self$`country`)) {
        PopulationGroupObject[['country']] <- self$`country`
      }
      if (!is.null(self$`populationRiskFactor`)) {
        PopulationGroupObject[['populationRiskFactor']] <- self$`populationRiskFactor`
      }
      if (!is.null(self$`season`)) {
        PopulationGroupObject[['season']] <- self$`season`
      }

      PopulationGroupObject
    },
    fromJSON = function(PopulationGroupJson) {
      PopulationGroupObject <- jsonlite::fromJSON(PopulationGroupJson)
      if (!is.null(PopulationGroupObject$`name`)) {
        self$`name` <- PopulationGroupObject$`name`
      }
      if (!is.null(PopulationGroupObject$`targetPopulation`)) {
        self$`targetPopulation` <- PopulationGroupObject$`targetPopulation`
      }
      if (!is.null(PopulationGroupObject$`populationSpan`)) {
        self$`populationSpan` <- PopulationGroupObject$`populationSpan`
      }
      if (!is.null(PopulationGroupObject$`populationDescription`)) {
        self$`populationDescription` <- PopulationGroupObject$`populationDescription`
      }
      if (!is.null(PopulationGroupObject$`populationAge`)) {
        self$`populationAge` <- PopulationGroupObject$`populationAge`
      }
      if (!is.null(PopulationGroupObject$`populationGender`)) {
        self$`populationGender` <- PopulationGroupObject$`populationGender`
      }
      if (!is.null(PopulationGroupObject$`bmi`)) {
        self$`bmi` <- PopulationGroupObject$`bmi`
      }
      if (!is.null(PopulationGroupObject$`specialDietGroups`)) {
        self$`specialDietGroups` <- PopulationGroupObject$`specialDietGroups`
      }
      if (!is.null(PopulationGroupObject$`patternConsumption`)) {
        self$`patternConsumption` <- PopulationGroupObject$`patternConsumption`
      }
      if (!is.null(PopulationGroupObject$`region`)) {
        self$`region` <- PopulationGroupObject$`region`
      }
      if (!is.null(PopulationGroupObject$`country`)) {
        self$`country` <- PopulationGroupObject$`country`
      }
      if (!is.null(PopulationGroupObject$`populationRiskFactor`)) {
        self$`populationRiskFactor` <- PopulationGroupObject$`populationRiskFactor`
      }
      if (!is.null(PopulationGroupObject$`season`)) {
        self$`season` <- PopulationGroupObject$`season`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "targetPopulation": %s,
           "populationSpan": [%s],
           "populationDescription": [%s],
           "populationAge": [%s],
           "populationGender": %s,
           "bmi": [%s],
           "specialDietGroups": [%s],
           "patternConsumption": [%s],
           "region": [%s],
           "country": [%s],
           "populationRiskFactor": [%s],
           "season": [%s]
        }',
        self$`name`,
        self$`targetPopulation`,
        lapply(self$`populationSpan`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`populationDescription`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`populationAge`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`populationGender`,
        lapply(self$`bmi`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`specialDietGroups`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`patternConsumption`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`region`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`country`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`populationRiskFactor`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`season`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(PopulationGroupJson) {
      PopulationGroupObject <- jsonlite::fromJSON(PopulationGroupJson)
      self$`name` <- PopulationGroupObject$`name`
      self$`targetPopulation` <- PopulationGroupObject$`targetPopulation`
      self$`populationSpan` <- PopulationGroupObject$`populationSpan`
      self$`populationDescription` <- PopulationGroupObject$`populationDescription`
      self$`populationAge` <- PopulationGroupObject$`populationAge`
      self$`populationGender` <- PopulationGroupObject$`populationGender`
      self$`bmi` <- PopulationGroupObject$`bmi`
      self$`specialDietGroups` <- PopulationGroupObject$`specialDietGroups`
      self$`patternConsumption` <- PopulationGroupObject$`patternConsumption`
      self$`region` <- PopulationGroupObject$`region`
      self$`country` <- PopulationGroupObject$`country`
      self$`populationRiskFactor` <- PopulationGroupObject$`populationRiskFactor`
      self$`season` <- PopulationGroupObject$`season`
    }
  )
)
