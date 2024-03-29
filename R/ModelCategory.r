# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ModelCategory Class
#'
#' @field modelClass 
#' @field modelSubClass 
#' @field modelClassComment 
#' @field basicProcess 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelCategory <- R6::R6Class(
  'ModelCategory',
  public = list(
    `modelClass` = NULL,
    `modelSubClass` = NULL,
    `modelClassComment` = NULL,
    `basicProcess` = NULL,
    initialize = function(`modelClass`, `modelSubClass`, `modelClassComment`, `basicProcess`){
      if (!missing(`modelClass`)) {
        stopifnot(is.character(`modelClass`), length(`modelClass`) == 1)
        self$`modelClass` <- `modelClass`
      }
      if (!missing(`modelSubClass`)) {
        stopifnot(is.list(`modelSubClass`), length(`modelSubClass`) != 0)
        lapply(`modelSubClass`, function(x) stopifnot(is.character(x)))
        self$`modelSubClass` <- `modelSubClass`
      }
      if (!missing(`modelClassComment`)) {
        stopifnot(is.character(`modelClassComment`), length(`modelClassComment`) == 1)
        self$`modelClassComment` <- `modelClassComment`
      }
      if (!missing(`basicProcess`)) {
        stopifnot(is.list(`basicProcess`), length(`basicProcess`) != 0)
        lapply(`basicProcess`, function(x) stopifnot(is.character(x)))
        self$`basicProcess` <- `basicProcess`
      }
    },
    toJSON = function() {
      ModelCategoryObject <- list()
      if (!is.null(self$`modelClass`)) {
        ModelCategoryObject[['modelClass']] <- self$`modelClass`
      }
      if (!is.null(self$`modelSubClass`)) {
        ModelCategoryObject[['modelSubClass']] <- self$`modelSubClass`
      }
      if (!is.null(self$`modelClassComment`)) {
        ModelCategoryObject[['modelClassComment']] <- self$`modelClassComment`
      }
      if (!is.null(self$`basicProcess`)) {
        ModelCategoryObject[['basicProcess']] <- self$`basicProcess`
      }

      ModelCategoryObject
    },
    fromJSON = function(ModelCategoryJson) {
      ModelCategoryObject <- jsonlite::fromJSON(ModelCategoryJson)
      if (!is.null(ModelCategoryObject$`modelClass`)) {
        self$`modelClass` <- ModelCategoryObject$`modelClass`
      }
      if (!is.null(ModelCategoryObject$`modelSubClass`)) {
        self$`modelSubClass` <- ModelCategoryObject$`modelSubClass`
      }
      if (!is.null(ModelCategoryObject$`modelClassComment`)) {
        self$`modelClassComment` <- ModelCategoryObject$`modelClassComment`
      }
      if (!is.null(ModelCategoryObject$`basicProcess`)) {
        self$`basicProcess` <- ModelCategoryObject$`basicProcess`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "modelClass": %s,
           "modelSubClass": [%s],
           "modelClassComment": %s,
           "basicProcess": [%s]
        }',
        self$`modelClass`,
        lapply(self$`modelSubClass`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`modelClassComment`,
        lapply(self$`basicProcess`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(ModelCategoryJson) {
      ModelCategoryObject <- jsonlite::fromJSON(ModelCategoryJson)
      self$`modelClass` <- ModelCategoryObject$`modelClass`
      self$`modelSubClass` <- ModelCategoryObject$`modelSubClass`
      self$`modelClassComment` <- ModelCategoryObject$`modelClassComment`
      self$`basicProcess` <- ModelCategoryObject$`basicProcess`
    }
  )
)
