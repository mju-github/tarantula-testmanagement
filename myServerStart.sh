set -o allexport
source .env
set +o allexport

rm log/$ENV.log

bundle exec rails s -p $APP_PORT -b $APP_HOST -e $ENV

#./script/rails server
