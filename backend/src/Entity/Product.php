<?php

namespace App\Entity;

use App\Repository\ProductRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

#[ORM\Entity(repositoryClass: ProductRepository::class)]
class Product
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    #[Groups(['get_category', 'get_products', 'get_product'])]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    #[Groups(['get_category', 'get_products', 'get_product'])]
    private ?string $name = null;

    #[ORM\ManyToOne(inversedBy: 'products')]
    #[ORM\JoinColumn(nullable: false)]
    #[Groups(['get_products', 'get_product'])]
    private ?Category $category = null;

    #[ORM\Column(length: 255)]
    #[Groups(['get_category', 'get_products', 'get_product'])]
    private ?string $reference = null;

    #[ORM\Column]
    #[Groups(['get_category', 'get_products', 'get_product'])]
    private ?float $price = null;

    #[ORM\Column(type: Types::TEXT)]
    #[Groups(['get_category', 'get_product'])]
    private ?string $description = null;

    #[ORM\Column(length: 255)]
    #[Groups(['get_category', 'get_products', 'get_product'])]
    private ?string $image = null;

    #[ORM\Column(length: 255)]
    #[Groups(['get_category', 'get_products', 'get_product'])]
    private ?string $shortDescription = null;

    #[ORM\Column]
    private ?bool $best = null;

    #[ORM\Column]
    private ?bool $suggested = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }

    public function getReference(): ?string
    {
        return $this->reference;
    }

    public function setReference(string $reference): self
    {
        $this->reference = $reference;

        return $this;
    }

    public function getPrice(): ?float
    {
        return $this->price;
    }

    public function setPrice(float $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getShortDescription(): ?string
    {
        return $this->shortDescription;
    }

    public function setShortDescription(string $shortDescription): self
    {
        $this->shortDescription = $shortDescription;

        return $this;
    }

    public function isBest(): ?bool
    {
        return $this->best;
    }

    public function setBest(bool $best): self
    {
        $this->best = $best;

        return $this;
    }

    public function isSuggested(): ?bool
    {
        return $this->suggested;
    }

    public function setSuggested(bool $suggested): self
    {
        $this->suggested = $suggested;

        return $this;
    }
}
