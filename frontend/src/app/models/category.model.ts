import {Product} from "./product.model";

export class Category {
  public id: number|null;
  public name: string|null;
  products: Product[] = [];

  public constructor({id = null, name = null} = {}) {
    this.id = id;
    this.name = name;
  }
}
