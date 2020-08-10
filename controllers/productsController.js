const fs = require('fs');
const path = require('path');
const db = require('../database/models');

const productsFilePath = path.join(__dirname, '../data/productsDataBase.json');

const saveProducts = (array => fs.writeFileSync(productsFilePath, JSON.stringify(array)));

const toThousand = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
const formatPrice = (price,discount) => toThousand(Math.round(price*(1-(discount/100))));

function obtenerProductos(){
	db.Productos.findAll()
	.then(function(productos){
	return productos
	})
};

function obtenerProducto(){
	db.Productos.findByPK()
	.then(function(producto){
	return producto
	})
};

const controller = {
	// Mostrar Productos
	root: (req, res) => {
		res.render("products", {products:obtenerProductos(), toThousand, formatPrice})
	},

	// Detalle
	detail: (req,res) => {
		res.render("detail",{product: obtenerProducto(), toThousand, formatPrice});
		
    },

	// Crear
	create: (req, res) => {
		res.render("product-create-form");
	},

	// Crear -  Stores
	store: (req, res) => {
		let lastId = 0;
		products.forEach(producto => {
			if(producto.id > lastId) {
				lastId = producto.id;
			}
		});
		const productToCreate = {
			id: lastId+1,
			name: req.body.name,
			price: parseFloat(req.body.price),
			discount: parseFloat(req.body.discount),
			category: req.body.category,
			description: req.body.description,
			image: "image"
		};
		products.push(productToCreate);
		saveProducts(products);
		res.send("Agregado!")
	},

	// Editar 
	edit: (req, res) => {
		const productToEdit = products.find(item => item.id == req.params.productId);
		res.render("product-edit-form", {productToEdit});
	},
	// Actualizar
	update: (req, res) => {
		let productEdited = null;
		products.forEach(product => {
			if(product.id == req.params.productId) {
				product.name = req.body.name;
				product.price = parseFloat(req.body.price);
				product.discount = parseFloat(req.body.discount);
				product.category = req.body.category;
				product.description = req.body.description;
				productEdited = product;
			}
		});
		saveProducts(products);
		res.send("Editado!");
	},

	// Borrar, a travez de BD
	destroy : (req, res) => {
		const productsNew = products.filter(product => product.id != req.params.productId);
		saveProducts(productsNew);
		res.send("Eliminado!");
	}
};

module.exports = controller;