import { LightningElement } from "lwc";
import ACCOUNT_OBJ from "@salesforce/schema/Account";
import ACCOUNT_NAME from "@salesforce/schema/Account.Name";
import ACCOUNT_TYPE from "@salesforce/schema/Account.Type";
import ACCOUNT_NUM from "@salesforce/schema/Account.AccountNumber";
import { ShowToastEvent } from "lightning/platformShowToastEvent";

export default class Practise extends LightningElement {
  objectName = ACCOUNT_OBJ;
  fieldList = [ACCOUNT_NAME, ACCOUNT_NUM, ACCOUNT_TYPE];
  onSuccessHandler(event) {
    console.log(event.detail.id);
    const toast = new ShowToastEvent({
      title: "Obj Created",
      message: "Record Id: " + event.detail.id
    });

    this.dispatchEvent(toast);
  }
}
