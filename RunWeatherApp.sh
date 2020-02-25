echo " ___________________________________________    "
echo "| Thank you for downloading my Weather App! |\  "
echo "|                                           | \ "
echo "| To run this application you need to have: |  |"
echo "|-------------------------------------------|  |"
echo "| 1. Java (it's free!)                      |  |"
echo "| 2. Dark Sky API Key (it's free!)          |  |"
echo "| 3. OpenCage Geocode API Key (it's free!)  |  |"
echo "|                                           |  |"
echo "| Also special thanks to The Dark Sky       |  |"
echo "| Company, LLC. & OpenCage GmbH for the     |  |"
echo "| great APIs that power the weather &       |  |"
echo "| location data services used in this       |  |"
echo "| application. Enjoy! - Andrij              |  |"
echo "|___________________________________________|  |"
echo " \                                           \ |"
echo "  \___________________________________________\|"

SOURCE="${BASH_SOURCE[0]}"
DIR="$( dirname "$SOURCE" )"
while [ -h "$SOURCE" ]
do
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
  DIR="$( cd -P "$( dirname "$SOURCE"  )" && pwd )"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd "$DIR"

java -jar WeatherApp.jar
