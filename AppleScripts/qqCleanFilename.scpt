FasdUAS 1.101.10   ��   ��    k             l     ��  ��    3 - Clean renaming of all selected files/folders     � 	 	 Z   C l e a n   r e n a m i n g   o f   a l l   s e l e c t e d   f i l e s / f o l d e r s   
  
 l     ��  ��    a [ AppleScript by techierambles.blogspot.de/2009/04/applescript-to-automatically-replace.html     �   �   A p p l e S c r i p t   b y   t e c h i e r a m b l e s . b l o g s p o t . d e / 2 0 0 9 / 0 4 / a p p l e s c r i p t - t o - a u t o m a t i c a l l y - r e p l a c e . h t m l      l     ��  ��    $  modified by michaelxander.com     �   <   m o d i f i e d   b y   m i c h a e l x a n d e r . c o m      l     ��������  ��  ��        l     ��  ��    4 .set the list of characters you want to replace     �   \ s e t   t h e   l i s t   o f   c h a r a c t e r s   y o u   w a n t   t o   r e p l a c e      l     ��  ��    ? 9disallowedChars will be replaced with the replacementChar     �   r d i s a l l o w e d C h a r s   w i l l   b e   r e p l a c e d   w i t h   t h e   r e p l a c e m e n t C h a r     !   j     �� "�� "0 disallowedchars disallowedChars " m      # # � $ $ * : ; , / | ! @ # $ % ^ & * ( ) [ ] & + "   !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) = 7anything in disallowedChars2 will be removed altogether    * � + + n a n y t h i n g   i n   d i s a l l o w e d C h a r s 2   w i l l   b e   r e m o v e d   a l t o g e t h e r (  , - , j    �� .�� $0 disallowedchars2 disallowedChars2 . m     / / � 0 0  ' -  1 2 1 l     ��������  ��  ��   2  3 4 3 l     �� 5 6��   5 A ;set the character you'd like to use to replace the invalid     6 � 7 7 v s e t   t h e   c h a r a c t e r   y o u ' d   l i k e   t o   u s e   t o   r e p l a c e   t h e   i n v a l i d   4  8 9 8 l     �� : ;��   : - 'characters specified in disallowedChars    ; � < < N c h a r a c t e r s   s p e c i f i e d   i n   d i s a l l o w e d C h a r s 9  = > = j    �� ?�� ,0 replacementcharacter replacementCharacter ? m     @ @ � A A  _ >  B C B l     ��������  ��  ��   C  D E D l     ��������  ��  ��   E  F G F l    E H���� H O     E I J I Q    D K L M K X    7 N�� O N k    2 P P  Q R Q l   ��������  ��  ��   R  S T S r    ! U V U n     W X W 1    ��
�� 
pnam X o    ���� 0 x   V o      ���� 0 	filenamed 	fileNamed T  Y Z Y r   " * [ \ [ n  " ( ] ^ ] I   # (�� _���� 0 	cleanname 	CleanName _  `�� ` o   # $���� 0 	filenamed 	fileNamed��  ��   ^  f   " # \ o      ���� 0 newname newName Z  a b a r   + 0 c d c o   + ,���� 0 newname newName d l      e���� e n       f g f 1   - /��
�� 
pnam g o   , -���� 0 x  ��  ��   b  h�� h l  1 1��������  ��  ��  ��  �� 0 x   O n   
  i j i 2   ��
�� 
cobj j l  
  k���� k e   
  l l 1   
 ��
