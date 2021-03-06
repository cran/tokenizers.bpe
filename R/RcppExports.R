# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

youtokentome_train <- function(input_path, model_path, coverage, threads = -1L, vocab_size = 30000L, pad_id = 0L, unk_id = 1L, bos_id = 2L, eos_id = 3L) {
    .Call('_tokenizers_bpe_youtokentome_train', PACKAGE = 'tokenizers.bpe', input_path, model_path, coverage, threads, vocab_size, pad_id, unk_id, bos_id, eos_id)
}

youtokentome_load_model <- function(model_path, threads = -1L) {
    .Call('_tokenizers_bpe_youtokentome_load_model', PACKAGE = 'tokenizers.bpe', model_path, threads)
}

youtokentome_encode_as_ids <- function(model, x, bos = FALSE, eos = FALSE, reverse = FALSE) {
    .Call('_tokenizers_bpe_youtokentome_encode_as_ids', PACKAGE = 'tokenizers.bpe', model, x, bos, eos, reverse)
}

youtokentome_encode_as_subwords <- function(model, x, bos = FALSE, eos = FALSE, reverse = FALSE) {
    .Call('_tokenizers_bpe_youtokentome_encode_as_subwords', PACKAGE = 'tokenizers.bpe', model, x, bos, eos, reverse)
}

youtokentome_decode <- function(model, x) {
    .Call('_tokenizers_bpe_youtokentome_decode', PACKAGE = 'tokenizers.bpe', model, x)
}

youtokentome_recode_id_to_subword <- function(model, x) {
    .Call('_tokenizers_bpe_youtokentome_recode_id_to_subword', PACKAGE = 'tokenizers.bpe', model, x)
}

youtokentome_recode_subword_to_id <- function(model, x) {
    .Call('_tokenizers_bpe_youtokentome_recode_subword_to_id', PACKAGE = 'tokenizers.bpe', model, x)
}

