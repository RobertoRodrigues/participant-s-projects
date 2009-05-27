require 'lib.luaspec'
require 'src.bowling'

describe["Bowling"] = function()
  
  it["should know result of empty frame"] = function()
  	local f = Frame("-","-")
  	expect( f:result() ).should_be(0)
  end
  
  it["should know result of simple frame"] = function()
  	local f = Frame("1","-")
  	expect( f:result() ).should_be(1)
  end
  
  it["should know result of simple frame with other value"] = function()
  	local f = Frame("2","-")
  	expect( f:result() ).should_be(2)
  end
end

spec:report(false)