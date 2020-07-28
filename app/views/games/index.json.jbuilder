json.array!(@games) do |game|
  json.extract! game, :id, :game_name
  json.title game.game_name
  json.start game.gamestart_datetime
  json.end game.gameend_datetime
  json.url games_url(game)
end