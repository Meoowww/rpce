get "/npcs/" do
  all = DB.exec({Int32, Int32, String}, "SELECT npcs.id, npcs.npc_id, npcs.name FROM npcs
  LEFT JOIN npcs npcs_ ON (npcs.npc_id = npcs_.npc_id AND npcs.id < npcs_.id)
  WHERE npcs_.id IS NULL;")
  render "src/rpce/webroot/npcs/index.ecr", "src/rpce/webroot/layouts/layout.ecr"
end

# get "/npcs/new" do
#   render "src/rpce/webroot/npcs/new.ecr", "src/rpce/webroot/layouts/layout.ecr"
# end
#
# get "/npcs/edit/:name" do |env|
#   name = env.params.url["name"]
#   render "src/rpce/webroot/npcs/edit.ecr", "src/rpce/webroot/layouts/layout.ecr"
# end
#
# get "/npcs/show/:name" do |env|
#   name = env.params.url["name"]
#   render "src/rpce/webroot/npcs/show.ecr", "src/rpce/webroot/layouts/layout.ecr"
# end
