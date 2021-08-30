var express = require('express');
var handlebars = require('express-handlebars');
const path = require('path');
var router = require('./router/app');
var cookieParser = require('cookie-parser');
var methodOverride = require('method-override');

var port = 2000;
var app = express();

app.use(express.urlencoded({
  extended: true
}));

app.use(methodOverride('_method'))

app.use(cookieParser('tung244'))

app.use(express.json());

app.use(express.static('public'))

//Temlate engine
app.engine('.hbs', handlebars({extname: '.hbs'}));
app.set('view engine', '.hbs');
app.set('views', path.join(__dirname, 'views'));

//use app.use()
router(app);

app.use(function(req, res) {
  res.status(404).send('Not Found')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})