**Script to parse exported secrets and conver them to csv**

**You should have installed nodejs on your machine or you can execute it in browser debug console**

### How to use:

1. Export users from Mikrotik by executing next command in your terminal:
`ppp secret export file=users.rsc`

2. Download `users.rsc` to local machine, open it with any text editor, copy all lines after `/ppp secret`

3. Insert these lines inside index.js file, save it
4. Oopen terminal in current folder and execute:

`node index.js >> file.csv`

Now you can import that csv file to word, excel or anywhere you want
