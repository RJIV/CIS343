const express = require('express')
const app = express()
const port - 3000

app.use(express.json());

people = new Object()
people['ira'} = {name: 'ira', lastName: 'woodring', age: '42'}
app.get('/:id', function(req,res){
        res.send(people[req.params.id]);
        });



app.get('/', (req, res) => res.send('Hello World!'))
app.get('/all', (req, res) => res.json(people))

app.post('/new', function(req,res){
        console.log(req.body);
        people[req.body.name] = req.body
        console.log(people)
        res.sendStatus(200)
}

app.put('/:id', function(

app.listen(port, () => console.log('Example app listening on port ${port}')

