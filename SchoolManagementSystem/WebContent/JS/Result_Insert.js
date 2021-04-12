/**

 * 
 */
function addNumbers()
                {
                        var SinhalaMarks = parseInt(document.getElementById("SinhalaMarks").value);                       
						var BuddhismMarks = parseInt(document.getElementById("BuddhismMarks").value);
						var MathsMarks = parseInt(document.getElementById("MathsMarks").value);
						var ScinceMarks = parseInt(document.getElementById("ScinceMarks").value);
						var EnglishMarks = parseInt(document.getElementById("EnglishMarks").value);
						var HistoryMarks = parseInt(document.getElementById("HistoryMarks").value);
						var CitizenEducationMarks = parseInt(document.getElementById("CitizenEducationMarks").value);
						var TamilMarks = parseInt(document.getElementById("TamilMarks").value);
						var GeographyMarks = parseInt(document.getElementById("GeographyMarks").value);
						var HealthandphysicaleducationMarks = parseInt(document.getElementById("HealthandphysicaleducationMarks").value);
						var HomeEconomicsMarks = parseInt(document.getElementById("HomeEconomicsMarks").value);
						var AestheticsubjectsMarks = parseInt(document.getElementById("AestheticsubjectsMarks").value);

                        var totalMark = document.getElementById("totalMark");
						var average=document.getElementById("average");
                        totalMark.value = SinhalaMarks + EnglishMarks + BuddhismMarks + MathsMarks + ScinceMarks + HistoryMarks + CitizenEducationMarks + TamilMarks + GeographyMarks + HealthandphysicaleducationMarks + HomeEconomicsMarks + AestheticsubjectsMarks;
						average.value = (SinhalaMarks + EnglishMarks + BuddhismMarks + MathsMarks + ScinceMarks + HistoryMarks + CitizenEducationMarks + TamilMarks + GeographyMarks + HealthandphysicaleducationMarks + HomeEconomicsMarks + AestheticsubjectsMarks) / 12;
                }