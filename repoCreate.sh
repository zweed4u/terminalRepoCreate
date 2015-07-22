echo Username?
read Username
echo -e '\n'

echo Access Token?
read Token
echo -e '\n'


echo Repository name?
read repo_Name
echo -e '\n'

mkdir ~/Desktop/$repo_Name


curl -u "$Username:$Token" https://api.github.com/user/repos -d '{"name":"'$repo_Name'"}'

echo '\n\nLocal repository folder created at: ~/Desktop/$repo_Name'

