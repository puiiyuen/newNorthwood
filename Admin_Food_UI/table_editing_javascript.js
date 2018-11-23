var indexing = 1,
        table = document.getElementById("table");

function isEmptyField()
{
    var isEmpty = false,
            foodName = document.getElementById("foodName").value,
            day = document.getElementById("day").value;

    if (foodName === "") {
        alert("First Name Connot Be Empty");
        isEmpty = true;
    } else if (day === "") {
        alert("Last Name Connot Be Empty");
        isEmpty = true;
    }

    return isEmpty;
}

function addHtmlTableRow()
{
    if (!isEmptyField()) {
        var newRow = table.insertRow(table.length),
                cell1 = newRow.insertCell(0),
                cell2 = newRow.insertCell(1),
                foodName = document.getElementById("foodName").value,
                day = document.getElementById("day").value;

        cell1.innerHTML = foodName;
        cell2.innerHTML = day;
        selectedRowToInput();
    }
}

function selectedRowToInput()
{

    for (var i = 1; i < table.rows.length; i++)
    {
        table.rows[i].onclick = function ()
        {
            indexing = this.rowIndex;
            document.getElementById("foodName").value = this.cells[0].innerHTML;
            document.getElementById("day").value = this.cells[1].innerHTML;
        };
    }
}
selectedRowToInput();

function editHtmlTbleSelectedRow()
{
    var foodName = document.getElementById("foodName").value,
            day = document.getElementById("day").value;
    if (!isEmptyField()) {
        table.rows[indexing].cells[0].innerHTML = foodName;
        table.rows[indexing].cells[1].innerHTML = day;
    }
}

function removeSelectedRow()
{
    table.deleteRow(indexing);
    document.getElementById("foodName").value = "";
    document.getElementById("day").value = "";
}