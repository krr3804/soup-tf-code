resource "aws_iam_role_policy" "eks-cluster-ServiceRole-HUIGIC7K7HNJ__eks-cluster-PolicyCloudWatchMetrics" {
  name = "eks-cluster-PolicyCloudWatchMetrics"
  policy = jsonencode(
    {
      Statement = [
        {
          Action = [
            "cloudwatch:PutMetricData",
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