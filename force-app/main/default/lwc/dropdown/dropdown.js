import { LightningElement } from "lwc";

export default class Dropdown extends LightningElement {
  isVisible = false;
  dropdownToggle() {
    this.isVisible = !this.isVisible;
  }

  get dropdownClass() {
    return this.isVisible
      ? "Overlay__StyledOverlay-sc-51280t-0 kFfiTK visible"
      : "Overlay__StyledOverlay-sc-51280t-0 kFfiTK hidden";
  }
}
