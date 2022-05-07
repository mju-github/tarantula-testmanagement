set -o allexport
source .env
set +o allexport

rm log/$ENV.log

cd test
./test_login_admin.rb &
cd ..

bundle exec rails s -p $APP_PORT -b $APP_HOST -e $ENV 


#./script/rails server
