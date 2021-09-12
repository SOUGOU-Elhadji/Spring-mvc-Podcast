<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

	<br>
	<div class="container col-md-5">
		<div class="card shadow p-3 mb-5 bg-body rounded">
			<div class="card-body">
				
				<form action="/add-podcast" method="post">
		
				<c:if test="${podcast != null}">
					<input type="hidden" name="id" value="<c:out value='${podcast.id}' />" />
				</c:if>
			
				<fieldset class="form-group">
					<!--label>User</label--> <input type="hidden"
						value="<c:out value='${podcast.user }' />" class="form-control"
						name="user" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Author</label> <input type="text"
						value="<c:out value='${podcast.author }' />" class="form-control"
						name="author">
				</fieldset>
				<fieldset class="form-group">
					<label>Title</label> <input type="text"
						value="<c:out value='${podcast.title }' />" class="form-control"
						name="title">
				</fieldset>
				<fieldset class="form-group">
					<label>Description</label> <input type="text"
						value="<c:out value='${podcast.description }' />" class="form-control"
						name="description">
				</fieldset>
				<fieldset class="form-group">
					<label>Picture</label> <input type="file"
						value="<c:out value='${podcast.picture }' />" class="form-control"
						name="picture">
				</fieldset>
				
				<button type="submit" class="btn btn-info">Update</button>
				</form>
			</div>
		</div>
	</div>


<%@ include file="../common/footer.jspf" %>	
