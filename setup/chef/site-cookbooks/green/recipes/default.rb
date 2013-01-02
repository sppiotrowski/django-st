application "green" do
  path "/srv/green"
  owner "vagrant"
  group "vagrant"
  repository "https://github.com/sppiotrowski/django-st.git"
  revision "master"
  packages ["git-core", "vim"]

  django do
    packages ["Django"]
  end

  gunicorn do
    app_module :django
    port 8080
  end
end
