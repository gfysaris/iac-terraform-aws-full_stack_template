###########################
##  Public VPC Subnets  ##
###########################

resource "aws_subnet" "pub01" {
  count             = "${var.aws_vpc_pub_enabled}"
  vpc_id            = "${aws_vpc.public.id}"
  cidr_block        = "${var.aws_vpc_subnet_pub01_cidr_block}"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  
  map_public_ip_on_launch = "true"
  
  tags {
    Name          = "VPC-SUB-Pub01-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.available.names[0]}"
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
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
  
  map_public_ip_on_launch = "true"
  
  tags {
    Name          = "VPC-SUB-Pub02-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.available.names[1]}"
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
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
  
  map_public_ip_on_launch = "true"
  
  tags {
    Name          = "VPC-SUB-Pub03-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.available.names[1]}"
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
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  
  tags {
    Name          = "VPC-SUB-Prv01-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.available.names[0]}"
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
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
  
  tags {
    Name          = "VPC-SUB-Prv02-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.available.names[1]}"
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
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
  
  tags {
    Name          = "VPC-SUB-Prv03-${var.prj_environment}-${var.prj_ecosystem}-${var.prj_application}"
    AZ            = "${data.aws_availability_zones.available.names[1]}"
    Type          = "Private"
    Resource      = "Subnets"
    ResourceGroup = "VPC"
    Ecosystem     = "${var.prj_ecosystem}"
    Application   = "${var.prj_application}"
    Environment   = "${var.prj_environment}"
  }
}