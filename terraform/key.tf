resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJauiq3piCD7N+WMHD2ELVxJe3ZiY9dHP4M6x2x8jp6fnaQRXUv5kN5JbC7AEg25XM6rlYd7+u43yAJG0/lZhzCTd9qpciUgcGtCNrgy/+bMxu7zFZl+zvsztIrKzBHmKC0TYMnHljMe5YlFIooijDLp9cRiiEaNdWmO1PU60SnGiEYGw0HEoAIH0CqooK/8aTOWUbMgLxwDRv6lJLv8sAAxccTUYsfXWzTIw/VdKH3PvnO786n0YGRJjRFFezDAClsFNu4UeB5TBLbnt1uU5XeJNPYTPNawftrY4ctT5hxGmBwf7+8ipbemcOK1yFVDQzLtsmkx5M93vMEc1Xii6l6iDhcbozCYMG8mAhjFAuSZNtSwiwBGnw7FwbjUt11zEkiHLrXHisiq02ZridKRaiO62vvjjhn++mB7laQyAmXsn1TJcYSFHPvtWDmUHBwQ8dEPr474o32Pj+DurhSx47hH4PB6wcUrKkx6n94dmkaukFeS3hlXGosl5T4IrMQAk= valentin@macbook"
}
