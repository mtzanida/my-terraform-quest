resource "aws_db_instance" "RestoredRDS" {
  identifier = "restoration-test-db" # Unique identifier for the RDS instance
  engine         = "mysql"       # Change to your desired database engine (e.g., postgres, mysql, sqlserver, etc.)
  instance_class = "db.t2.micro" # Change to your desired instance type
  engine_version = "5.7"
  allocated_storage      = 20 # Storage size in GB
  storage_type           = "gp2"
  username               = "db_username"
  password               = "db_password"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.RestoredRDSSubGroup.name
  vpc_security_group_ids = ["sg-12345"] # Replace with the appropriate security group ID
  tags = {
    Name = "RestoredRDS"
  }
}


resource "aws_db_subnet_group" "RestoredRDSSubGroup" {
  name       = "test-subnet-group"
  subnet_ids = ["subnet-123", "subnet-456"] # Replace with appropriate subnet IDs in your VPC
}
