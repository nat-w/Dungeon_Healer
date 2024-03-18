--! file: level.lua

Biomes = {"CASTLE", "MUSHROOM", "WATER"}

Level = Object.extend(Object)

function Level.new(width, height, biome)
    self.width = width
    self.height = height
    self.biome = biome
    self.level = {}
end

function Level.createLevel()
    for y = 1, height do
        table.insert(self.level, {})
        for x = 1, width do
            -- edges are walls
            if y == 1 or y == height or x == 1 or x == width then
                table.insert(self.level[y], 1)
            else
                table.insert(self.level[y], 2)
            end
        end
    end
end