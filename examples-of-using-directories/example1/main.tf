module "myModule" {
  source = "./modules/module1"
}

output "foo" {
  value = module.myModule.foo
}

// you cannot use locals defined in subdirectories. These are considered modules
// DOES NOT WORK
# output "dne" {
#   value = local.bar
# }

// terraform recognizes top level files as the 'local' context 
// any subdirectory is considered a module
// to use locals from a subdirectory, you should create a module, define a local, 
// define an output of that local, and then use that output in the main module
module "someOtherModule" {
  source = "./someOtherDir"
}

output "exists" {
  value = module.someOtherModule.bar
}
