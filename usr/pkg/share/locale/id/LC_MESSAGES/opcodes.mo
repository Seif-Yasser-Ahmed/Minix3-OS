��    W      �     �      �  [   �     �  9   �  (   3     \     i  	   y     �  	   �     �     �     �  (   �     	     -	     M	     h	     �	     �	     �	     �	     �	  ,   �	     
  :   6
  1   q
  9   �
  6   �
       "   .  )   Q     {  %   �  #   �  +   �  +     1   /  1   a  %   �  +   �  1   �  1     /   I     y     �     �     �  .   �  +   	     5     O  !   j  5   �  "   �  0   �          &     F  )   c     �     �  %   �  &   �          &  !   :     \  !   w  !   �  2   �  2   �  2   !  0   T  -   �  ;   �  	   �     �                     /     G     b      w     �     �  b  �  W   '       =   �  6   �          #     9      I     j     z     �     �  /   �     �          "     B  "   _      �     �     �     �  0   �       @   $  7   e  ?   �  9   �       "   1  *   T       %   �  $   �  +   �  ,     4   ?  4   t  %   �  +   �  0   �  0   ,  8   ]     �     �     �     �  0   �  "   )     L      k     �  7   �      �  5        9     H     e  4   �  %   �     �  ,   �  ,   '     T     o  $   �     �  )   �  )   �  3     4   K  3   �  2   �  <   �  G   $     l     �     �     �     �     �      �           '      F      _      P   ;   J          >       ?   I           D   H   -      .   2          :   <   !           F   5   "            7   V           8          4            1      T   *   K       %                    Q                 L   U   )   &           ,      +   
           S   3      C                      G       	                 B   /                  A          #   =   @       $          O      E       6   R       M           (              0   N   9   W       '                  
