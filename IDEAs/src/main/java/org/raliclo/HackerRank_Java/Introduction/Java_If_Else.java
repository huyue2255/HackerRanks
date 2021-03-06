/*
 * Copyright 2016 Ralic Lo<raliclo@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 *
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and limitations under the License.
 */

package org.raliclo.HackerRank_Java.Introduction;

/**
 * Created by raliclo on 7/18/16.
 * Project Name : TestNG-1
 */

import java.util.Scanner;

public class Java_If_Else {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int x = in.nextInt();
        if (x % 2 == 1) {
            System.out.println("Weird");
        } else if (x <= 5 && x >= 2) {
            System.out.println("Not Weird");
        } else if (x <= 20 && x >= 6) {
            System.out.println("Weird");
        } else if (x > 20) {
            System.out.println("Not Weird");
        }
    }
}
