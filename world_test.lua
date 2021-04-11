luaunit = require('luaunit')
World = require('world')

function testCreateWorld()
    local world = World:new({cell_size = 10})
    luaunit.assertEquals(world.cell_size, 10)
    luaunit.assertNotNil(world.cells)
end

function testCreateEmptyworld()
    local world = World:new()
    luaunit.assertEquals(world.cell_size, 30)
    luaunit.assertNotNil(world.cells)
end

os.exit( luaunit.LuaUnit.run() )