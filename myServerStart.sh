set -o allexport
source .env
set +o allexport
bundle exec rails s -p $APP_PORT -b $APP_HOST -e $ENV

#./script/rails server
