#!/bin/bash

# Script Name: OracleRemoveBlock
# Description: This script is your one-stop solution to clearing all the iptables chains and rules,
#              setting a fresh slate for your firewall configurations. The magic begins now!

echo "Welcome to the OracleRemoveBlock script! Let's clear the path for a cleaner, block-free firewall setup!"
echo "Hold onto your hat, we're diving into the iptables abyss!"
echo "Made By https://github.com/Mody404/"


# Let's first set the default policies to ACCEPT to ensure a smooth transition as we clear the blockages
echo "Step 1: Setting default policies to ACCEPT...and done!"
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

# Time to flush out all the iptables chains and rules. This is where the real magic happens!
echo "Step 2: Flushing all iptables Chains and Firewall rules...Voila!"
iptables -F

# Deleting all iptables chains is like a breath of fresh air for your system!
echo "Step 3: Deleting all iptables Chains...and poof, they're gone!"
iptables -X

# Resetting all counters so we're starting with a clean slate
echo "Step 4: Flushing all counters...and we're back to zero!"
iptables -Z

# Now, let's tackle the nat, mangle, and raw tables, flushing and deleting chains for a full cleanse
echo "Step 5: Flushing and deleting all nat and mangle, and raw chains...Ahh, feels good!"
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -t raw -F
iptables -t raw -X

echo "We're almost there! Just one more step to complete our journey to a block-free system!"

# And last but not the least, let's set the default policies back to ACCEPT to wrap things up nicely
echo "Step 6: Setting default policies back to ACCEPT...And that's a wrap!"
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

echo "Congratulations! Your iptables are now as clear as the Oracle's vision! Thank you for using OracleRemoveBlock!"
echo "Remember, with great power, comes great responsibility. Use your newfound firewall freedom wisely!"
echo "Made By https://github.com/Mody404/ "

