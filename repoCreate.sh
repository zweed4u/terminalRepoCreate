echo Username?
read Username
echo -e '\n'

echo Access Token?
read Token
echo -e '\n'


echo Repo name?
read repo_Name
echo -e '\n'


curl -u "$Username:$Token" https://api.github.com/user/repos -d '{"name":"'$repo_Name'"}'

