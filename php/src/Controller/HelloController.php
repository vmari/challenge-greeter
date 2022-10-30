<?php

namespace App\Controller;

use App\Service\GreeterService;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\ServiceUnavailableHttpException;

class HelloController
{
    /**
     * @Route("hello.php")
     */
    public function hello(Request $request, GreeterService $greeterService): Response
    {
        $name = $request->query->get('name', 'World');

        try {
            $response = $greeterService->sayHello($name);

            return new Response($response);
        } catch (\Exception $e) {
            throw new ServiceUnavailableHttpException();
        }
    }
}
