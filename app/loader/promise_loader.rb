# frozen_string_literal: true

class PromiseLoader < GraphQL::Batch::Loader
  def initialize(model)
    super()
    @model = model
  end

  def perform(methods)
    futures = methods.map do |method|
      Concurrent::Promises.future { @model.public_send(method) }
    end
    methods.each_with_index.each do |method, index|
      fulfill(method, futures[index].value)
    end
  end
end
