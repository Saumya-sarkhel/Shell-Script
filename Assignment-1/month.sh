echo -n "Enter month number (1-12): "
read month

case $month in
  1)  echo "January" ;;
  2)  echo "February" ;;
  3)  echo "March" ;;
  4)  echo "April" ;;
  5)  echo "May" ;;
  6)  echo "June" ;;
  7)  echo "July" ;;
  8)  echo "August" ;;
  9)  echo "September" ;;
  10) echo "October" ;;
  11) echo "November" ;;
  12) echo "December" ;;
  *)  echo "Invalid month number. Please enter a number from 1 to 12." ;;
esac
