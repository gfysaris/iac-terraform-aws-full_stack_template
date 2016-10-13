resource "template_file" "azs" {
  template = <<EOF
${azs_list}
EOF
  
  vars {
    azs_list = "${length(data.aws_availability_zones.aws_account_az.names)}"
  }
}

output "template-1" {
  value = "${template_file.azs.rendered}"
}

/*
resource "aws_subnet" "public" {
  #count             = "${length(data.aws_availability_zones.aws_account_az.names)}"
  #count             = "${length(let.azs_count)}"
  count             = "3"
  vpc_id            = "${aws_vpc.public.id}"
  cidr_block        = "${var.aws_vpc_subnet_pub_cidr_block[count.index]}"
  #cidr_block        = "${var.aws_vpc_subnet_pub_cidr_block[1]}"
  availability_zone = "${data.aws_availability_zones.aws_account_az.names[count.index]}"
  #availability_zone = "${data.aws_availability_zones.aws_account_az.names[1]}"
  
  map_public_ip_on_launch = "true"
  
  tags {
    Name          = "VPC-SUB-Pub01-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.aws_account_az.names[count.index]}"
    Type          = "Public"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
    Count-Data      = "${length(data.aws_availability_zones.aws_account_az.names)}"
    Count-TempFile  = "${length(split(",", "${template_file.azs.rendered}"))}"
  }
}
*/
/*
resource "aws_subnet" "private" {
  count             = "${length(data.aws_availability_zones.aws_account_az.names)}"
  vpc_id            = "${aws_vpc.private.id}"
  cidr_block        = "${var.aws_vpc_subnet_prv_cidr_block[count.index]}"
  availability_zone = "${data.aws_availability_zones.aws_account_az.names[count.index]}"
  
  tags {
    Name          = "VPC-SUB-Prv01-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.aws_account_az.names[count.index]}"
    Type          = "Private"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}
*/
/*

###########################
##  Public VPC Subnets  ##
###########################

resource "aws_subnet" "pub01" {
  count             = "${var.aws_vpc_pub_enabled}"
  vpc_id            = "${aws_vpc.public.id}"
  cidr_block        = "${var.aws_vpc_subnet_pub01_cidr_block}"
  availability_zone = "${data.aws_availability_zones.aws_account_az.names[0]}"
  
  map_public_ip_on_launch = "true"
  
  tags {
    Name          = "VPC-SUB-Pub01-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.aws_account_az.names[0]}"
    Type          = "Public"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_subnet" "pub02" {
  count             = "${var.aws_vpc_pub_enabled}"
  vpc_id            = "${aws_vpc.public.id}"
  cidr_block        = "${var.aws_vpc_subnet_pub02_cidr_block}"
  availability_zone = "${data.aws_availability_zones.aws_account_az.names[1]}"
  
  map_public_ip_on_launch = "true"
  
  tags {
    Name          = "VPC-SUB-Pub02-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.aws_account_az.names[1]}"
    Type          = "Public"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_subnet" "pub03" {
  count             = "${var.aws_vpc_pub_enabled}"
  vpc_id            = "${aws_vpc.public.id}"
  cidr_block        = "${var.aws_vpc_subnet_pub03_cidr_block}"
  availability_zone = "${data.aws_availability_zones.aws_account_az.names[1]}"
  
  map_public_ip_on_launch = "true"
  
  tags {
    Name          = "VPC-SUB-Pub03-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.aws_account_az.names[1]}"
    Type          = "Public"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

###########################
##  Private VPC Subnets  ##
###########################

resource "aws_subnet" "prv01" {
  count             = "${var.aws_vpc_prv_enabled}"
  vpc_id            = "${aws_vpc.private.id}"
  cidr_block        = "${var.aws_vpc_subnet_prv01_cidr_block}"
  availability_zone = "${data.aws_availability_zones.aws_account_az.names[0]}"
  
  tags {
    Name          = "VPC-SUB-Prv01-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.aws_account_az.names[0]}"
    Type          = "Private"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_subnet" "prv02" {
  count             = "${var.aws_vpc_prv_enabled}"
  vpc_id            = "${aws_vpc.private.id}"
  cidr_block        = "${var.aws_vpc_subnet_prv02_cidr_block}"
  availability_zone = "${data.aws_availability_zones.aws_account_az.names[1]}"
  
  tags {
    Name          = "VPC-SUB-Prv02-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.aws_account_az.names[1]}"
    Type          = "Private"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

resource "aws_subnet" "prv03" {
  count             = "${var.aws_vpc_prv_enabled}"
  vpc_id            = "${aws_vpc.private.id}"
  cidr_block        = "${var.aws_vpc_subnet_prv03_cidr_block}"
  availability_zone = "${data.aws_availability_zones.aws_account_az.names[1]}"
  
  tags {
    Name          = "VPC-SUB-Prv03-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.aws_account_az.names[1]}"
    Type          = "Private"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}

*/
