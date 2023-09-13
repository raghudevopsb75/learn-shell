total=$(free  | grep Mem | awk '{print $2}')
free=$(free  | grep Mem | awk '{print $4}')

used_percentage=$(echo "100 - ($free / $total * 100)" | bc -l  | awk -F . '{print $1}')
echo $used_percentage

# 0-50 used -> good
# 51 - 70 - orange
# >70 - red