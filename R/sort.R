#' Sort and related
#'
#' @export
#' @template args
#' @examples
#' # sort
#' '[8,3,null,6]' %>% sortj %>% jq
#' '[{"foo":4, "bar":10}, {"foo":3, "bar":100}, {"foo":2, "bar":1}]' %>% sortj(foo) %>% jq
#'
#' # reverse order
#' '[1,2,3,4]' %>%  reverse %>% jq
sortj <- function(.data, ...) {
  sortj_(.data, .dots = lazyeval::lazy_dots(...))
}

#' @export
#' @rdname sortj
sortj_ <- function(.data, ..., .dots) {
  tmp <- lazyeval::all_dots(.dots, ...)
  if (base::length(tmp) == 0) {
    z <- "sort"
  } else {
    z <- sprintf("sort_by(.%s)", deparse(tmp[[1]]$expr))
  }
  dots <- comb(tryargs(.data), structure(z, type = "sort"))
  structure(list(data = .data, args = dots), class = "jqr")
}

#' @export
#' @rdname sortj
reverse <- function(.data) {
  dots <- comb(tryargs(.data), structure("reverse", type = "reverse"))
  structure(list(data = .data, args = dots), class = "jqr")
}
