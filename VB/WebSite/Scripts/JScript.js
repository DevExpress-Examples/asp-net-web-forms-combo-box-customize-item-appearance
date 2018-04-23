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
    for (i = 0; i < clientComboBox.GetItemCount(); i++) {
        var item2;
        if (ASPxClientUtils.chrome)
            item2 = clientComboBox.listBox.GetItemElement(i);
        else
            item2 = clientComboBox.listBox.GetItemElement(i).firstElementChild;
        item2.style.color = (i % 2 == 0) ? "green" : "blue";
    }
}