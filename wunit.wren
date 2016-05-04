class WUnit{
  name=(value){
    _name=value
  }
  describe=(value){
    _desc=value
  }
  construct test(fn){
    _messages =[]
    _isFailed=false
    var fiber=Fiber.new{
      var obj=Fiber.yield()
      fn.call(obj)
    }
    fiber.call()
    fiber.call(this)
    if (!_isFailed){
      pass(_name)
    }
    report()
  }
  pass(msg){
    write("PASS",msg)
  }
  fail(msg){
    _isFailed=true
    write("FAIL",msg)
  }

  fatal(msg){
    Fiber.abort(msg)
  }

  write(prefix,message){
    _messages.add("[%(prefix)]:%(_name)  %(message)")
  }
  report(){
    for(i in _messages){
      System.print(i)
    }
  }
}
