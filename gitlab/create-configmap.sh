gitlab_rails['gitlab_shell_ssh_port'] = 10080
gitlab_rails['gitlab_email_enabled'] = true
gitlab_rails['gitlab_email_from'] = "henry8wang@163.com"
gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "smtp.163.com"
gitlab_rails['smtp_port'] = 25
gitlab_rails['smtp_user_name'] = "henry8wang@163.com"
gitlab_rails['smtp_password'] = "1qaz2wsx"
gitlab_rails['smtp_domain'] = "163.com"
gitlab_rails['smtp_authentication'] = "login"
gitlab_rails['smtp_enable_starttls_auto'] = true
gitlab_rails['smtp_tls'] = false

external_url 'http://10.1.210.41'
prometheus['monitor_kubernetes'] = true
prometheus['listen_address'] = '0.0.0.0:9090'
node_exporter['enable'] = true
redis_exporter['enable'] = true
postgres_exporter['enable'] = true
gitlab_monitor['enable'] = true

kubectl -n kube-ops create configmap gitlab-rb --from-file=gitlab.rb

gitlab-rails console #进入控制台，然后发送邮件 

Notify.test_email('henry8wang@163.com', 'test', 'test').deliver_now

kubectl -n kube-ops create configmap gitlab-rb --from-file=gitlab.rb
