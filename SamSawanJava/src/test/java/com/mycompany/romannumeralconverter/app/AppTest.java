/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.romannumeralconverter.app;


import org.junit.After;
import org.junit.AfterClass;
import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 *
 * @author ssawan
 */
public class AppTest {
    
    Converter calculator = new Converter();
    
    public AppTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    @Test
    public void enteringIReturns1() {
        assertEquals(calculator.converter("I"), 1);
    }
    
    @Test
    public void enteringIIReturns2() {
        assertEquals(calculator.converter("II"), 2);
    }
    
    @Test
    public void enteringIIIReturns3() {
        assertEquals(calculator.converter("III"), 3);
    }
    
    @Test
    public void enteringVReturns5() {
        assertEquals(calculator.converter("V"), 5);
    }
    
    @Test
    public void enteringXReturns10() {
        assertEquals(calculator.converter("X"), 10);
    }
    
    @Test
    public void enteringXXXReturns30() {
        assertEquals(calculator.converter("XXX"), 30);
    }
    
    @Test
    public void enteringVIReturns6() {
        assertEquals(calculator.converter("VI"), 6);
    }
    
    @Test 
    public void enteringXIReturns11() {
        assertEquals(calculator.converter("XI"), 11);
    }
    
    @Test
    public void enteringIVReturns4() {
        assertEquals(calculator.converter("IV"), 4);
    }
    
    @Test
    public void enteringLReturns50() {
        assertEquals(calculator.converter("L"), 50);
    }
    
    @Test
    public void enteringCReturns100() {
        assertEquals(calculator.converter("C"), 100);
    }
    
    @Test
    public void enteringDReturns500() {
        assertEquals(calculator.converter("D"), 500);
    }
    
    @Test
    public void enteringMReturns1000() {
        assertEquals(calculator.converter("M"), 1000);
    }
    
    @Test
    public void enteringLXXXReturns80() {
        assertEquals(calculator.converter("LXXX"), 80);
    }
    
    @Test  
    public void enteringMMVIIIReturns2008() {
        assertEquals(calculator.converter("MMVIII"), 2008);
    }
    
    @Test
    public void enteringInvalidRomanNumeralReturns0() {
        assertEquals(calculator.converter("invalid"), 0);
    }
    
    @Test
    public void enteringXLVIIReturns47() {
        assertEquals(calculator.converter("XLVII"), 47);
    }
    
    @Test
    public void enteringXCIXReturns99() {
        assertEquals(calculator.converter("XCIX"), 99);
    }
    
    @Test
    public void enteringMCMXCReturns1990() {
        assertEquals(calculator.converter("MCMXC"), 1990);
    }
    
    @Test
    public void enteringMCCXXXIVReturns1234() {
        assertEquals(calculator.converter("MCCXXXIV"), 1234);
    }
  
    @Test
    public void enteringCXXIIReturns122() {
        assertEquals(calculator.converter("CXXII"), 122);
    }
    
    @Test
    public void enteringMMMDLXIReturns3561() {
        assertEquals(calculator.converter("MMMDLXI"), 3561);
    }
    
    
    
}
