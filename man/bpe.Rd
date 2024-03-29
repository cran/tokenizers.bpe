% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/youtokentome.R
\name{bpe}
\alias{bpe}
\title{Construct a Byte Pair Encoding model}
\usage{
bpe(
  x,
  coverage = 0.9999,
  vocab_size = 5000,
  threads = -1L,
  pad_id = 0L,
  unk_id = 1L,
  bos_id = 2L,
  eos_id = 3L,
  model_path = file.path(getwd(), "youtokentome.bpe")
)
}
\arguments{
\item{x}{path to the text file containing training data or a character vector of text with training data}

\item{coverage}{fraction of characters covered by the model. Must be in the range [0, 1]. A good value to use is about 0.9999}

\item{vocab_size}{integer indicating the number of tokens in the final vocabulary}

\item{threads}{integer with number of CPU threads to use for model processing. If equal to -1 then minimum of the number of available threads and 8 will be used}

\item{pad_id}{integer, reserved id for padding}

\item{unk_id}{integer, reserved id for unknown symbols}

\item{bos_id}{integer, reserved id for begin of sentence token}

\item{eos_id}{integer, reserved id for end of sentence token}

\item{model_path}{path to the file on disk where the model will be stored. Defaults to 'youtokentome.bpe' in the current working directory}
}
\value{
an object of class \code{youtokentome} which is defined at \code{\link{bpe_load_model}}
}
\description{
Construct a Byte Pair Encoding model on text
}
\examples{
data(belgium_parliament, package = "tokenizers.bpe")
x <- subset(belgium_parliament, language == "french")
model <- bpe(x$text, coverage = 0.999, vocab_size = 5000, threads = 1)
model
str(model$vocabulary)

text <- c("L'appartement est grand & vraiment bien situe en plein centre",
          "Proportion de femmes dans les situations de famille monoparentale.")
bpe_encode(model, x = text, type = "subwords")
bpe_encode(model, x = text, type = "ids")

encoded <- bpe_encode(model, x = text, type = "ids")
decoded <- bpe_decode(model, encoded)
decoded

## Remove the model file (Clean up for CRAN)
file.remove(model$model_path)
}
\seealso{
\code{\link{bpe_load_model}}
}
