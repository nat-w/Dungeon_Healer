function love.load()
    require "globals"
    
    -- Load classes
    Object = require "classic"
    require "player"

    -- Load sprites
    playerSpritesheet = love.graphics.newImage("./assets/player.png")
    playerSprite = love.graphics.newQuad(0, 0, CELLSIZE, CELLSIZE, playerSpritesheet:getWidth(), playerSpritesheet:getHeight())

    player = new Player(50, 50, CELLSIZE, CELLSIZE, playerSprite)
end

function love.update()

end

function love.draw()
    
end