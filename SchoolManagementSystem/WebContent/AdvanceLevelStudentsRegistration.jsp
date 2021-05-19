<!doctype html>
<html>
<head>
<meta charset="utf-8">
	<title>Untitled Document</title>
			    <link rel = "stylesheet" type = "text/css" href = "CSS/viewAL.css">
</head>
<body>
<div class= "header">
<img src="images/Picture1.png" class="logo" width="100px" height="120px"/>
<h1>Viddyadarsha Maha Vidyalaya</h1>
</div>

<div class = "side-navbar">
<a href = "HomeStu.jsp">Student Profile</a>
<a href ="#">Class Information</a>
<a href ="View_Result.jsp">Exam Results</a>
<a href ="#">Attendance Marks</a>
<a href ="#">Fees Details</a>
<a href ="#">Staff Details</a>
<a href="parent.jsp">Parent Details</a>
<a href ="#">Library Information</a>
</div>
<div class="Wrapper">
	<div class = "wrapper1"> 
		<form id="form1" name="form1" method="post" action="advanceLevelUploadServlet">
		<div id = "TimeTableID">
		<h3>A/L Student Registration</h3>
		  <table width="1158">
		    <tbody>
		      <tr>
		        <td width="574"><fieldset>
		          <legend>Personal details</legend>
		          <h3>Student Name</h3>
		          <table width="569" align="center">
		            <tbody>
		              <tr>
		                <td width="189"><p>
		                  <label for="textfield" class="lable">First<br>
		                  </label>
		                  <input type="text" name="first" id="fnm">
		                </p></td>
		                <td width="189"><p>
		                  <label for="textfield2" class="lable">Middle</label>
		                  <input type="text" name="middle" id="fnm">
		                </p></td>
		                <td width="175"><p>
		                  <label for="textfield3" class="lable">Last<br>
		                  </label>
		                    <input type="text" name="last" id="fnm">
		                  </p></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield4" class="lable">Date</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield5" class="lable"></label>
		                  <input type="date" name="date" id="fnm">
		                </p></td>
		                <td><p>&nbsp;</p></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield6" class="lable">Gender</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield7"></label>
		                  <select   class="fnm" name="gender" id="select" required="required">
														  <option selected = "selected">Select(Gender)</option>
														  <option value="Male">Male</option>
									  					  <option value="Female">Female</option>
		                    </select>
		                </p></td>
		                <td>&nbsp;</td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield8" class="lable">O/L Index</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield9"></label>
		                  <input type="text" name="olindex" id="fnm">
		                </p></td>
		                <td>&nbsp;</td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield10" class="lable">O/L Year</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield11"></label>
		                  <input type="text" name="olyear" id="fnm">
		                </p></td>
		                <td>&nbsp;</td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield12" class="lable">A/L Year</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield13"></label>
		                  <input type="text" name="alyear" id="fnm">
		                </p></td>
		                <td>&nbsp;</td>
		              </tr>
		              <tr>
		                <td><label for="textfield14" class="lable">Expected A/L Stream</label></td>
		                <td><p>
		                  <label for="textfield15"></label>
		                   <select   class="fnm" name="exstream" id="select" required="required">
														  <option selected = "selected">Select(Stream)</option>
														  <option value="Male">ART</option>
									  					  <option value="Female">COMMERCE</option>
							  							  <option value="Female">MATHS</option>
							  							  <option value="Female">BIO</option>
							                              <option value="Female">TECH</option>
		                    </select>
		                <td>&nbsp;</td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield16"></label>
		                </p></td>
		                <td><p>
		                  <label for="textfield17"></label>
		                </p></td>
		                <td>&nbsp;</td>
		              </tr>
		            </tbody>
		          </table>
		        </fieldset></td>
		        <td width="572"><fieldset>
		          <legend>O/L results</legend>
		          <table width="513" align="center">
		            <tbody>
		              <tr>
		                <td width="250"><h3>Subject</h3></td>
		                <td width="251"><h3>Results</h3></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield18" class="lable">1. Language</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield19"></label>
		                  <select   class="fnm" name="results1" id="select" required="required">
														  <option selected = "selected">Select</option>
														  <option value="a">A</option>
									  					  <option value="b">B</option>
							  							  <option value="c">C</option>
							  							  <option value="s">S</option>
							                              <option value="f">F</option>
									                  </select>
		                </p></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield20" class="lable">2. English</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield21"></label>
		                  <select   class="fnm" name="results2" id="select" required="required">
														  <option selected = "selected">Select</option>
														  <option value="a">A</option>
									  					  <option value="b">B</option>
							  							  <option value="c">C</option>
							  							  <option value="s">S</option>
							                              <option value="f">F</option>
									                  </select>
		                </p></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield22" class="lable">3. Mathemathics</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield23"></label>
		                  <select   class="fnm" name="results3" id="select" required="required">
														  <option selected = "selected">Select</option>
														  <option value="a">A</option>
									  					  <option value="b">B</option>
							  							  <option value="c">C</option>
							  							  <option value="s">S</option>
							                              <option value="f">F</option>
									                  </select>
		                </p></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield24" class="lable">4. Historey</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield25"></label>
		                 <select   class="fnm" name="results4" id="select" required="required">
														  <option selected = "selected">Select</option>
														  <option value="a">A</option>
									  					  <option value="b">B</option>
							  							  <option value="c">C</option>
							  							  <option value="s">S</option>
							                              <option value="f">F</option>
									                  </select>
		                </p></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield26" class="lable">5. Science</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield32"></label>
		                  <select   class="fnm" name="results5" id="select" required="required">
														  <option selected = "selected">Select</option>
														  <option value="a">A</option>
									  					  <option value="b">B</option>
							  							  <option value="c">C</option>
							  							  <option value="s">S</option>
							                              <option value="f">F</option>
									                  </select>
		                </p></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield28" class="lable">6. Buddhism</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield33"></label>
						<select   class="fnm" name="results6" id="select" required="required">
															  <option selected = "selected">Select</option>
															  <option value="a">A</option>
															  <option value="b">B</option>
															  <option value="c">C</option>
															  <option value="s">S</option>
															  <option value="f">F</option>
														  </select>
		                </p></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield29" class="lable">7. Subject 01</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield34"></label>
		                  <select   class="fnm" name="results7" id="select" required="required">
														  <option selected = "selected">Select</option>
														  <option value="a">A</option>
									  					  <option value="b">B</option>
							  							  <option value="c">C</option>
							  							  <option value="s">S</option>
							                              <option value="f">F</option>
									                  </select>
		                </p></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield30" class="lable">8. Subject 02</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield35" ></label>
		          <select   class="fnm" name="results8" id="select" required="required">
														  <option selected = "selected">Select</option>
														  <option value="a">A</option>
									  					  <option value="b">B</option>
							  							  <option value="c">C</option>
							  							  <option value="s">S</option>
							                              <option value="f">F</option>
									                  </select>
		                </p></td>
		              </tr>
		              <tr>
		                <td><p>
		                  <label for="textfield31" class="lable">9. Subject 03</label>
		                </p></td>
		                <td><p>
		                  <label for="textfield36"></label>
		                  <select   class="fnm" name="results9" id="select" required="required">
														  <option selected = "selected">Select</option>
														  <option value="a">A</option>
									  					  <option value="b">B</option>
							  							  <option value="c">C</option>
							  							  <option value="s">S</option>
							                              <option value="f">F</option>
									                  </select>
		                </p></td>
		              </tr>
		            </tbody>
		  </table>
		        </fieldset></td>
		      </tr>
		    </tbody>
		  </table>
		
		  <table width="1154">
		    <tbody>
		      <tr>
		        <td width="571"><div class="fieldset3">
		          <fieldset>
		            <legend>Contact details</legend>
		            <table width="564" align="right">
		              <tbody>
		                <tr>
		                  <td width="305"><h3>Address</h3></td>
		                  <td width="247">&nbsp;</td>
	                    </tr>
		                <tr>
		                  <td><p>
		                    <label for="textfield52" class="lable">No/Street<br>
		                      </label>
		                    <input type="text" name="nostreet" id="fnm">
		                    </p></td>
		                  <td><p>
		                    <label for="textfield53" class="lable"> Email address<br>
		                      </label>
		                    <input type="text" name="email" id="fnm">
		                    </p></td>
	                    </tr>
		                <tr>
		                  <td><p>
		                    <label for="textfield54" class="lable">Street 2<br>
		                      </label>
		                    <input type="text" name="street2" id="fnm">
		                    </p></td>
		                  <td><p>
		                    <label for="textfield55" class="lable">Contact No 1<br>
		                      </label>
		                    <input type="text" name="c1" id="fnm">
		                    </p></td>
	                    </tr>
		                <tr>
		                  <td><p>
		                    <label for="textfield56" class="lable">City<br>
		                      </label>
		                    <input type="text" name="city" id="fnm">
		                    </p></td>
		                  <td><p>
		                    <label for="textfield57" class="lable">Contact No 2<br>
		                      </label>
		                    <input type="text" name="c2" id="fnm">
		                    </p></td>
	                    </tr>
		                <tr>
		                  <td><p>
		                    <label for="textfield58" class="lable">State/Province<br>
		                      </label>
		                    <input type="text" name="stpro" id="fnm">
		                    </p></td>
		                  <td><p></p></td>
	                    </tr>
		                <tr>
		                  <td><p>
		                    <label for="textfield59" class="lable">Postal code:<br>
		                      </label>
		                    <input type="text" name="pcode" id="fnm">
		                    </p></td>
	                    </tr>
	                  </tbody>
	                </table>
	              </fieldset>
	            </div></td>
		        <td width="571" align="center">
		          <table width="200" align="center">
		            <tbody>
		              <tr>
		                 <td><center><input type="submit" value="Submit"></center></td>
	                  </tr>
		              <tr>
		                <td>&nbsp;</td>
	                  </tr>
		              <tr>
		                 <td><center><input type="reset" value="Clear"></center></td>
	                  </tr>
	                </tbody>
	              </table>
	            <p>&nbsp;</p></td>
	          </tr>
	        </tbody>
	      </table>
		</div>
		</form>
	</div>
</div>
</html>
