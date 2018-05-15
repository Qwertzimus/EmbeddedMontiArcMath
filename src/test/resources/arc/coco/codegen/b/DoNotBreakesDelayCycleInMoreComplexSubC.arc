/*
 * ******************************************************************************
 * MontiCore Language Workbench, www.monticore.de
 * Copyright (c) 2017, MontiCore, All rights reserved.
 *
 * This project is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3.0 of the License, or (at your option) any later version.
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this project. If not, see <http://www.gnu.org/licenses/>.
 * ******************************************************************************
 */

package b;

component DoNotBreakesDelayCycleInMoreComplexSubC {

    port
        in String sIn,
        out String sOut;

    component A a1, a2;
    component C;
    
    component UsingAandCandB;
    
    connect sIn -> c.sIn1;
    connect c.sOut -> a1.sIn;
    connect a1.sOut -> a2.sIn, usingAandCandB.sIn1;
    connect a2.sOut -> usingAandCandB.sIn2, sOut;
    
    connect usingAandCandB.sOut -> c.sIn2;
    
}