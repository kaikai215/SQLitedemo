//
//  SqliteHelper.swift
//  SQLitedemo
//
//  Created by kai on 2025/12/8.
//

import SQLite
import Foundation

final class DemoDB {
    static func getDbPath() -> String {
        return Bundle.main.path(forResource: "Demo", ofType: "sqlite") ?? ""
    }
    
     
    static func getCityList() -> [String] {
        let path = getDbPath()
        var output: [String] = []
        
        do {
            let db = try Connection(path)
            let sql = "SELECT name FROM City ORDER BY id"
            for row in try db.prepare(sql) {
                output.append("\(row[0] ?? "")")
            }
        } catch {
            print("DB error:", error)
        }
        return output
    }
}
