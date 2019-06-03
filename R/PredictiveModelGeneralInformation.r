# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PredictiveModelGeneralInformation Class
#'
#' @field name 
#' @field source 
#' @field identifier 
#' @field author 
#' @field creator 
#' @field creationDate 
#' @field modificationDate 
#' @field rights 
#' @field availability 
#' @field url 
#' @field format 
#' @field reference 
#' @field language 
#' @field software 
#' @field languageWrittenIn 
#' @field modelCategory 
#' @field status 
#' @field objective 
#' @field description 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PredictiveModelGeneralInformation <- R6::R6Class(
  'PredictiveModelGeneralInformation',
  public = list(
    `name` = NULL,
    `source` = NULL,
    `identifier` = NULL,
    `author` = NULL,
    `creator` = NULL,
    `creationDate` = NULL,
    `modificationDate` = NULL,
    `rights` = NULL,
    `availability` = NULL,
    `url` = NULL,
    `format` = NULL,
    `reference` = NULL,
    `language` = NULL,
    `software` = NULL,
    `languageWrittenIn` = NULL,
    `modelCategory` = NULL,
    `status` = NULL,
    `objective` = NULL,
    `description` = NULL,
    initialize = function(`name`, `source`, `identifier`, `author`, `creator`, `creationDate`, `modificationDate`, `rights`, `availability`, `url`, `format`, `reference`, `language`, `software`, `languageWrittenIn`, `modelCategory`, `status`, `objective`, `description`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`source`)) {
        stopifnot(is.character(`source`), length(`source`) == 1)
        self$`source` <- `source`
      }
      if (!missing(`identifier`)) {
        stopifnot(is.character(`identifier`), length(`identifier`) == 1)
        self$`identifier` <- `identifier`
      }
      if (!missing(`author`)) {
        stopifnot(is.list(`author`), length(`author`) != 0)
        lapply(`author`, function(x) stopifnot(R6::is.R6(x)))
        self$`author` <- `author`
      }
      if (!missing(`creator`)) {
        stopifnot(is.list(`creator`), length(`creator`) != 0)
        lapply(`creator`, function(x) stopifnot(R6::is.R6(x)))
        self$`creator` <- `creator`
      }
      if (!missing(`creationDate`)) {
        stopifnot(is.character(`creationDate`), length(`creationDate`) == 1)
        self$`creationDate` <- `creationDate`
      }
      if (!missing(`modificationDate`)) {
        stopifnot(is.list(`modificationDate`), length(`modificationDate`) != 0)
        lapply(`modificationDate`, function(x) stopifnot(is.character(x)))
        self$`modificationDate` <- `modificationDate`
      }
      if (!missing(`rights`)) {
        stopifnot(is.character(`rights`), length(`rights`) == 1)
        self$`rights` <- `rights`
      }
      if (!missing(`availability`)) {
        stopifnot(is.character(`availability`), length(`availability`) == 1)
        self$`availability` <- `availability`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`format`)) {
        stopifnot(is.character(`format`), length(`format`) == 1)
        self$`format` <- `format`
      }
      if (!missing(`reference`)) {
        stopifnot(is.list(`reference`), length(`reference`) != 0)
        lapply(`reference`, function(x) stopifnot(R6::is.R6(x)))
        self$`reference` <- `reference`
      }
      if (!missing(`language`)) {
        stopifnot(is.character(`language`), length(`language`) == 1)
        self$`language` <- `language`
      }
      if (!missing(`software`)) {
        stopifnot(is.character(`software`), length(`software`) == 1)
        self$`software` <- `software`
      }
      if (!missing(`languageWrittenIn`)) {
        stopifnot(is.character(`languageWrittenIn`), length(`languageWrittenIn`) == 1)
        self$`languageWrittenIn` <- `languageWrittenIn`
      }
      if (!missing(`modelCategory`)) {
        stopifnot(R6::is.R6(`modelCategory`))
        self$`modelCategory` <- `modelCategory`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`objective`)) {
        stopifnot(is.character(`objective`), length(`objective`) == 1)
        self$`objective` <- `objective`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
    },
    toJSON = function() {
      PredictiveModelGeneralInformationObject <- list()
      if (!is.null(self$`name`)) {
        PredictiveModelGeneralInformationObject[['name']] <- self$`name`
      }
      if (!is.null(self$`source`)) {
        PredictiveModelGeneralInformationObject[['source']] <- self$`source`
      }
      if (!is.null(self$`identifier`)) {
        PredictiveModelGeneralInformationObject[['identifier']] <- self$`identifier`
      }
      if (!is.null(self$`author`)) {
        PredictiveModelGeneralInformationObject[['author']] <- lapply(self$`author`, function(x) x$toJSON())
      }
      if (!is.null(self$`creator`)) {
        PredictiveModelGeneralInformationObject[['creator']] <- lapply(self$`creator`, function(x) x$toJSON())
      }
      if (!is.null(self$`creationDate`)) {
        PredictiveModelGeneralInformationObject[['creationDate']] <- self$`creationDate`
      }
      if (!is.null(self$`modificationDate`)) {
        PredictiveModelGeneralInformationObject[['modificationDate']] <- self$`modificationDate`
      }
      if (!is.null(self$`rights`)) {
        PredictiveModelGeneralInformationObject[['rights']] <- self$`rights`
      }
      if (!is.null(self$`availability`)) {
        PredictiveModelGeneralInformationObject[['availability']] <- self$`availability`
      }
      if (!is.null(self$`url`)) {
        PredictiveModelGeneralInformationObject[['url']] <- self$`url`
      }
      if (!is.null(self$`format`)) {
        PredictiveModelGeneralInformationObject[['format']] <- self$`format`
      }
      if (!is.null(self$`reference`)) {
        PredictiveModelGeneralInformationObject[['reference']] <- lapply(self$`reference`, function(x) x$toJSON())
      }
      if (!is.null(self$`language`)) {
        PredictiveModelGeneralInformationObject[['language']] <- self$`language`
      }
      if (!is.null(self$`software`)) {
        PredictiveModelGeneralInformationObject[['software']] <- self$`software`
      }
      if (!is.null(self$`languageWrittenIn`)) {
        PredictiveModelGeneralInformationObject[['languageWrittenIn']] <- self$`languageWrittenIn`
      }
      if (!is.null(self$`modelCategory`)) {
        PredictiveModelGeneralInformationObject[['modelCategory']] <- self$`modelCategory`$toJSON()
      }
      if (!is.null(self$`status`)) {
        PredictiveModelGeneralInformationObject[['status']] <- self$`status`
      }
      if (!is.null(self$`objective`)) {
        PredictiveModelGeneralInformationObject[['objective']] <- self$`objective`
      }
      if (!is.null(self$`description`)) {
        PredictiveModelGeneralInformationObject[['description']] <- self$`description`
      }

      PredictiveModelGeneralInformationObject
    },
    fromJSON = function(PredictiveModelGeneralInformationJson) {
      PredictiveModelGeneralInformationObject <- jsonlite::fromJSON(PredictiveModelGeneralInformationJson)
      if (!is.null(PredictiveModelGeneralInformationObject$`name`)) {
        self$`name` <- PredictiveModelGeneralInformationObject$`name`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`source`)) {
        self$`source` <- PredictiveModelGeneralInformationObject$`source`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`identifier`)) {
        self$`identifier` <- PredictiveModelGeneralInformationObject$`identifier`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`author`)) {
        self$`author` <- lapply(PredictiveModelGeneralInformationObject$`author`, function(x) {
          authorObject <- Contact$new()
          authorObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          authorObject
        })
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`creator`)) {
        self$`creator` <- lapply(PredictiveModelGeneralInformationObject$`creator`, function(x) {
          creatorObject <- Contact$new()
          creatorObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          creatorObject
        })
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`creationDate`)) {
        self$`creationDate` <- PredictiveModelGeneralInformationObject$`creationDate`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`modificationDate`)) {
        self$`modificationDate` <- PredictiveModelGeneralInformationObject$`modificationDate`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`rights`)) {
        self$`rights` <- PredictiveModelGeneralInformationObject$`rights`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`availability`)) {
        self$`availability` <- PredictiveModelGeneralInformationObject$`availability`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`url`)) {
        self$`url` <- PredictiveModelGeneralInformationObject$`url`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`format`)) {
        self$`format` <- PredictiveModelGeneralInformationObject$`format`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`reference`)) {
        self$`reference` <- lapply(PredictiveModelGeneralInformationObject$`reference`, function(x) {
          referenceObject <- Reference$new()
          referenceObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          referenceObject
        })
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`language`)) {
        self$`language` <- PredictiveModelGeneralInformationObject$`language`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`software`)) {
        self$`software` <- PredictiveModelGeneralInformationObject$`software`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`languageWrittenIn`)) {
        self$`languageWrittenIn` <- PredictiveModelGeneralInformationObject$`languageWrittenIn`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`modelCategory`)) {
        modelCategoryObject <- ModelCategory$new()
        modelCategoryObject$fromJSON(jsonlite::toJSON(PredictiveModelGeneralInformationObject$modelCategory, auto_unbox = TRUE))
        self$`modelCategory` <- modelCategoryObject
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`status`)) {
        self$`status` <- PredictiveModelGeneralInformationObject$`status`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`objective`)) {
        self$`objective` <- PredictiveModelGeneralInformationObject$`objective`
      }
      if (!is.null(PredictiveModelGeneralInformationObject$`description`)) {
        self$`description` <- PredictiveModelGeneralInformationObject$`description`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "source": %s,
           "identifier": %s,
           "author": [%s],
           "creator": [%s],
           "creationDate": %s,
           "modificationDate": [%s],
           "rights": %s,
           "availability": %s,
           "url": %s,
           "format": %s,
           "reference": [%s],
           "language": %s,
           "software": %s,
           "languageWrittenIn": %s,
           "modelCategory": %s,
           "status": %s,
           "objective": %s,
           "description": %s
        }',
        self$`name`,
        self$`source`,
        self$`identifier`,
        lapply(self$`author`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`creator`, function(x) paste(x$toJSON(), sep=",")),
        self$`creationDate`,
        lapply(self$`modificationDate`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`rights`,
        self$`availability`,
        self$`url`,
        self$`format`,
        lapply(self$`reference`, function(x) paste(x$toJSON(), sep=",")),
        self$`language`,
        self$`software`,
        self$`languageWrittenIn`,
        self$`modelCategory`$toJSON(),
        self$`status`,
        self$`objective`,
        self$`description`
      )
    },
    fromJSONString = function(PredictiveModelGeneralInformationJson) {
      PredictiveModelGeneralInformationObject <- jsonlite::fromJSON(PredictiveModelGeneralInformationJson)
      self$`name` <- PredictiveModelGeneralInformationObject$`name`
      self$`source` <- PredictiveModelGeneralInformationObject$`source`
      self$`identifier` <- PredictiveModelGeneralInformationObject$`identifier`
      self$`author` <- lapply(PredictiveModelGeneralInformationObject$`author`, function(x) Contact$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`creator` <- lapply(PredictiveModelGeneralInformationObject$`creator`, function(x) Contact$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`creationDate` <- PredictiveModelGeneralInformationObject$`creationDate`
      self$`modificationDate` <- PredictiveModelGeneralInformationObject$`modificationDate`
      self$`rights` <- PredictiveModelGeneralInformationObject$`rights`
      self$`availability` <- PredictiveModelGeneralInformationObject$`availability`
      self$`url` <- PredictiveModelGeneralInformationObject$`url`
      self$`format` <- PredictiveModelGeneralInformationObject$`format`
      self$`reference` <- lapply(PredictiveModelGeneralInformationObject$`reference`, function(x) Reference$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`language` <- PredictiveModelGeneralInformationObject$`language`
      self$`software` <- PredictiveModelGeneralInformationObject$`software`
      self$`languageWrittenIn` <- PredictiveModelGeneralInformationObject$`languageWrittenIn`
      ModelCategoryObject <- ModelCategory$new()
      self$`modelCategory` <- ModelCategoryObject$fromJSON(jsonlite::toJSON(PredictiveModelGeneralInformationObject$modelCategory, auto_unbox = TRUE))
      self$`status` <- PredictiveModelGeneralInformationObject$`status`
      self$`objective` <- PredictiveModelGeneralInformationObject$`objective`
      self$`description` <- PredictiveModelGeneralInformationObject$`description`
    }
  )
)
