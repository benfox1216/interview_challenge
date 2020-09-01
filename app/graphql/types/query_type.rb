# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :hello_world, # name of method
          String, # Type the data will be
          null: false, # If it can ever return a null value
          description: 'An example field added for your reference!' # Optional Descriotion

    def hello_world
      'Hello World - This is your Interview Challenge!\nGood luck.'
    end
    
    field :all_candidates, [Types::CandidateType], null: false
    
    def all_candidates
      Candidate.all
    end
    
    field :candidate, Types::CandidateType, null: false do
      argument :id, ID, required: true
    end
    
    def candidate(id:)
      Candidate.find(id)
    end
  end
end
