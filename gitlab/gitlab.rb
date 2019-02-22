gitlab_rails['gitlab_shell_ssh_port'] = 30007
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

external_url 'http://10.1.204.56'
prometheus['monitor_kubernetes'] = true
prometheus['listen_address'] = '0.0.0.0:9090'
node_exporter['enable'] = true
redis_exporter['enable'] = true
postgres_exporter['enable'] = true
gitlab_monitor['enable'] = true
