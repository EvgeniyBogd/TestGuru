class BadgeTestService

    def inititalize(current_user, test_passage)
        @test_passage = test_passage
        @user = current_user
        @badges = @user.badges
        @test = @test_passage.test
    end    

    def call
        badge_check!
        @badges << @badge 
    end   
    
    def badge_check!
        @badge = Badge.all.select { |badge| send("rule_#{badge.rule}?", badge)}
    end 
    
    
    def rule_category?(badge)
       @user.tests.tests_by_category(badge.rule_value).count == Test.all.tests_by_category(badge.rule_value).count
    end
    
    def rule_first?(badge)
        @user.tests.where(id: @test.id).count == 1
    end
    
    def rule_level?(badge)
        @user.tests.tests_by_level(badge.rule_value).count == Test.all.tests_by_level(badge.rule_value).count
    end

    
end    