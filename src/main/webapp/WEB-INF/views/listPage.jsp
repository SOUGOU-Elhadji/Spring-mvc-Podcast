<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>


	<!-- br>

	<div class="row">
		

		<div class="container">
			<h3 class="text-center">LIST OF PATIENTS</h3>
			<hr>
			<div class="container text-right">
				<a href="/add-patient" class="btn btn-success" >ADD TODO</a>
			</div>
			<br>
			<table class="table table-hover shadow p-3 mb-5 bg-body rounded">
			<caption><spring:message code="patient.caption" /></caption>
				<thead>
					<tr>
						<th>Id</th>
						<th>User</th>
						<th>First name</th>
						<th>Last name</th>
						<th>Address</th>
						<th>Number</th>
						<th>Vaccine type</th>
						<th>Target Date</th>
						<th>Dose number</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					
					<c:forEach items="${patients}" var="patient">
						<tr>
							<td><c:out value="${patient.id }" /></td>
							<td><c:out value="${patient.user }" /></td>
							<td><c:out value="${patient.firstName }" /></td>
							<td><c:out value="${patient.lastName }" /></td>
							<td><c:out value="${patient.address }" /></td>
							<td><c:out value="${patient.number }" /></td>
							<td><c:out value="${patient.vaccineType }" /></td>
							<td><c:out value="${patient.date }" /></td>
							<td><c:out value="${patient.numberDose }" /></td>
							
							<td><a href="update-patient?id=<c:out value='${patient.id}' />" class="btn btn-warning">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
							<a href="delete-patient?id=<c:out value='${patient.id}' />" class="btn btn-danger">Delete</a></td>
						</tr>
					</c:forEach>
				
				</tbody>

			</table>
		</div>
	</div-->
<style>
@import url("https://fonts.googleapis.com/css2?family=Baloo+2&display=swap");

$main-blue: #0076bd !default;
$main-blue-rgb-015: rgba(0, 118, 189, 0.1) !default;

/* This pen */
body {
	font-family: "Baloo 2", cursive;
	font-size: 16px;
	color: #ffffff;
	text-rendering: optimizeLegibility;
	font-weight: initial;
}

.dark {
	background: #110f16;
}


.light {
	background: #f3f5f7;
}

a, a:hover {
	text-decoration: none;
	transition: color 0.3s ease-in-out;
}

#pageHeaderTitle {
	margin: 2rem 0;
	text-transform: uppercase;
	text-align: center;
	font-size: 1.5rem;
}

