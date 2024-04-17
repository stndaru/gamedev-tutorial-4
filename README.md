# Tutorial 4 Game Development CSUI Even Semester 2023/2024
Created by Stefanus Ndaru Wedhatama - 2006526812

## Excercise
### New Features
#### Double Jump
Double jump di tutorial ini dilakukan di pecahan kode berikut
```gd
var double_jump = false

func get_input():
	if is_on_floor():
		double_jump = true
	if is_on_floor() and Input.is_action_just_pressed('ui_up'):
		velocity.y = jump_speed
	if !is_on_floor() and Input.is_action_just_pressed('ui_up') and double_jump:
		velocity.y = jump_speed
		double_jump = false
```
Implementasi double jump menggunakan mekanik dari `boolean` untuk menentukan apakah karakter _eligible_ untuk double jump. Ketika karakter menyentuh tanah, maka status double jump akan menyala. Lalu, jika tidak berada di tanah, alias ketika karakter sedang jatuh atau sedang melompat, maka karakter dapat melompat lagi, menghasilkan double jump. Implementasi ini juga kebetulan memberikan kemampuan bagi karakter untuk air jump, alias lompat di udara sebanyak satu kali.

> Fungsi ini diadaptasi dan digunakan kembali dari Tutorial 3

#### New Spawner
Ada spawner dan musuh baru berupa Falling Saw, yang merupakan gergaji jatuh dan memiliki mekanisme sama seperti Falling Fish, di mana player akan kalah jika menyentuhnya.

![Alt text](saw.png)

Bedanya dengan Falling Fish, Falling Saw hanya akan jatuh di satu titik, yaitu di lompatan terakhir sebelum titik akhir, dengan memodifikasi kode Falling Fish sehingga hanya akan spawn di titik X tertentu dan memiliki interval lebih tinggi.

```godot
func spawn():
	var spawned = obstacle.instance()
	get_parent().add_child(spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x

	spawned.global_position = spawn_pos

func repeat():
	spawn()
	yield(get_tree().create_timer(2), "timeout")
	repeat()
```
Pengaturan tersebut dilakukan di Spawner untuk Saw, yaitu `SawSpawner`.


#### Lighting
Adanya Lighting yang membuat Scene menjadi lebih hidup, dengan memanfaatkan `CanvasModulate` untuk set seberapa terang scenenya, dan `Light2D` untuk memancarkan cahaya.


![Alt text](image.png)

---

# Tutorial 6 Game Development CSUI Even Semester 2023/2024
Created by Stefanus Ndaru Wedhatama - 2006526812

## Excercise
### Implementation of New Game
Implementasi New Game dilakukan dengan menaruh tombol New Game menggunakan `ButtonLink` di scene `MainMenu.tscn`. Tombol ini dinest dalam suatu `MarginContainer` dan banyak `VBox` serta `HBox` container lainnya, lalu diberikan signal ketika ditekan akan memanggil `get_tree().change_scene(str("res://scenes/level/" + scene_to_load + ".tscn"))`. Selain itu, ketika menekan tombol, maka akan menulis ke _singleton_ nyawa dan menaruh _value_ sebanyak 3 lives melalui `global.set_lives(3)`.


### Implementation of Stage Select
Stage Select mengikuti implementasi New Game dalam _layout_ dengan menggunakan `MarginContainer` dan banyak `VBox` serta `HBox` container lainnya. Di Stage Select, dalam scene `MenuScreen.tscn`, terdapat dua tombol yang akan memainkan level yang sesuai. Setiap tombol akan diberikan perintah untuk memberi 3 nyawa, sama seperti New Game, dan akan memuat scene melalui `get_tree().change_scene(str("res://scenes/level/" + scene_to_load + ".tscn"))` dengan `scene_to_load` diatur secara manual melalui Inspector di masing-masing stage.


### Implementation of Return to Menu
Pada tutorial 6 ini, untuk layar akhir, baik kalah atau menang, diberikan tombol untuk kembali ke menu. Hal ini dilakukan di kedua scene `WinScreen.tscn` dan juga `LoseScreen.tscn`. Implementasi sangat mudah, dengan memberi Button lalu dengan Anchor diberikan ke Center dan melakukan sedikit adjustment secara vertikal, lalu diberikan signal tekan yang akan memanggil untuk memuat scene menu utama melalui `get_tree().change_scene(str("res://scenes/screen/MainMenu.tscn"))`.
