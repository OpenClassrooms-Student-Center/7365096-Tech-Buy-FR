<?php

namespace App\Controller;

use App\Entity\Category;
use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CategoriesController extends AbstractController
{
    #[Route('/categories', name: 'get_categories', methods: ['GET'])]
    public function getCategories(CategoryRepository $categoryRepository): JsonResponse
    {
        return $this->json($categoryRepository->findAll(), Response::HTTP_OK, [], ['groups' => ['get_category']]);
    }

    #[Route('/categories/{id}', name: 'get_category', methods: ['GET'])]
    public function getCategory(Category $category): JsonResponse
    {
        return $this->json($category, Response::HTTP_OK, [], ['groups' => ['get_category']]);
    }

}
