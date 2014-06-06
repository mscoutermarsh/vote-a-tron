class Api::VotesController < ApplicationController

  def confirm
    vote = Vote.find(params['vote_id'])
    answer = params['answer']

    confirm = vote.confirm(answer) if vote && answer
    if confirm
      render json: {message: 'Thanks!'}, status: 201
    else
      render json: {message: 'Wrong answer!'}, status: 400
    end
  end

  # POST /api/polls/:id/contestants/:id/votes.json
  def create
    contestant = Contestant.find(params['contestant_id'])

    if contestant
      vote = contestant.votes.create
      render json: {id: vote.id, question: vote.question}, status: :created
    else
      render nothing: true, status: :unprocessable_entity
    end
  end
end
