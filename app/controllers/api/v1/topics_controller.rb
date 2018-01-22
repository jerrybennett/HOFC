class Api::V1::TopicsController < ApplicationController
  before_action :set_topic, only: [:show,:update,:destroy]

  def index
    topics = Topic.all
    render json: topics, status: 200
  end

  def create
    topic = Topic.create(topic_params)
    render json: topic, status: 201
  end

  def update
    @topic.update(topic_params)
    render json: @topic, status: 200
  end

  def destroy
    topicId = @topic.id
    @topic.destroy
    render json: {message:"Zap! Topic deleted", topicId:topicId}
  end

  def show
    render json: @topic, status: 200
  end

  private
  def topic_params
    params.permit(:title, :description)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end
end