/* Cards */
.postcard {
  flex-wrap: wrap;
  display: flex;
  
  box-shadow: 0 4px 21px -12px rgba(0, 0, 0, 0.66);
  border-radius: 10px;
  margin: 0 0 2rem 0;
  overflow: hidden;
  position: relative;
  color: #ffffff;

	&.dark {
		background-color: #18151f;
	}
	&.light {
		background-color: #e1e5ea;
	}
	
	.t-dark {
		color: #18151f;
	}
	
  a {
    color: inherit;
  }
	
	h1,	.h1 {
		margin-bottom: 0.5rem;
		font-weight: 100;
		line-height: 1.2;
	}
	
	.small {
		font-size: 80%;
	}

  .postcard__title {
    font-size: 1.75rem;
  }

  .postcard__img {
    max-height: 20px;
    width: 20%;
    object-fit: cover;
    position: relative;
  }

  .postcard__img_link {
    display: contents;
  }

  .postcard__bar {
    width: 20px;
    height: 10px;
    margin: 10px 0;
    border-radius: 5px;
    background-color: #424242;
    transition: width 0.2s ease;
  }

  .postcard__text {
    padding: 1.5rem;
    position: relative;
    display: flex;
    flex-direction: column;
  }

  .postcard__preview-txt {
    overflow: hidden;
    text-overflow: ellipsis;
    text-align: justify;
    height: 50%;
  }

  .postcard__tagbox {
    display: flex;
    flex-flow: row wrap;
    font-size: 14px;
    margin: 20px 0 0 0;
		padding: 0;
    justify-content: center;

    .tag__item {
      display: inline-block;
      background: rgba(83, 83, 83, 0.4);
      border-radius: 3px;
      padding: 2.5px 10px;
      margin: 0 5px 5px 0;
      cursor: default;
      user-select: none;
      transition: background-color 0.3s;

      &:hover {
        background: rgba(83, 83, 83, 0.8);
      }
    }
  }

  &:before {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-image: linear-gradient(-70deg, #424242, transparent 50%);
    opacity: 1;
    border-radius: 10px;
  }

  &:hover .postcard__bar {
    width: 50px;
  }
}

@media screen and (min-width: 769px) {
  .postcard {
    flex-wrap: inherit;

    .postcard__title {
      font-size: 1rem;
    }

    .postcard__tagbox {
      justify-content: start;
    }

    .postcard__img {
      max-width: 50px;
      max-height: 50%;
      transition: transform 0.3s ease;
    }

    .postcard__text {
      padding: 3rem;
      width: 50%;
    }

    .media.postcard__text:before {
      content: "";
      position: absolute;
      display: block;
      background: #18151f;
      top: -20%;
      height: 20%;
      width: 15px;
    }

    &:hover .postcard__img {
      transform: scale(1.1);
    }

    &:nth-child(2n+1) {
      flex-direction: row;
    }

    &:nth-child(2n+0) {
      flex-direction: row-reverse;
    }

    &:nth-child(2n+1) .postcard__text::before {
      left: -12px !important;
      transform: rotate(4deg);
    }

    &:nth-child(2n+0) .postcard__text::before {
      right: -12px !important;
      transform: rotate(-4deg);
    }
  }
}
@media screen and (min-width: 1024px){
		.postcard__text {
      padding: 2rem 3.5rem;
    }
		
		.postcard__text:before {
      content: "";
      position: absolute;
      display: block;
      
      top: -20%;
      height: 130%;
      width: 55px;
    }
	
  .postcard.dark {
		.postcard__text:before {
			background: #18151f;
		}
  }
	.postcard.light {
		.postcard__text:before {
			background: #e1e5ea;
		}
  }
}

/* COLORS */


.postcard .postcard__tagbox .blue.play:hover {
	background: $main-blue;
}
.blue .postcard__title:hover {
	color: $main-blue;
}
.blue .postcard__bar {
	background-color: $main-blue;
}
.blue::before {
	background-image: linear-gradient(-30deg, $main-blue-rgb-015, transparent 50%);
}
.blue:nth-child(2n)::before {
	background-image: linear-gradient(30deg, $main-blue-rgb-015, transparent 50%);
}



@media screen and (min-width: 769px) {

	.blue::before {
		background-image: linear-gradient(
			-80deg,
			$main-blue-rgb-015,
			transparent 50%
		);
	}
	.blue:nth-child(2n)::before {
		background-image: linear-gradient(80deg, $main-blue-rgb-015, transparent 50%);
	}

}
ul {
list-style:none;

}
.mp3 {
    max-height: 30px;
    width: 30%;
    object-fit: cover;
    margin-top: 12%;
  }

</style>


			
<section class="white">
	<div class="container py-4">
		<h4 class="h1 text-center" id="pageHeaderTitle">LIST OF PODCASTS</h4>
		<hr>
		<div class="container text-right">
			<a href="/add-podcast" class="btn btn-info" >ADD PODCAST</a>
		</div>
		<br>
	<c:forEach items="${podcasts}" var="podcast">
		<article class="postcard dark blue">
			<a class="postcard__img_link" href="#">
				<img class="postcard__img" src="<c:out value="${podcast.picture }" />" alt="Image Title" />
			</a>
			<div class="postcard__text">
				<h1 class="postcard__title blue">TITLE : <c:out value="${podcast.title }" /></h1>
				<div class="postcard__subtitle small">
					<time datetime="2020-05-25 12:00:00">
						<i class="fas fa-calendar-alt mr-2"></i>DATE : <c:out value="${podcast.targetDate }" />
					</time>
				</div>
				<div class="postcard__bar"></div>
				<div class="postcard__preview-txt">DESCRIPTION : <br><c:out value="${podcast.description }" /><br>Author : <c:out value="${podcast.author }" /></div>
				<br>
				<ul class="postcard__tagbox">
					<li class="tag__item">
						<a href="podcast-update?id=<c:out value='${podcast.id}' />"><i class="btn btn-info">Edit</i></a>
						&nbsp;
						<a href="delete-podcast?id=<c:out value='${podcast.id}' />"><i class="btn btn-danger">Delete</i></a>
					</li>
				</ul>
			</div>
			<audio class="mp3" controls margin-top="15px">
			  <source src="../audio.mpeg" type="audio/mpeg">
			</audio>
		</article>
	
		</c:forEach>	
	</div>
</section>
 
<%@ include file="../common/footer.jspf" %>	


