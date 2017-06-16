module Roadmap

  def get_roadmap(roadmap_id)
    response = self.class.get(api_url("roadmaps/#{roadmap_id}"),
      headers: { "authorization" => @auth_token})
    @roadmaps = JSON.parse(response.body)
    # p @roadmaps
  end

  def get_checkpoint(checkpoint_id)
    response = self.class.get(api_url("checkpoints/#{checkpoint_id}"),
      headers: { "authorization" => @auth_token})
    @checkpoints = JSON.parse(response.body)
    # p @checkpoints
  end

  private

  # roadmap_id: 38
  # checkpoint_id: 2265
end
