<?php

namespace Conduit\Controllers;

use Slim\Container as ContainerInterface;

class BaseController
{

    /**
     * @var \Interop\Container\ContainerInterface
     */
    protected $container;

    /**
     * BaseController constructor.
     *
     * @param ContainerInterface $container
     */
    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
    }

}