The following ARM specific disassembler options are supported for use with
the -M switch:
 # <dis error: %08x> # internal disassembler error, unrecognised modifier (%c) # internal error, undefined modifier(%c) $<undefined> %02x		*unknown* (unknown) *unknown operands type: %d* *unknown* <function code %d> <illegal precision> <internal disassembler error> <internal error in opcode table: %s %s>
 <unknown register %d> Address 0x%x is out of bounds.
 Bad case %d (%s) in %s:%d
 Bad immediate expression Bad register in postincrement Bad register in preincrement Bad register name Don't understand %x 
 Hmmmm %x Illegal limm reference in last instruction!
 Internal disassembler error Internal error:  bad sparc-opcode.h: "%s", %#.8lx, %#.8lx
 Internal error: bad sparc-opcode.h: "%s" == "%s"
 Internal error: bad sparc-opcode.h: "%s", %#.8lx, %#.8lx
 Internal: Non-debugged code (test-case missing): %s:%d Label conflicts with `Rx' Label conflicts with register name Small operand was not an immediate number Unknown error %d
 Unrecognised disassembler option: %s
 Unrecognised register name set: %s
 Unrecognized field %d while building insn.
 Unrecognized field %d while decoding insn.
 Unrecognized field %d while getting int operand.
 Unrecognized field %d while getting vma operand.
 Unrecognized field %d while parsing.
 Unrecognized field %d while printing insn.
 Unrecognized field %d while setting int operand.
 Unrecognized field %d while setting vma operand.
 attempt to set y bit when using + or - modifier bad instruction `%.50s' bad instruction `%.50s...' branch operand unaligned branch to odd offset branch value not in range and to an odd offset branch value not in range and to odd offset branch value out of range can't cope with insert %d
 displacement value is not aligned displacement value is not in range and is not aligned displacement value is out of range ignoring least significant bits in branch offset illegal bitmask immediate value is out of range immediate value must be even immediate value not in range and not even index register in load range invalid conditional option invalid register for stack adjustment invalid register operand when updating jump hint unaligned junk at end of line missing mnemonic in syntax string offset not a multiple of 4 offset not between -2048 and 2047 offset not between -8192 and 8191 operand out of range (%ld not between %ld and %ld) operand out of range (%ld not between %ld and %lu) operand out of range (%lu not between %lu and %lu) operand out of range (%lu not between 0 and %lu) syntax error (expected char `%c', found `%c') syntax error (expected char `%c', found end of instruction) undefined unknown unknown	0x%02x unknown	0x%04lx unknown	0x%04x unknown constraint `%c' unknown operand shift: %x
 unknown pop reg: %d
 unrecognized form of instruction unrecognized instruction value out of range Project-Id-Version: opcodes 2.12.1
POT-Creation-Date: 2002-02-08 03:24-0200
PO-Revision-Date: 2002-07-23 12:35GMT+0700
Last-Translator: Tedi Heriyanto <tedi_h@gmx.net>
Language-Team: Indonesian <translation-team-id@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 0.9.5
 
Option disablembler khusus ARM berikut ini didukung untuk digunakan dengan
switch -M:
 # <kesalahan dis: %08x> # kesalahan internal disasembler, modifier tidak dikenal (%c) # kesalahan internal, modifier tidak didefinisikan(%c) $<tidak didefinisikan> %02x		*tidak dikenal* (tidak dikenal) *tipe operand tidak dikenal: %d* *tidak dikenal* <kode fungsi %d> <presisi ilegal> <kesalahan asembler internal> <kesalahan internal dalam tabel opcode: %s %s>
 <register tidak dikenal %d> Alamat 0x%x di luar batas.
 Case buruk %d (%s) dalam %s:%d
 Ekspresi langsung yang buruk Register buruk dalam pascainkremen register buruk dalam preinkremen Nama register buruk Tidak mengerti %x 
 Hmmmm %x referensi limm ilegal dalam instruksi terakhir!
 Kesalahan disasembler internal Kesalahan internal:  sparc-opcode.h buruk: "%s", %#.8lx, %#.8lx
 Kesalahan internal: sparc-opcode.h buruk: "%s" == "%s"
 Kesalahan internal: sparc-opcode.h buruk: "%s", %#.8lx, %#.8lx
 Internal: Kode belum didebug (tidak ada test-case): %s:%d Label konflik dengan `Rx' Label konflik dengan nama register Operand kecil bukan sebuah angka immediate Kesalahan tidak dikenal %d
 Option disasembler tidak dikenal: %s
 Set nama register tidak dikenal: %s
 Field tidak dikenal %d saat membuild insn.
 Field tidak dikenal %d saat mendekode insn.
 Field tidak dikenal %d saat memperoleh operand int.
 Field tidak dikenal %d saat memperoleh operand vma.
 Field tidak dikenal %d saat parsing.
 Field tidak dikenal %d saat mencetak insn.
 Field tidak dikenal %d saat menset operand int.
 Field tidak dikenal %d saat menset operand vma.
 berusaha menset bit y saat menggunakan modifier + atau - instruksi buruk `%.50s' instruksi buruk `%.50s...' operand cabang tidak rata cabang offset ganjil nilai cabang di luar jangkauan dan offset ganjil nilai cabang tidak dalam jangkauan nilai cabang di luar jangkauan tidak dapat menangani insert %d
 nilai displacement tidak rata nilai displacement tidak dalam jangkauan dan tidak rata nilai displacement di luar batas mengabaikan least significant bit dalam offset cabang bitmask ilegal nilai langsung di luar batas nilai langsung harus genap nilai langsung tidak dalam jangkauan dan tidak genap register indeks dalam daerah pemuatan option kondisional tidak valid register tidak valid untuk penyesuaian stack operand register tidak valid saat mengupdate petunjuk lompat tidak rata sampah di akhir baris mnemonik hilang dalam string sintaks offset bukan kelipatan 4 offset tidak berada antara -2048 dan 2047 offset tidak berada antara -8192 dan 8191 operand keluar batas (%ld tidak antara %ld dan %ld) operand di luar batas (%ld tidak antara %ld dan %lu) operand keluar batas (%lu tidak antara %lu dan %lu) operand di luar batas (%lu tidak antara 0 dan %lu) kesalahan sintaks (diharapkan karakter `%c', ditemukan `%c') kesalahan sintaks (diharapkan karakter `%c', ditemukan akhir instruksi) tidak didefinisikan tidak dikenal tidak dikenal	0x%02x tidak dikenal	0x%04lx tidak dikenal	0x%04x konstrain tidak dikenal `%c' shift operand tidak dikenal: %x
 reg pop tidak dikenal: %d
 bentuk instruksi tidak dikenal instruksti tidak dikenal nilai di luar batas 