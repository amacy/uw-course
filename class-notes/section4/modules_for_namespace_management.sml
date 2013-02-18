(*
structure keyword to define modules:

structure MyModule = struct *bindings* end

Outside a module, refer to earlier module's bindings via:
ModuleName.bindingName
  - List.foldl, String.toUpper are examples

By using modules, we can keep the names for different bindings separate.

You can define modules inside of modules

open MyMathLib to add all bindings from module to the environment

can also set a variable equal to MyModule.bindingName 

*)
