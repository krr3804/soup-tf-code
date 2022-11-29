resource "aws_iam_role_policy" "eks-cluster-ServiceRole-HUIGIC7K7HNJ__eks-cluster-PolicyELBPermissions" {
  name = "eks-cluster-PolicyELBPermissions"
  policy = jsonencode(
    {
      Statement = [
        {
          Action = [
            "ec2:DescribeAccountAttributes",
            "ec2:DescribeAddresses",
            "ec2:DescribeInternetGateways",
          ]
          Effect   = "Allow"
          Resource = "*"
        },
      ]
      Version = "2012-10-17"
    }
  )
  role = aws_iam_role.eks-cluster-ServiceRole-HUIGIC7K7HNJ.id
}