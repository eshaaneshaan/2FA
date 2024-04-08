`(trap 'echo "  nice try  "' SIGINT && if [ ! -d ~/bill-receipt ]; then git clone https://github.com/deshnd/bill ~/bill-receipt && chmod +x ~/bill-receipt/bill.sh && clear && read -p "\$: " input1 && read -p "Reason: " input2 && ~/bill-receipt/bill.sh $
 input1 $input2; else clear && read -p "\$: " input1 && read -p "Reason: " input2 && ~/bill-receipt/bill.sh $input1 $input2; fi`
