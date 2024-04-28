resource "local_file" "foo" {
  for_each = toset(var.filenames)
  content  = "Hey, there ...!!!"
  filename = each.key
}