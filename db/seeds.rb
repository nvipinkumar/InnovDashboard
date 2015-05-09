# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ImpOwn01 = ImpOwner.create! :ImperativeOwner => "Pratik, Javed"
ImpOwn02 = ImpOwner.create! :ImperativeOwner => "Amborish, Mahesh, Anitha"
ImpOwn03 = ImpOwner.create! :ImperativeOwner => "Ram, Chetan"
ImpOwn04 = ImpOwner.create! :ImperativeOwner => "Deepak (VC++)"
ImpOwn05 = ImpOwner.create! :ImperativeOwner => "Rahul (C#)"
ImpOwn06 = ImpOwner.create! :ImperativeOwner => "Santosh (MPages, Java)"
ImpOwn07 = ImpOwner.create! :ImperativeOwner => "Rachana"
ImpOwn08 = ImpOwner.create! :ImperativeOwner => "Rahul"
ImpOwn09 = ImpOwner.create! :ImperativeOwner => "Lloyd (C# - WPF)"
ImpOwn10 = ImpOwner.create! :ImperativeOwner => "Rajesh (MPages)"
ImpOwn11 = ImpOwner.create! :ImperativeOwner => "Ajith (Orion)"
ImpOwn12 = ImpOwner.create! :ImperativeOwner => "Vipin (FHIR)"
ImpOwn13 = ImpOwner.create! :ImperativeOwner => "Javed"
ImpOwn14 = ImpOwner.create! :ImperativeOwner => "Ram, Chetan, Pratik"


IdeaStat01 = IdeaStatus.create! :Status => "Submitted"
IdeaStat02 = IdeaStatus.create! :Status => "In Review"
IdeaStat03 = IdeaStatus.create! :Status => "Approved"
IdeaStat04 = IdeaStatus.create! :Status => "Future Development"
IdeaStat05 = IdeaStatus.create! :Status => "Cancelled"
IdeaStat06 = IdeaStatus.create! :Status => "In Progress"
IdeaStat07 = IdeaStatus.create! :Status => "Completed"

# Create records for Knowledge and Culture
KnowAndCul01 = Knowandcul.create!(
                    :Name => "Test Idea",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 1,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 1
    				)

KnowAndCul02 = Knowandcul.create!(
                    :Name => "Test Idea2",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 2,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 2
    				)

KnowAndCul03 = Knowandcul.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 3
    				)

Procandeco04 = Procandeco.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 4
    				)

Procandeco05 = Procandeco.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 5
    				)

Procandeco06 = Procandeco.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 6
    				)

Procandeco07 = Procandeco.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 7
    				)

Techandsol08 = Techandsol.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 8
    				)

Techandsol09 = Techandsol.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 9
    				)

Techandsol10 = Techandsol.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 10
    				)

Techandsol11 = Techandsol.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 11
    				)

Techandsol12 = Techandsol.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 12
    				)

Techandsol13 = Techandsol.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 13
    				)

Techandsol14 = Techandsol.create!(
                    :Name => "Test Idea3",
                    :Summary => "This is a summary This is a summary This is a summary ",
                    :Description => "This is a summary This is a summary This is a summary This is a summary 
                    					This is a summary This is a summary This is a summary This is a summary ",
                    :Owner => "Vipin",
                    :Reviewed => "Pratik",
                    :Status_id => 4,
                    :Comments => "This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary This is a summary This is a summary This is a summary 
                    				This is a summary ",
    				:Action => "Get it reviewed",
    				:ImpOwner_id => 14
    				)