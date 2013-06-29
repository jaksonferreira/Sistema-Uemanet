<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Agendamentos Uemanet</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #000;
				border: .2em solid #000;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #000;
				-webkit-box-shadow: 0px 0px 1.25em #000;
				box-shadow: 0px 0px 1.25em #000;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		
	</style>
</head>
<body>
	<div id="pageBody">
		<table style="border:0px;">
			<tbody>
				<tr>
					<td><a href="aluno"><img
src="${resource(dir:'images',file:'Aluno.png')}" border="0"
/></a></td>
					<td><a href="funcionario"><img
src="${resource(dir:'images',file:'Funcionario.png')}" border="0"
/></a></td>
					<td><a href="tutor"><img
src="${resource(dir:'images',file:'Tutor.png')}" border="0"
/></a></td>
					<td><a href="curso"><img
src="${resource(dir:'images',file:'Cursos.png')}" border="0"
/></a></td>
					<td><a href="compromisso"><img
src="${resource(dir:'images',file:'Agenda.png')}" border="0"
/></a></td>
				</tr>
			</tbody>
		</table>
	</div>
		</body>
</html>