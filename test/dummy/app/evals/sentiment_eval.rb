# frozen_string_literal: true

class SentimentEval < Leva::BaseEval
  leva_dataset_record_class "TextContent"

  # @param record [TextContent] The record to evaluate
  # @return [Leva::Result] The result of the evaluation
  def run_each(record)
    # Implement your evaluation logic here
    prediction = your_prediction_method(record)
    score = calculate_score(prediction, record.expected_value)

    Leva::Result.new(
      label: "sentiment",
      prediction: prediction,
      score: score
    )
  end

  private

  # @param record [TextContent] The record to make a prediction for
  # @return [String] The prediction
  def your_prediction_method(record)
    # Implement your prediction logic here
    # This is where you would typically call an LLM or use some other method to make a prediction
    "Your prediction"
  end

  # @param prediction [String] The predicted value
  # @param expected [String] The expected value
  # @return [Float] The score (0.0 to 1.0)
  def calculate_score(prediction, expected)
    # Implement your scoring logic here
    prediction == expected ? 1.0 : 0.0
  end
end