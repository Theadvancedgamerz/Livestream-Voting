--Please Fill In The Settings Below

url = "http://example.com/poll_data.txt" --Web Address for your poll_data.txt DO NOT REMOVE HTTP://
Q1side = "right" --Side to output redstone if Q1 wins
Q2side = "left"  --Side to output redstone if Q2 wins
winCount = 5 --How many votes are needed to win?

--Dont Touch Below Here Unless You Know What You Are Doing!
web = http.get(url) --Gets Data From poll_data.txt
q1 = tonumber(web.readLine()) --Reads Data Line One
q2 = tonumber(web.readLine()) --Reads Data Line Two
print ("Votes For Answer One: "..q1) --Prints Vote One Stats
print ("Votes For Answer Two: "..q2) --Prints Vote Two Stats
if q1 > winCount then
 print("Question 1 Wins")
 rs.setOutput(Q1side, true)
end
if q2 > winCount then
 print("Question 2 Wins")
 rs.setOutput(Q2side, true)
end
sleep(5)
os.reboot()
