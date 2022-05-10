variable "regiao" {
  default = "sa-east-1"
}

variable "prefix" {
  default = "igti-igor-rais"
}

variable "conta" {
  default = 234428941834
}

variable "nome_bucket" {
  default = "datalake-igor-rais"
}


variable "lambda_function_name" {
  default = "executaEMR"
}

variable "airflow_subnet_id" {
  default = "subnet-02e950aee8e04bce4"
}

variable "vpc_id" {
  default = "vpc-0cb0059b717effe95"
}

variable "key_pair_name" {
  default = "igor"
}