�� 
sele��  ��   L R      ������
�� .ascrerr ****      � ****��  ��   M I  ? D�� m��
�� .sysodlogaskr        TEXT m m   ? @ n n � o o $ A n   e r r o r   o c c u r r e d .��   J m      p p�                                                                                  MACS  alis    t  Macintosh HD               ΢�nH+     4
Finder.app                                                      %B�``9        ����  	                CoreServices    ΢�^      �`D       4   1   0  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   G  q r q l     ��������  ��  ��   r  s t s l     ��������  ��  ��   t  u v u l     �� w x��   w = 7function for cleaning the characters from the file name    x � y y n f u n c t i o n   f o r   c l e a n i n g   t h e   c h a r a c t e r s   f r o m   t h e   f i l e   n a m e v  z�� z i   	  { | { I      �� }���� 0 	cleanname 	CleanName }  ~�� ~ o      ���� 0 thename theName��  ��   | k     U    � � � l     ��������  ��  ��   �  � � � r      � � � m      � � � � �   � o      ���� 0 newname newName �  � � � Y    R ��� � ��� � k    M � �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � 2 ,check if the character is in disallowedChars    � � � � X c h e c k   i f   t h e   c h a r a c t e r   i s   i n   d i s a l l o w e d C h a r s �  � � � l   �� � ���   � 7 1replace it with the replacementCharacter if it is    � � � � b r e p l a c e   i t   w i t h   t h e   r e p l a c e m e n t C h a r a c t e r   i f   i t   i s �  ��� � Z    M � � � � � l    ����� � E    � � � o    ���� "0 disallowedchars disallowedChars � l    ����� � n     � � � 4    �� �
�� 
cha  � o    ���� 0 i   � o    ���� 0 thename theName��  ��  ��  ��   � k    ) � �  � � � r    ' � � � b    % � � � o    ���� 0 newname newName � o    $���� ,0 replacementcharacter replacementCharacter � o      ���� 0 newname newName �  � � � l  ( (��������  ��  ��   �  � � � l  ( (�� � ���   � 3 -check if the character is in disallowedChars2    � � � � Z c h e c k   i f   t h e   c h a r a c t e r   i s   i n   d i s a l l o w e d C h a r s 2 �  ��� � l  ( (�� � ���   � # remove it completely if it is    � � � � : r e m o v e   i t   c o m p l e t e l y   i f   i t   i s��   �  � � � l  , 6 ����� � E  , 6 � � � o   , 1���� $0 disallowedchars2 disallowedChars2 � l  1 5 ����� � n   1 5 � � � 4   2 5�� �
�� 
cha  � o   3 4���� 0 i   � o   1 2���� 0 thename theName��  ��  ��  ��   �  ��� � k   9 @ � �  � � � r   9 > � � � b   9 < � � � o   9 :���� 0 newname newName � m   : ; � � � � �   � o      ���� 0 newname newName �  � � � l  ? ?��������  ��  ��   �  � � � l  ? ?�� � ���   � : 4if the character is not in either disallowedChars or    � � � � h i f   t h e   c h a r a c t e r   i s   n o t   i n   e i t h e r   d i s a l l o w e d C h a r s   o r �  ��� � l  ? ?�� � ���   � 0 *disallowedChars2, keep it in the file name    � � � � T d i s a l l o w e d C h a r s 2 ,   k e e p   i t   i n   t h e   f i l e   n a m e��  ��   � k   C M � �  � � � r   C K � � � b   C I � � � o   C D���� 0 newname newName � n   D H � � � 4   E H�� �
�� 
cha  � o   F G���� 0 i   � o   D E���� 0 thename theName � o      ���� 0 newname newName �  ��� � l  L L��������  ��  ��  ��  ��  �� 0 i   � m    ����  � n     � � � 1   	 ��
�� 
leng � o    	�� 0 thename theName��   �  � � � l  S S�~�}�|�~  �}  �|   �  ��{ � L   S U � � o   S T�z�z 0 newname newName�{  ��       �y � # / @ � ��y   � �x�w�v�u�t�x "0 disallowedchars disallowedChars�w $0 disallowedchars2 disallowedChars2�v ,0 replacementcharacter replacementCharacter�u 0 	cleanname 	CleanName
�t .aevtoappnull  �   � **** � �s |�r�q � ��p�s 0 	cleanname 	CleanName�r �o ��o  �  �n�n 0 thename theName�q   � �m�l�k�m 0 thename theName�l 0 newname newName�k 0 i   �  ��j�i �
�j 
leng
�i 
cha �p V�E�O Mk��,Ekh b   ��/ �b  %E�OPY #b  ��/ ��%E�OPY ���/%E�OP[OY��O� � �h ��g�f � ��e
�h .aevtoappnull  �   � **** � k     E � �  F�d�d  �g  �f   � �c�c 0 x   �  p�b�a�`�_�^�]�\�[�Z�Y n�X
�b 
sele
�a 
cobj
�` 
kocl
�_ .corecnte****       ****
�^ 
pnam�] 0 	filenamed 	fileNamed�\ 0 	cleanname 	CleanName�[ 0 newname newName�Z  �Y  
�X .sysodlogaskr        TEXT�e F� B 5 /*�,E�-[��l kh  ��,E�O)�k+ E�OȠ�,FOP[OY��W X 	 
�j U ascr  ��ޭ