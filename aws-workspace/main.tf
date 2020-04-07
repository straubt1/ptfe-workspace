resource "random_pet" "main" {
  length = 2
}

resource "aws_s3_bucket" "main" {
  bucket = random_pet.main.id

  tags = {
    Name = random_pet.main.id
  }
}
