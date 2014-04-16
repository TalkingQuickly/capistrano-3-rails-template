namespace :nginx do
  %w(start stop restart reload).each do |task_name|
    desc "#{task } Nginx"
    task task_name do
      on roles(:app), in: :sequence, wait: 5 do
        sudo "/etc/init.d/nginx #{task_name}"
      end
    end
  end

  desc "Remove default Nginx Virtual Host"
  task "remove_default_vhost" do 
    on roles(:app) do
      if test("[ -f /etc/nginx/sites-enabled/default ]")
      sudo "rm /etc/nginx/sites-enabled/default"
      puts "removed default Nginx Virtualhost"
      else
        puts "No default Nginx Virtualhost to remove"
      end
    end
  end
end
