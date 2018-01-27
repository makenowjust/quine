const std = @import("std");
const io = std.io;
const mem = std.mem;
pub fn main() %void {
    var stdout = try io.getStdOut();
    try stdout.write(source);
    var lines = mem.split(source, "\n");
    var line: ?[]const u8 = lines.next();
    while (line != null) {
      try stdout.write("\n  \\\\");
      try stdout.write(??line);
      line = lines.next();
    }
    try stdout.write("\n;\n");
}
const source =
  \\const std = @import("std");
  \\const io = std.io;
  \\const mem = std.mem;
  \\pub fn main() %void {
  \\    var stdout = try io.getStdOut();
  \\    try stdout.write(source);
  \\    var lines = mem.split(source, "\n");
  \\    var line: ?[]const u8 = lines.next();
  \\    while (line != null) {
  \\      try stdout.write("\n  \\\\");
  \\      try stdout.write(??line);
  \\      line = lines.next();
  \\    }
  \\    try stdout.write("\n;\n");
  \\}
  \\const source =
;
