//pretty good system, isn't it
switch (_id) {
       case 0:
            enemy_modifier_set(MODIFIER_Y_VELOCITY, .5);
            create_enemy32(3.5, 0,  enemyTypes.eSimple);
            enemy_modifier_reset();
       break;
       case 1:
            create_enemies("
            x#x##x#x
            ########
            ########
            ########
            ########
            ########
            ########
            #x#xx#x#
            ", enemyTypes.eNormal);
       break;
       case 2:
            enemy_modifier_set(MODIFIER_Y_VELOCITY, 2);
            create_enemy32(2, 0, enemyTypes.eNormal);
            create_enemy32(5, 0, enemyTypes.eNormal);
            enemy_modifier_set(MODIFIER_RANDOM_FIRE, 5);
            create_enemy32(3, -4, enemyTypes.eNormal);
            create_enemy32(4, -4, enemyTypes.eNormal);
            enemy_modifier_reset();
       break;
       case 3:
            enemy_modifier_set(MODIFIER_VELOCITY_CONVEX, 1);
            enemy_modifier_set(MODIFIER_DOUBLE_FIRE, 1);
            create_enemies("
            x#x##x#x
            ", enemyTypes.eNormal);
            enemy_modifier_reset();
       break;
       case 4:
            enemy_modifier_set(MODIFIER_VELOCITY_CONVEX, 1);
            create_enemies("
            ########
            x######x
            #x####x#
            ########
            ", enemyTypes.eSimple);
            create_enemies("
            ########
            ##xxxx##
            ", enemyTypes.eNormal);
            enemy_modifier_reset();
       break;
       case 5:
            create_enemies("
            xx####xx
            ##x##x##
            ###xx###
            ", enemyTypes.eSimple);
       break;
       case 6:
            create_enemies("
            #x#xx#x#
            ", enemyTypes.eSimple);
       break;
       case 7:
            enemy_modifier_set(MODIFIER_VELOCITY_CONVEX, 1);
            create_enemies("
            ##x##x##
            ", enemyTypes.eSimple);
            enemy_modifier_reset();
       break;
       case 8:
            enemy_modifier_set(MODIFIER_Y_VELOCITY, .3);
            create_enemies("
            xxxxxxxx
            x######x
            xxxxxxxx
            ", enemyTypes.eSimple);
            create_enemies("
            ########
            #x#xx#x#
            ########
            ", enemyTypes.eNormal);
            enemy_modifier_reset();
       break;
       case 9:
            enemy_modifier_set(MODIFIER_VELOCITY_CONVEX, 1);
            enemy_modifier_set(MODIFIER_SIN_X, 10);
            create_enemies("
            #x#xx#x#
            ##x##x##
            ", enemyTypes.eSimple);
            enemy_modifier_reset();
            enemy_modifier_set(MODIFIER_Y_VELOCITY, .5);
            enemy_modifier_set(MODIFIER_VELOCITY_CONVEX, 1);
            create_enemies("
            xxxxxxxx
            ########
            ########
            ########
            ", enemyTypes.eSimple);
            enemy_modifier_reset();
       break;
       case 10:
            enemy_modifier_set(MODIFIER_VELOCITY_CONVEX, 1);
            enemy_modifier_set(MODIFIER_SIN_X, 10);
            enemy_modifier_set(MODIFIER_Y_VELOCITY, .4);
            enemy_modifier_set(MODIFIER_DOUBLE_FIRE, 1);
            create_enemies("
            ####xxxx
            ########
            xxxx####
            ########
            ####xxxx
            ", enemyTypes.eNormal);
            enemy_modifier_set(MODIFIER_DOUBLE_FIRE, 0);
            create_enemies("
            xxx#####
            ########
            #####xxx
            ########
            xxx#####
            ", enemyTypes.eSimple);
            enemy_modifier_reset();
       break;
       case 11:
            enemy_modifier_set(MODIFIER_Y_VELOCITY, .3);
            enemy_modifier_set(MODIFIER_SIN_X, 40);
            enemy_modifier_set(MODIFIER_DOUBLE_FIRE, 1);
            create_enemy32(3.5, 0,  enemyTypes.eConstant);
            enemy_modifier_reset();
       break;
       case 12:
            enemy_modifier_set(MODIFIER_Y_VELOCITY, .4);
            enemy_modifier_set(MODIFIER_DOUBLE_FIRE, 1);
            create_enemies("
            ###x####
            ####x###
            ###x####
            ####x###
            ###x####
            ", enemyTypes.eSimple);
            enemy_modifier_set(MODIFIER_SIN_X, 20);
            enemy_modifier_reset();
            enemy_modifier_set(MODIFIER_Y_VELOCITY, .7);
            create_enemies("
            x######x
            ########
            xx####xx
            ########
            x######x
            ", enemyTypes.eConstant);
            enemy_modifier_reset();
       break;
       case 13:
            enemy_modifier_set(MODIFIER_Y_VELOCITY, .3);
            enemy_modifier_set(MODIFIER_DOUBLE_FIRE, 1);
            create_enemies("
            ###xx###
            ##x##x##
            xx####xx
            ##x##x##
            ###xx###
            ", enemyTypes.eNormal);
            create_enemies("
            #xx##xx#
            #x####x#
            ########
            #x####x#
            #xx##xx#
            ", enemyTypes.eSimple);
            create_enemies("
            ########
            ########
            x######x
            ########
            ########
            ", enemyTypes.eConstant);
            enemy_modifier_reset();
       break;
       case 14:
            //random
            enemy_modifier_set(MODIFIER_Y_VELOCITY, random_range(.1, .8));
            enemy_modifier_set(MODIFIER_DOUBLE_FIRE, choose(0, 1));
            enemy_modifier_set(MODIFIER_SIN_X, random(10));
            enemy_modifier_set(MODIFIER_VELOCITY_CONVEX, choose(0, 1));
            
            create_enemies(
            choose(
            "
            xxxxxxxx
            #xxxxxx#
            ##xxxx##
            ###xx###
            ########
            ",
            "
            xx#xx#xx
            ##xxxx##
            xxxxxxxx
            ##xxxx##
            xx#xx#xx
            ",
            "
            xxxxxxxx
            x######x
            x######x
            x######x
            xxxxxxxx
            ",
            "
            ########
            ##xxxx##
            #xxxxxx#
            xxxxxxxx
            ########
            ",
            "
            xxx#####
            ########
            #####xxx
            ########
            xxx#####
            "
            ), choose(enemyTypes.eNormal, enemyTypes.eSimple));
            
            enemy_modifier_reset();
       break;
       
}
