class GameNightsController < ApplicationController

  before_action :authorize

  def create
      gameNight = GameNight.create(game_night_params)
      if gameNight.valid?
        render json: gameNight, status: :created
      else
        render json: { errors: gameNight.errors.full_messages }, status: :unprocessable_entity
      end
  end

  def show
      gameNight = GameNight.find_by(id: params[:id])
      if gameNight
        render json: GameNight
      else
        render json: { error: "Game night not found" }, status: :not_found
      end
  end

  def get_nights
    user_nights = GameNight.where(originator_id: params[:user_id]).all
    render json: user_nights
  end

  def get_packages
    user = User.find(params[:user_id])
    originating = user.originator_game_nights
    attending = user.attendee_game_nights
    invited = user.invitee_game_nights
    nights = originating + attending + invited
    render json: nights, option_user_id: params[:user_id], status: :ok
  end

  def get_invitees
    night = GameNight.find(params[:id])
    invitations = night.invitations.all
    invitees = invitations.map { |invitation| invitation.receiver }
    if invitees.size > 0
      render json: invitees
    else
      render json: { errors: "No invitees" }
    end
  end

  def get_attendees
    night = GameNight.find(params[:id])
    attendances = night.attendances.all
    attendees = attendances.map { |attendance| {attendee: attendance.attendee, certainty: attendance.certainty} }
    if attendees.size > 0
      render json: attendees
    else
      render json: { errors: "No attendees" }
    end
  end

  def update
      gameNight = GameNight.find_by(id: params[:id])
      gameNight.update(game_night_params)
      if gameNight.originator_id == session[:user_id]
        if gameNight.valid?
          render json: gameNight, status: :accepted
        else
          render json: { errors: gameNight.errors.full_messages }, status: :unprocessable_entity
        end
      else
        return render json: { error: "Update Not authorized" }, status: :unauthorized
      end
  end

  def destroy
      gameNight = GameNight.find_by(id: params[:id])
      if gameNight.originator_id == session[:user_id]
        gameNight.destroy
        head :no_content
      else
        return render json: { error: "Delete Not authorized" }, status: :unauthorized
      end
  end

  private

  def game_night_params
      params.permit(:date, :time, :location, :originator_id, :title)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

end
