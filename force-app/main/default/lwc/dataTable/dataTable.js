import { LightningElement, track } from "lwc";

/*
 *
 */

export default class DataTable extends LightningElement {
  @track headers = [
    {
      id: "1",
      label: "",
      style: "width: 5%;",
      lineNumber: true
    },
    {
      id: "2",
      label: "Title",
      style: "width: 55%;",
      lineNumber: false
    },
    {
      id: "3",
      label: "Assignees",
      style: "width: 20%;",
      lineNumber: false
    },
    {
      id: "4",
      label: "Status",
      style: "width: 20%;",
      lineNumber: false
    }
  ];
  widths = [5, 55, 20, 20];
  data = [
    {
      id: "1",
      label: {
        value:
          "Complete VALIDATION RULES by adding support to VALIDATION_FORMULA and VALIDATION_ERROR",
        meta: { style: "width: 55%;" }
      },
      assignees: {
        value: "Saicharan,Sreshta",
        meta: { style: "width: 20%;" }
      },
      status: {
        value: "In Progress",
        meta: { style: "width: 20%;" }
      }
    },
    {
      id: "2",
      label: {
        value:
          "Complete VALIDATION RULES by adding support to VALIDATION_FORMULA and VALIDATION_ERROR",
        meta: { style: "width: 55%;" }
      },
      assignees: {
        value: "Saicharan",
        meta: { style: "width: 20%;" }
      },
      status: {
        value: "Done",
        meta: { style: "width: 20%;" }
      }
    },
    {
      id: "3",
      label: {
        value:
          "Complete VALIDATION RULES by adding support to VALIDATION_FORMULA and VALIDATION_ERROR",
        meta: { style: "width: 55%;" }
      },
      assignees: {
        value: "Saicharan",
        meta: { style: "width: 20%;" }
      },
      status: {
        value: "Done",
        meta: { style: "width: 20%;" }
      }
    },
    {
      id: "4",
      label: {
        value:
          "Complete VALIDATION RULES by adding support to VALIDATION_FORMULA and VALIDATION_ERROR",
        meta: { style: "width: 55%;" }
      },
      assignees: {
        value: "Saicharan",
        meta: { style: "width: 20%;" }
      },
      status: {
        value: "Done",
        meta: { style: "width: 20%;" }
      }
    }
  ];
  isResizing = false;
  isFirstRender = false;
  tableWidth;
  selectedFieldId;
  startX;
  renderedCallback() {
    if (!this.isFirstRender) {
      const table = this.template.querySelector(".table-wrapper-in");
      if (table) {
        this.tableWidth = table.offsetWidth;
      }
      console.log("TableWidth init", this.tableWidth);
    }
    this.isFirstRender = true;
  }
  connectedCallback() {
    window.addEventListener("resize", this.handleResize.bind(this));
  }

  disconnectedCallback() {
    window.removeEventListener("resize", this.handleResize);
  }
  handleResize(event) {
    const table = this.template.querySelector(".table-wrapper-in");
    this.tableWidth = table.offsetWidth;
    console.log("tableWidth: ", this.tableWidth);
  }

  handleResizeStart(event) {
    this.isResizing = true;
    console.log("Event ", event.clientX);
    console.log("Data Id:", event.target.dataset.id);
    this.selectedFieldId = event.target.dataset.id - 1;
    this.startX = event.clientX;
    window.addEventListener("mousemove", this.handleResizeMove.bind(this));
    window.addEventListener("mouseup", this.handleResizeEnd.bind(this));
  }

  get tableWrapperStyle() {
    const temp = "width: " + this.tableWidth + "px;";
    return temp;
  }

  handleResizeMove(event) {
    if (!this.isResizing) {
      return;
    }
    let difference = (event.clientX - this.startX) / 30;
    difference = Math.round(difference);
    console.log("difference%: ", difference);
    const max = this.headers.length - 1;
    const currIndex = this.selectedFieldId;
    const nxtIndex = this.selectedFieldId + 1;
    if (currIndex < max) {
      if (difference < 0) {
        console.log("In less than zero");
        if (this.tableWidth + difference > 0) {
          this.tableWidth += difference;
        }
      } else {
        console.log("In greater than zero");
        this.tableWidth += difference;
      }
    }
  }
  handleResizeEnd(event) {
    this.isResizing = false;
    window.removeEventListener("mousemove", this.handleResizeMove);
    window.removeEventListener("mouseup", this.handleResizeEnd);
  }
}
