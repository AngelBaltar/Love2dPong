local player_x=0
local player_y=0
local cpu_x=0
local cpu_y=0
local ball_x=0
local ball_y=0
local ball_mov=0

function love.load()
  player_x=80
  player_y=100

  cpu_x=700
  cpu_y=100

  ball_x=200
  ball_y=100
  ball_mov=1
end



function love.update(dt)
  local step=2

  --implement player movement
  if love.keyboard.isDown("up") then
    player_y=player_y-step    
  end
  if love.keyboard.isDown("down") then
    player_y=player_y+step
  end

  --implement cpu movement

  
  --implement ball movement collision checks...
  ball_x=ball_x+step*ball_mov


end

function love.draw()
  --draw player
  love.graphics.rectangle( "fill", player_x, player_y, 20, 60 )

  --draw cpu
  love.graphics.rectangle( "fill", cpu_x, cpu_y, 20, 60 )

   --draw ball
   love.graphics.circle( "fill", ball_x, ball_y, 10, 100 )
end

function love.keypressed(key, unicode)

    
end