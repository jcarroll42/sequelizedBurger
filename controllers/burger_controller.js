var express = require('express');
var router = express.Router();
var models = require('../models');

console.log(models);

router.get('/', function (req, res) {
	res.redirect('/burgers');
});

router.get('/burgers', function (req, res) {
	// models.selectAll(function (data) {
	// 	var hbsObject = { burger: data };
	// 	console.log(hbsObject);
	// 	res.render('index', hbsObject);
	// });

	models.Burger.findAll()
	.then(function(data){
		var hbsObject = { burger: data };
	 	console.log(hbsObject);
	 	res.render('index', hbsObject);
	});
});

router.post('/burgers/create', function (req, res) {
	models.Burger.create({
		burger_name: req.body.name
	})
	.then(function(){
		res.redirect('/burgers');
	});
});

router.put('/burger/updateOne/:id', function (req, res) {
	var condition = 'id = ' + req.params.id;

	console.log('condition', condition);

	models.Burger.update({
		devoured: true,
	}, {
			where: {
				id: req.params.id
			}
		}
	)
	.then(function(){
		res.redirect('/burgers');
	})

	// models.updateOne({ devoured: req.body.devoured }, condition, function () {
	// 	res.redirect('/burgers');
	// });
});

module.exports = router;