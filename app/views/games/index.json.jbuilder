json.array!(@games) do |game|
  json.extract! game, :id, :game_name
  json.title game.game_name
  json.start game.gamestart_datetime
  json.end game.gameend_datetime
  json.url game_path(game.id)
  #json.url "/games/#{geme.id}"
  #game # => # Gage <id: 1, name: 'name'>
  #game.game_id # => 1
  #1(game, format: :html)
  #json.url game.game_id(game, format: :html)
end