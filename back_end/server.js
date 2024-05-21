const express = require('express')
const app = express()
const port = 3000
app.get('/', (req, res) => {
 res.send('Hello World!')
})
app.listen(port, () => {
 console.log(`Server running at http://localhost:${port}`)
})
const records = [

	 {
			"Surf Break": "Reef Break",
			"Photos": "https://dl.airtable.com/ZuXJZ2NnTF40kCdBfTld_thomas-ashlock-64485-unsplash.jpg",
			"Address": "Pipeline, Oahu, Hawaii"
		},
		{
			"Surf Break": "Point Break",
			"Photos": "https://dl.airtable.com/e3QoP3cFSyykZJOvWGIy_cesar-couto-477018-unsplash%20(1).jpg",
			"Address": "Supertubes, Jeffreys Bay, South Africa"
		}
	]


app.get('/api/records', (req, res) => {
 res.json(records)
})
