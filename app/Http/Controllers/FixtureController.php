<?php

namespace App\Http\Controllers;
use App\Team;
   use App\Fixture;
use DB ;
use Illuminate\Http\Request;
use PDO ;
class FixtureController extends Controller
{


        function LeagueTable(){
                $teams_query = DB::connection()->getPdo()->query("select * from teams");
                $teams = $teams_query->fetchAll(PDO::FETCH_ASSOC);

                $fixtures_query = DB::connection()->getPdo()->query("select * from fixtures");
                $fixtures = $fixtures_query->fetchAll(PDO::FETCH_ASSOC);

                foreach ($fixtures as $obg)
                {
                        if (!empty($obg['home_score'])) {
                                // home team win
                                if ($obg['home_score'] >$obg['away_score']  ){
                                        $team_key = array_search($obg['home_id'], array_column($teams, 'id'));
                                        $teams[$team_key]['score'] = $teams[$team_key]['score'] + 3 ;
                                }
                                
                                // away team win
                                if ( $obg['away_score']> $obg['home_score'] ){
                                        $team_key = array_search($obg['away_id'], array_column($teams, 'id'));
                                        $teams[$team_key]['score'] =  $teams[$team_key]['score'] + 3 ;
                                }
                                
                                // draw
                                if ( $obg['away_score'] == $obg['home_score'] ){
                                $team_key = array_search($obg['home_id'], array_column($teams, 'id'));
                                $teams[$team_key]['score'] =  $teams[$team_key]['score'] + 1 ;

                                $team_key = array_search($obg['away_id'], array_column($teams, 'id'));
                                $teams[$team_key]['score'] =  $teams[$team_key]['score'] + 1 ;
                                }
                        }


                              
                      
                }

                # SORT Teams 
                $sort = array();
                foreach($teams as $k=>$v) {
                $sort['score'][$k] = $v['score'];
                }
                array_multisort( $sort['score'], SORT_DESC,$teams);


                return response($teams);   

               
                                                       
        }



        function SetScores (Request $request){

                foreach ( $request->all() as $obg)
                {
                DB::table('fixtures')
                ->where('id', $obg["FixtureId"])
                ->update(['home_score' => $obg["home_score"],'away_score' => $obg["away_score"]]);

                }
                return response( "done" );
        }


        function GetTeams (){
                $teams =  Team::all();
                return response($teams );
        }

        function GetFixtures (){

                $fixtures = DB::table('fixtures')
                ->select('fixtures.id','home.title as home_team','away.title as away_team','fixtures.home_score','fixtures.away_score')
                ->join('teams as home', 'home.id', '=', 'fixtures.home_id')
                ->join('teams as away', 'away.id', '=', 'fixtures.away_id')
                ->get();
                return response($fixtures );
        }

        function AddFixtures (Request $request){
                $array = [ ];
                foreach ( $request->all() as $obg)
                {
                array_push($array,['home_id'=>$obg["home_id"],'away_id'=>$obg["away_id"]]);
                }
                $done = Fixture::insert( $array); 
                if ($done){return response( 'done' );}
        }
    
    
}
