# frozen_string_literal: true

module Sources
  class ActiveRecordObject < GraphQL::Dataloader::Source
    def initialize(model_class, association_name)
      super()
      @model_class = model_class
      @association_name = association_name
    end

    def fetch(ids)
      records = @model_class.where(id: ids).preload(@association_name)
      ids.map { |id| records.find { _1.id == id.to_i }&.public_send(@association_name) }
    end
  end
end
