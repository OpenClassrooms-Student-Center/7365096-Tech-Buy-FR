import {Category} from "./category.model";

export class Product {
  public id: number|null;
  public name: string|null;
  public description: string|null;
  public shortDescription: string|null;
  public image: string|null;
  public category: Category|null;
  public reference: string|null;
  public price: number|null;
  public quantity: number = 0;

  public constructor({id = null, name = null, description = null, shortDescription = null, image = null, reference = null, price = null, category = null} = {}) {
    this.id = id;
    this.name = name;
    this.description = description;
    this.reference = reference;
    this.category = category;
    this.price = price;
    this.shortDescription = shortDescription;
    this.image = image;
  }
}
