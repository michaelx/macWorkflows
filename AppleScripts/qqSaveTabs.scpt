FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $  Save browser tabs to txt file     � 	 	 <   S a v e   b r o w s e r   t a b s   t o   t x t   f i l e   
  
 l     ��  ��    L F AppleScript by leancrew.com/all-this/2012/10/saving-browser-tab-sets/     �   �   A p p l e S c r i p t   b y   l e a n c r e w . c o m / a l l - t h i s / 2 0 1 2 / 1 0 / s a v i n g - b r o w s e r - t a b - s e t s /      l     ��������  ��  ��        l     ��  ��    : 4 Assume the frontmost Finder window (or the Desktop)     �   h   A s s u m e   t h e   f r o n t m o s t   F i n d e r   w i n d o w   ( o r   t h e   D e s k t o p )      l     ��  ��    , & is where we want to store the script.     �   L   i s   w h e r e   w e   w a n t   t o   s t o r e   t h e   s c r i p t .      l     ����  Q           O    ! " ! r     # $ # l    %���� % n     & ' & m    ��
�� 
cfol ' l    (���� ( 4   �� )
�� 
cwin ) m   	 
���� ��  ��  ��  ��   $ o      ���� 0 defaultfolder defaultFolder " m     * *�                                                                                  MACS  alis    t  Macintosh HD               ΢�nH+     4
Finder.app                                                      %B�``9        ����  	                CoreServices    ΢�^      �`D       4   1   0  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��    R      ������
�� .ascrerr ****      � ****��  ��     r     + , + l    -���� - I   �� .��
�� .earsffdralis        afdr . m    ��
�� afdrdesk��  ��  ��   , o      ���� 0 defaultfolder defaultFolder��  ��     / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 ) # Initialize the text ot the script.    4 � 5 5 F   I n i t i a l i z e   t h e   t e x t   o t   t h e   s c r i p t . 2  6 7 6 l    ' 8���� 8 r     ' 9 : 9 b     % ; < ; b     # = > = m     ! ? ? � @ @  # ! / b i n / b a s h > 1   ! "��
�� 
lnfd < 1   # $��
�� 
lnfd : o      ���� 0 cmd  ��  ��   7  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E ) # Add commands to open all the tabs.    F � G G F   A d d   c o m m a n d s   t o   o p e n   a l l   t h e   t a b s . D  H I H l  ( \ J���� J O   ( \ K L K k   , [ M M  N O N r   , 8 P Q P I  , 6�� R��
�� .corecnte****       **** R n  , 2 S T S 2  0 2��
�� 
bTab T 4  , 0�� U
�� 
cwin U m   . /���� ��   Q o      ���� 0 n   O  V�� V Y   9 [ W�� X Y�� W r   C V Z [ Z b   C T \ ] \ b   C R ^ _ ^ b   C F ` a ` o   C D���� 0 cmd   a m   D E b b � c c  o p e n   - g   _ n   F Q d e d 1   M Q��
�� 
pURL e n   F M f g f 4   J M�� h
�� 
bTab h o   K L���� 0 i   g 4  F J�� i
�� 
cwin i m   H I����  ] 1   R S��
�� 
lnfd [ o      ���� 0 cmd  �� 0 i   X m   < =����  Y o   = >���� 0 n  ��  ��   L m   ( ) j j�                                                                                  sfri  alis    N  Macintosh HD               ΢�nH+     V
Safari.app                                                       !L͜�        ����  	                Applications    ΢�^      ͜��       V  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��  ��  ��   I  k l k l     ��������  ��  ��   l  m n m l     �� o p��   o . ( Open/create a file and save the script.    p � q q P   O p e n / c r e a t e   a   f i l e   a n d   s a v e   t h e   s c r i p t . n  r s r l  ] v t���� t r   ] v u v u I  ] r���� w
�� .sysonwflfile    ��� null��   w �� x y
�� 
dfnm x m   a d z z � { {  t a b s e t y �� |��
�� 
dflc | l  g l }���� } c   g l ~  ~ o   g h���� 0 defaultfolder defaultFolder  m   h k��
�� 
alis��  ��  ��   v o      ���� 0 scriptalias scriptAlias��  ��   s  � � � l  w � ����� � r   w � � � � n   w ~ � � � 1   z ~��
�� 
psxp � o   w z���� 0 scriptalias scriptAlias � o      ���� 0 
scriptpath 
scriptPath��  ��   �  � � � l  � � ����� � r   � � � � � I  � ��� � �
�� .rdwropenshor       file � o   � ����� 0 scriptalias scriptAlias � �� ���
�� 
perm � m   � ���
�� boovtrue��   � o      ���� 0 
scriptfile 
scriptFile��  ��   �  � � � l  � � ����� � I  � ��� � �
�� .rdwrseofnull���     **** � o   � ����� 0 
scriptfile 
scriptFile � �� ���
�� 
set2 � m   � �����  ��  ��  ��   �  � � � l  � � ����� � I  � ��� � �
�� .rdwrwritnull���     **** � o   � ����� 0 cmd   � �� � �
�� 
refn � o   � ����� 0 
scriptfile 
scriptFile � �� ���
�� 
wrat � m   � ���
�� rdwreof ��  ��  ��   �  � � � l  � � ����� � I  � ��� ���
�� .rdwrclosnull���     **** � o   � ����� 0 
scriptfile 
scriptFile��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � > 8 Change the file attributes to make it double-clickable.    � � � � p   C h a n g e   t h e   f i l e   a t t r i b u t e s   t o   m a k e   i t   d o u b l e - c l i c k a b l e . �  � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  c h m o d   7 7 7   � o   � ����� 0 
scriptpath 
scriptPath��  ��  ��   �  � � � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � � x a t t r   - w x   c o m . a p p l e . F i n d e r I n f o   ' 0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0     0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0     0 0   0 0   0 0   0 0   0 0   0 0   0 0   0 0 '   � o   � ����� 0 
scriptpath 
scriptPath��  ��  ��   �  ��� � l     �������  ��  �  ��       �~ � ��~   � �}
�} .aevtoappnull  �   � **** � �| ��{�z � ��y
�| .aevtoappnull  �   � **** � k     � � �   � �  6 � �  H � �  r � �  � � �  � � �  � � �  � � �  � � �  � � �  ��x�x  �{  �z   � �w�w 0 i   � ' *�v�u�t�s�r�q�p ?�o�n j�m�l�k b�j�i z�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X ��W �
�v 
cwin
�u 
cfol�t 0 defaultfolder defaultFolder�s  �r  
�q afdrdesk
�p .earsffdralis        afdr
�o 
lnfd�n 0 cmd  
�m 
bTab
�l .corecnte****       ****�k 0 n  
�j 
pURL
�i 
dfnm
�h 
dflc
�g 
alis�f 
�e .sysonwflfile    ��� null�d 0 scriptalias scriptAlias
�c 
psxp�b 0 
scriptpath 
scriptPath
�a 
perm
�` .rdwropenshor       file�_ 0 
scriptfile 
scriptFile
�^ 
set2
�] .rdwrseofnull���     ****
�\ 
refn
�[ 
wrat
�Z rdwreof 
�Y .rdwrwritnull���     ****
�X .rdwrclosnull���     ****
�W .sysoexecTEXT���     TEXT�y � � 
*�k/�,E�UW X  �j E�O��%�%E�O� 1*�k/�-j E�O !k�kh  ��%*�k/�/a ,%�%E�[OY��UO*a a a �a &a  E` O_ a ,E` O_ a el E` O_ a jl O�a _ a  a !a  "O_ j #Oa $_ %j %Oa &_ %j %ascr  ��ޭ