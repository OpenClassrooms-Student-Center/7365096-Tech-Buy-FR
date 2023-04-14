<?php

namespace App\Controller;

use App\Entity\Product;
use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProductsController extends AbstractController
{
    #[Route('/products', name: 'get_products', methods: ['GET'])]
    public function getProducts(ProductRepository $productRepository): JsonResponse
    {
        return $this->json($productRepository->findAll(), Response::HTTP_OK, [], ['groups' => ['get_products']]);
    }

    #[Route('/products/best', name: 'get_best_products', methods: ['GET'])]
    public function getBestProducts(ProductRepository $productRepository): JsonResponse
    {
        return $this->json($productRepository->findBy(['best' => true]), Response::HTTP_OK, [], ['groups' => ['get_products']]);
    }

    #[Route('/products/suggested', name: 'get_suggested_products', methods: ['GET'])]
    public function getSuggestedProducts(ProductRepository $productRepository): JsonResponse
    {
        return $this->json($productRepository->findBy(['suggested' => true]), Response::HTTP_OK, [], ['groups' => ['get_products']]);
    }

    #[Route('/products/{id}', name: 'get_product', requirements: ['id'=>'\d+'], methods: ['GET'])]
    public function getProduct(Product $product): JsonResponse
    {
        return $this->json($product, Response::HTTP_OK, [], ['groups' => ['get_product']]);
    }
}
