

resource "aws_alb" "app-lb" {
  name            = "load-balancerM"
  subnets         = aws_subnet.public.*.id
  security_groups = [aws_security_group.lb.id]
}

resource "aws_alb_target_group" "app-tg" {
  name        = "target-groupM"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.anothervpc.id
  target_type = "ip"

  health_check {
    healthy_threshold   = 5
    interval            = 30
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = 3
    path                = "/"
    unhealthy_threshold = 2
  }
}
resource "aws_alb_listener" "listen-lol" {
  load_balancer_arn = aws_alb.app-lb.id
  port              = 80
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_alb_target_group.app-tg.arn
    type             = "forward"
  }
}