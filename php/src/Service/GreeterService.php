<?php

namespace App\Service;

use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Contracts\HttpClient\Exception\ClientExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\RedirectionExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\ServerExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\TransportExceptionInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;

class GreeterService
{
    private HttpClientInterface $client;

    public function __construct(HttpClientInterface $client, ParameterBagInterface $params)
    {
        $this->client = $client->withOptions([
            'base_uri' => $params->get('app.greeter_service_url')
        ]);
    }

    /**
     * Request greeting from external service
     *
     * @param string $name
     * @return string
     * @throws TransportExceptionInterface
     * @throws ClientExceptionInterface
     * @throws RedirectionExceptionInterface
     * @throws ServerExceptionInterface
     */
    public function sayHello(string $name): string
    {
        $response = $this->client->request(
            'GET',
            '',
            [
                'query' => ['name' => $name],
                'headers' => [
                    'Origin' => 'php-service'
                ],
            ]
        );

        return $response->getContent();
    }
}
