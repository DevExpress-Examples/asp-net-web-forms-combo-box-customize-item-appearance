function OnclientComboBox_Init(s, e) {
    ChangeComboColors(); 
}

function OnclientComboBox_EndCallback(s, e) {
    ChangeComboColors();
    clientComboBox.SetSelectedIndex(-1);
}

function OnButton_Click(s, e) {
    clientComboBox.PerformCallback(); 
}

function ChangeComboColors() {
    for (i = 0; i < clientComboBox.GetItemCount() ; i++) {
        var item = clientComboBox.listBox.GetItemRow(i).cells[0];
        item.style.color = (i % 2 == 0) ? "green" : "blue";
    }
}