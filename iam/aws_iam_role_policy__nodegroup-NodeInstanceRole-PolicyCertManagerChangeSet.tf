# aws_iam_role_policy.eks-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO__eks-nodegroup-ng-maneksami2-PolicyCertManagerChangeSet:
resource "aws_iam_role_policy" "eks-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO__eks-nodegroup-ng-maneksami2-PolicyCertManagerChangeSet" {
  name = "eks-nodegroup-ng-maneksami2-PolicyCertManagerChangeSet"
  policy = jsonencode(
    {
      Statement = [
        {
          Action = [
            "route53:ChangeResourceRecordSets",
          ]
          Effect   = "Allow"
          Resource = "arn:aws:route53:::hostedzone/*"
        },
      ]
      Version = "2012-10-17"
    }
  )
  role = aws_iam_role.eks-nodegroup-ng-ma-NodeInstanceRole-1GFKA1037E1XO.id
}