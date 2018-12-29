using System;

namespace WebFormsVM {
    public abstract class PageBase : System.Web.UI.Page {
        protected virtual void Page_Load(object sender, EventArgs e) {
            if (!Page.IsPostBack)
                Page.DataBind();
            else
                ControlsToVm();
        }

        protected void Page_LoadComplete(object sender, EventArgs e) { Page.DataBind(); }
        protected abstract void ControlsToVm();
    }
}