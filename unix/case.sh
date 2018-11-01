echo "Enter name"
read a
case "$a" in
  fred)
    echo "Hi fred. Nice to see you"
    ;;
  joe)
    echo "Oh! Its you, is it, joe?"
    ;;
  harry)
    echo "Clear off!"
    ;;
  *)
    echo "Who are you?"
    ;;
esac
