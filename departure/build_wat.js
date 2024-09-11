const {readFileSync} = require("fs");

const font_data = JSON.parse(readFileSync("./departure.json", "utf8"));

const print = s => process.stdout.write(s + "\n");

print("(module");
print(`

  (func $put_pixel_raw (import "lux" "put_pixel_raw") (param i32) (param i32))
  (func $rgb2int (import "lux" "rgb2int") (param i32) (param i32) (param i32) (result i32))
  (export "$departure/a" (func $departure/a))

  (func $departure/a
    (param $r i32)
    (param $g i32)
    (param $b i32)
    (param $x i32)
    (param $y i32)
    (param $w i32)

    (call $departure/code_97 
      (call $rgb2int (local.get $r) (local.get $g) (local.get $b))
      (local.get $x)
      (local.get $y)
      (local.get $w)))
`);

for (let { code, char, pixels } of font_data) {
  print(`  ;; draws the '${char}' character`);
  print(`  (func $departure/code_${code}`);
  print("    (param $rgba i32)");
  print("    (param $x i32)");
  print("    (param $y i32)");
  print("    (param $w i32)");
  print("    (local $y_offset i32)");
  print("    (local $x_offset i32)");
  print("");
  print("    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))");
  print("    (local.set $x_offset (local.get $y_offset))");

  var i = 0;
  for (let row of pixels) {
    print(`    ;; row ${i++}`);
    print("    (local.set $x_offset (local.get $y_offset))");
    for (let col of row) {
      if (col === " ") {
        // do nothing
      } else {
        print("    (call $put_pixel_raw (local.get $x_offset) (local.get $rgba))")
      }
      print("    (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))");
    }
    print("    (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))");
  }

  print("");

  print("  )\n");
}

print(")\n");
