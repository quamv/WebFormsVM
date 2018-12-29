using System;
using System.Web.UI;
using WebFormsVM;

namespace WebFormsVM {
    public partial class WebForm1 : PageBase {
        protected VM vm = new VM() {
            VmName = "Main ViewModel",
            PrimaryItem = new Item() { ItemName = "Slice of cheese pizza", UnitPrice = 2.99M },
            Score = DateTime.Now.Millisecond,
        };

        protected override void ControlsToVm() {
            vm.VmName = TxtVmName.Text;
            vm.Score = int.Parse(TxtScore.Text);
        }

        protected void SubmitClick(object sender, EventArgs e) {
            vm.Score++;
        }
    }
}