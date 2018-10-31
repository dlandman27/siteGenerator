import freemarker.template.*;
import java.util.*;
import java.io.*;
import java.io.BufferedReader;
import java.io.FileReader;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVRecord;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;
public class SiteGenerator {

    public static void main(String[] args) throws Exception {
        /* ------------------------------------------------------------------------ */
        /* You should do this ONLY ONCE in the whole application life-cycle:        */

        /* Create and adjust the configuration singleton */
        Configuration cfg = new Configuration(Configuration.VERSION_2_3_27);
        cfg.setDirectoryForTemplateLoading(new File("/Users/dylansmac/Documents/NetBeansProjects/siteGenerator/src"));
        cfg.setDefaultEncoding("UTF-8");
        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
        cfg.setLogTemplateExceptions(false);
        cfg.setWrapUncheckedExceptions(true);
        String csvFile = "/Users/dylansmac/Documents/NetBeansProjects/siteGenerator/src/Schedule - Daily schedule.csv";
        
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        /* ------------------------------------------------------------------------ */
        /* You usually do these for MULTIPLE TIMES in the application life-cycle:   */
//VARIABLES: 
//1. playerName
//2. playerRole
//3. director
//4. bigurl
//5. showTitle
//6. showYear
        
        
        /* Create a data-model */
        
        
        
        

        /* Get the template (uses cache internally) */
        Template temp = cfg.getTemplate("test.ftlh");
        Template listPage = cfg.getTemplate("listPage.ftlh");
        
                File testFile = new File("/Users/dylansmac/Documents/NetBeansProjects/siteGenerator/src/output.html");
                Writer out = new FileWriter(testFile);
                
                Map listPageData = new HashMap();
                List<Show> musicals = new ArrayList();
                
                
                
        
        
        
        
        listPageData.put("dramas", new ArrayList());
        listPageData.put("musicals", new ArrayList());
        
        listPage.process(listPageData, out);
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

        /* Merge data-model with template */

        Map<String, List<Player>> playerMap = new HashMap();
        Map<String, List<ProductionTeam>> producersMap = new HashMap();
        
        Reader in = Files.newBufferedReader(Paths.get("/Users/dylansmac/Documents/NetBeansProjects/siteGenerator/src/Instructions - Cast Members.csv"));
        Reader in2 = Files.newBufferedReader(Paths.get("/Users/dylansmac/Documents/NetBeansProjects/siteGenerator/src/Instructions - Production Team.csv"));

        Iterable<CSVRecord> players = CSVFormat.RFC4180.withFirstRecordAsHeader().parse(in);
        Iterable<CSVRecord> producers = CSVFormat.RFC4180.withFirstRecordAsHeader().parse(in2);

        for(CSVRecord record : players){
            Player p = new Player();
            
            p.setName(record.get("Name"));
            p.setRole(record.get("Role"));
            
            ProductionTeam t = new ProductionTeam();
            t.setName(record.get("Name"));
            t.setRole(record.get("Role"));
            
//            // Use map's containKey method to check if the map
            if (!playerMap.containsKey(record.get("Play ID"))) {
              // initialize the list.
              ArrayList a = new ArrayList();
              playerMap.put(record.get("Play ID"), a);
              playerMap.put(record.get("Play ID"), a);
            }
            
            List<Player> playersInShow = playerMap.get(record.get("Play ID"));
            playersInShow.add(p);

        }
        
        
        
        
        for(CSVRecord record : producers){
            ProductionTeam t = new ProductionTeam();
            
            t.setName(record.get("Name"));
            t.setRole(record.get("Role"));
            
//            // Use map's containKey method to check if the map
            if (!producersMap.containsKey(record.get("Play ID"))) {
              // initialize the list.
              ArrayList a = new ArrayList();
              producersMap.put(record.get("Play ID"), a);
            }
            
          
            List<ProductionTeam> producersInShow = producersMap.get(record.get("Play ID"));
            producersInShow.add(t);
        }
        
        
        
        
        int i = 0;
        in = new FileReader("/Users/dylansmac/Documents/NetBeansProjects/siteGenerator/src/Instructions - Shows.csv");
        Iterable<CSVRecord> shows = CSVFormat.RFC4180.withFirstRecordAsHeader().parse(in);
        
        // 1. List<CSVRecord> -> template data
        
        
        // 1st for loop. List<CSVRecord> -> populate a List<Show>
        // 2nd for loop. List<Show> -> generate show pages.

        // 3rd for loop. List<Show> -> split them into dramas and musicals
        //   consider putting this into step 1 somehow.
        
        // generate the listPage by passing it a hashmap containing dramas and musicals
        
        
        
        for (CSVRecord record : shows) {
            
            String id = record.get("ID");
            String show = record.get("Name");
            String fileName = record.get("Slug");
            String showYear = record.get("Year");
            
            Show show2 = new Show();
            show2.setName(show);
            
            
            musicals.add(show2);
            
            
            File showFile = new File("/Users/dylansmac/Documents/NetBeansProjects/hhhHsePlayersWebsite/public_html/pdam/"+fileName+".html");
            Writer out2 = new FileWriter(showFile);
            Map root = new HashMap();
            root.put("","");
            root.put("bigurl", "picture");
            root.put("showTitle", show);
            root.put("showYear", showYear);
            root.put("playerName", playerMap.get(id));
            root.put("producerName", producersMap.get(id));
            if(playerMap.get(id) == null) {
                root.put("players", new ArrayList());
            }
            else{
               root.put("players", playerMap.get(id));
            } 
            
                 
            Map productionTeam = new HashMap();

            productionTeam.put("producerName", producersMap.get(id));
            
            if(producersMap.get(id) == null) {
                root.put("producers", new ArrayList());
            }
            else{
               root.put("producers", producersMap.get(id));
            }            
            temp.process(root, out2);
            out2.close();
        }
        // Note: Depending on what `out` is, you may need to call `out.close()`.
        // This is usually the case for file output, but not for servlet output.
    }
}
