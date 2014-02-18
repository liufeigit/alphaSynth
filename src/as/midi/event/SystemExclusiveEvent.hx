/*
 * This file is part of alphaSynth.
 * Copyright (c) 2014, T3866, PerryCodes, Daniel Kuschny and Contributors, All rights reserved.
 * 
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3.0 of the License, or at your option any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library.
 */
package as.midi.event;

import as.platform.Types.Byte;
import as.platform.Types.Short;
import haxe.io.Bytes;

class SystemExclusiveEvent extends SystemCommonEvent
{
    public var data(default, null):Bytes;
    
    public function getManufacturerId() : Int
    {
        return _message >> 8;
    }
    
    public function new(delta:Int, status:Byte, id:Short, data:Bytes) 
    {
        super(delta, status, (id & 0x00FF), (id >> 8));
        this.data = data;
    } 
}