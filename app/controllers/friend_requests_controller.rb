class FriendRequestsController < ApplicationController

  before_action :authorize

  def create
    request = FriendRequest.create(sender_id: params[:sender_id], receiver_id: params[:receiver_id])
    if request.valid?
      render json: request, status: :created
    else
      render json: { errors: request.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def get_sender
    request = FriendRequest.find(params[:id])
    sender = request.sender
    render json: sender
  end

  def show
    requests = FriendRequest.where(receiver_id: params[:id]).all
    render json: requests
  end

  def destroy
      request = FriendRequest.find(params[:id])
      if request.sender_id == session[:user_id] || request.receiver_id == session[:user_id]
        user = User.find_by(id: request.receiver_id)
        request.delete
        requests = user.receiver_friend_requests
        render json: requests
      else
        return render json: { error: "Not authorized" }, status: :unauthorized
      end
  end

  private

  def request_params
      params.permit(:sender_id, :receiver_id)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

end