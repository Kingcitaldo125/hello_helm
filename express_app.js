const express = require('express')
const app = express()
const port = 8080

let world_value = process.env['WORLD_VALUE']

var xhtml = `
<!DOCTYPE html>

<head></head>

<body>
    <h1>
        Hello, ${world_value}!
    </h1>
</body>

</html>
`

app.get('/', (req, res) => {
    res.send(xhtml)
})

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})
