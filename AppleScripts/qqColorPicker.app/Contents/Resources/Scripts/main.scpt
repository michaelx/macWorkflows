FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Name: 		qColorPicker     � 	 	 *   N a m e :   	 	 q C o l o r P i c k e r   
  
 l     ��������  ��  ��        l     ��  ��    O I Function:		Opens a color picker and copies the select color to clipboard     �   �   F u n c t i o n : 	 	 O p e n s   a   c o l o r   p i c k e r   a n d   c o p i e s   t h e   s e l e c t   c o l o r   t o   c l i p b o a r d      l     ��  ��      Version:		1.0     �      V e r s i o n : 	 	 1 . 0      l     ��  ��      Compatible:	10.5     �   "   C o m p a t i b l e : 	 1 0 . 5      l     ��������  ��  ��        l     ��   ��    %  by:			fidel for macfidelity.de      � ! ! >   b y : 	 	 	 f i d e l   f o r   m a c f i d e l i t y . d e   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & C = credit:			http://cowboyscripts.org/applescript/#Color_Picker    ' � ( ( z   c r e d i t : 	 	 	 h t t p : / / c o w b o y s c r i p t s . o r g / a p p l e s c r i p t / # C o l o r _ P i c k e r %  ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - 6 0 last modified:	20090424 initial script creation    . � / / `   l a s t   m o d i f i e d : 	 2 0 0 9 0 4 2 4   i n i t i a l   s c r i p t   c r e a t i o n ,  0 1 0 l     ��������  ��  ��   1  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6 ' !property rgbColor : {65535, 0, 0}    7 � 8 8 B p r o p e r t y   r g b C o l o r   :   { 6 5 5 3 5 ,   0 ,   0 } 5  9 : 9 j     �� ;�� 0 rgbcolor rgbColor ; J      < <  = > = m     ����   >  ? @ ? m    ����   @  A�� A m    ����  ��   :  B C B l     ��������  ��  ��   C  D E D l     F���� F r      G H G l     I���� I I    ���� J
�� .sysochclcRGB    ��� null��   J �� K��
�� 
dcol K o    ���� 0 rgbcolor rgbColor��  ��  ��   H o      ���� 0 rgbcolor rgbColor��  ��   E  L M L l    N���� N r     O P O n    Q R Q I    �� S���� 0 rgb2hex   S  T�� T o    ���� 0 rgbcolor rgbColor��  ��   R  f     P o      ���� 0 hexcolor hexColor��  ��   M  U V U l   $ W���� W I   $�� X��
�� .JonspClpnull���     **** X o     ���� 0 hexcolor hexColor��  ��  ��   V  Y Z Y l     ��������  ��  ��   Z  [ \ [ i    
 ] ^ ] I      �� _���� 0 rgb2hex   _  `�� ` o      ���� 0 rgb  ��  ��   ^ k     * a a  b c b r      d e d m      f f � g g  # e o      ���� 0 hex   c  h i h Y    ' j�� k l�� j r    " m n m b      o p o o    ���� 0 hex   p l    q���� q I   �� r��
�� .sysoexecTEXT���     TEXT r b     s t s b     u v u m     w w � x x 0 p r i n t f   ' % 0 2 X \ n '   $ ( e c h o   ' v l    y���� y n     z { z 4    �� |
�� 
cobj | o    ���� 0 i   { o    ���� 0 rgb  ��  ��   t m     } } � ~ ~    /   2 5 6 '   |   b c )��  ��  ��   n o      ���� 0 hex  �� 0 i   k m    ����  l l    ����  I   �� ���
�� .corecnte****       **** � o    	���� 0 rgb  ��  ��  ��  ��   i  ��� � L   ( * � � o   ( )���� 0 hex  ��   \  ��� � l     ��������  ��  ��  ��       �� � � � � �������   � �������������� 0 rgbcolor rgbColor�� 0 rgb2hex  
�� .aevtoappnull  �   � ****�� 0 hexcolor hexColor��  ��   � �� ���  �  ��������'1��!��� � �� ^���� � ����� 0 rgb2hex  �� �� ���  �  ���� 0 rgb  ��   � �������� 0 rgb  �� 0 hex  �� 0 i   �  f�� w�� }��
�� .corecnte****       ****
�� 
cobj
�� .sysoexecTEXT���     TEXT�� +�E�O "k�j kh ���/%�%j %E�[OY��O� � �� ����� � ���
�� .aevtoappnull  �   � **** � k     $ � �  D � �  L � �  U����  ��  ��   �   � ����������
�� 
dcol
�� .sysochclcRGB    ��� null�� 0 rgb2hex  �� 0 hexcolor hexColor
�� .JonspClpnull���     ****�� %*�b   l Ec   O)b   k+ E�O�j  � � � �  # 2 7 2 1 1 F��  ��   ascr  ��ޭ