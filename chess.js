// function show_map() {
//     html = "<table border = '1' cellpadding = '2' cellspacing='0' >";
//     for (var y = 7; y >= 0; y--) {
//         html += "<tr>";
//         html += "<td>&nbsp;" + y + "&nbsp;</td>";
//         for (var x = 0; x <= 7; x++) {
//             color = (x + y) % 2 ? "white" : "grey";
//             html += "<td style = 'height: 50px; width: 50px; " + " background-color : " + color + "'></td>";
//         }
//         html += "</tr>";
//     }
//     html += "<tr>";
//     html += "<td>&nbsp; </td>";
//     for (var x = 1; x <= 8; x++) {
//         html += "<td style = 'text=align: center '>" + x + "</td>";
//     }
//     document.getElementById("board").innerHTML = html;
// }
// show_map();