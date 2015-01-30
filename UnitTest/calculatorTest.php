<?php

require_once '../calculator.php';


class ReshapeDataParserFlashTest extends PHPUnit_Framework_TestCase
{
  
    public $object;
  
 


    protected function setUp()
    {
        $this->object = new calculator();
        
        
    }
 
    protected function tearDown()
    {
    }


    public function testAdd()
    {

        $this->assertEquals(4,$this->object->add(2,2));
       
    }
	 public function testSub()
    {

        $this->assertEquals(1,$this->object->add(3,2));
       
    }

    
   }
   ?>