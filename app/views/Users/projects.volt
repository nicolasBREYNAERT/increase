<legend>Mes projets [{{user.getIdentite()}}]</legend>
<table class='table table-striped'>
	{% for project in projects %}
		<tr>
				<td>{{project.toString()}}</td>
				<td class="col-md-7">
					{{q[project.getId()]}}
				</td>
				<td class="td-center">Reste {{project.getJourRestant()}} jours</td>
				<td class="td-center"><a class="btn btn-primary" href='{{url.get(baseHref~"/project/"~project.getId())}}'>Ouvrir...</a></td>
			</tr>
	{% endfor %}
</table>
