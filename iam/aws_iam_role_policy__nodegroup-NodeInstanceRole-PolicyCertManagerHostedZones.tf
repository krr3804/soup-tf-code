resource "aws_iam_role_policy" "eks-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO__eks-nodegroup-ng-maneksami2-PolicyCertManagerHostedZones" {
  name = "eks-nodegroup-ng-maneksami2-PolicyCertManagerHostedZones"
  policy = jsonencode(
    {
      Statement = [
        {
          Action = [
            "route53:ListResourceRecordSets",
            "route53:ListHostedZonesByName",
            "route53:ListHostedZones",
            "route53:ListTagsForResource",
          ]
          Effect   = "Allow"
          Resource = "*"
        },
      ]
      Version = "2012-10-17"
    }
  )
  role = aws_iam_role.eks-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO.id
}