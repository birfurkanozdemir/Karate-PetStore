package environment;

import com.intuit.karate.Results;
import com.intuit.karate.junit5.Karate;
import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class TestRunner {

    @Test
    public void testParallel() {

        Results resultsParameter = Karate.run("src/test/resources/feature").parallel(4);
        assertTrue(resultsParameter.getErrorMessages(), resultsParameter.getFailCount() == 0);
    }
}
