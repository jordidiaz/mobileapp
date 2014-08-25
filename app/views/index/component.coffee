module.exports = React.createClass
	render: ->
		{div, input, p} = React.DOM

		(div {}, [
			(p {}, "Hey there"),
			(input {type: "text"})
		])
