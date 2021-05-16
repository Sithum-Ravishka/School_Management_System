$(document).on('click','#btn',function(){
let pdf = new jsPDF();
let section=$('body');
let page= function() {
    pdf.save('ResultSheet.pdf');
   
};
pdf.addHTML(section,page);
})