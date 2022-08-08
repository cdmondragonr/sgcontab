To Build a docker instanciable image for run the API.
Wanring: Run this scripts in the main folder

docker build -t sgcontab_env .
docker run -dt -p 5000:5000 sgcontab_enva