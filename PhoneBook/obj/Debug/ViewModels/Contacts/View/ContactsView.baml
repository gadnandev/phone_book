   M S B A M L   `   `   `  ����D  @PhoneBook, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:PhoneBook.ViewModels.Contacts.View"PhoneBook.ViewModels.Contacts.View  5   	   5    /PhoneBook.ViewModels.Contacts.View.ContactsView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Blocal0clr-namespace:PhoneBook.ViewModels.Contacts.View     5   	     � Title$  ContactsView��5   	   $	��750��6   $
��1250��6+   .��5	      � $��10q�6    � ColumnDefinitions 5
   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $	��160 �6   �� 5      $��* �6   .+�5   
   �� -   5        $��SearchTextBox��5      $��25(�5      
����+��$��0��5      $��0��5      $��3��5      $	��330��5      $��44��5       $	��Top=�5!      $
��left=�5"      $��10q�5#      ��5      ��  �� Path$ SearchString� �� UpdateSourceTrigger$ PropertyChanged=�5#      �� 5%   
   -   5        $��AutoComplateBorder��5/      $��0��5%      $��0��5&      $��3��5'      $	��275��5(      $	��100��5)      $	��Top=�5*      
���   �$��1q�5,      $��-100,54,0,0q�5-      ._�51      �� $
��Auto=�6   .��52      �� -   5        $��ResultStack��52      62   53      55      �� 56   
   $��44��6   $	��150��58      $��0��59      $��2��5:      $��2��5;      $��Search��5<      $��0 0 0 95q�5=      $��28(�5>      $
��bold"�5?      
����� �$��Center=�5A      ��57      �� *SearchCommand+5A      �� 5B   
   $��44��6   $	��150��5D      $��0��5E      $��3��5F      $��2��5G      $��	26 0 0 95q�5H      $	��New��5I      $��28(�5J      $
��bold"�5K      
����� �$��Center=�5M      ��5C      �� *AddNewContactCommand+5M      �� 5N   
   $��44��6   $	��150��5P      $��0��5Q      $��4��5R      $��2��5S      $��	57 0 0 95q�5T      $��Export��5U      $��28(�5V      $
��bold"�5W      
����� �$��Center=�5Y      ��5O      �� *ExportToExcelCommand+5Y      �� 5Z   
   $��44��6   $	��150��5\      $��0��5]      $��5��5^      $��2��5_      $��	92 0 0 95q�5`      $��Import��5a      $��28(�5b      $
��bold"�5c      
����� �$��Center=�5e      ��5[      �� *ImportToDataBaseCommand+5e      �� 5f   
   $��1��5g      $��0��5h      $��8��5i      ��5j      �� *ContactsList+��5k      �� 5l      .R�5m      ��  �� Orientation$ 
Horizontal=�6!   .+�5n      �� $��20(�5o   $   $��26��5p   $   $��75��5q   $   $
��Bold"�5r   $   ��5n   $   �� *	FirstName+5r   $   �� 5s      $��20(�5t   $   $��26��5u   $   $	��140��5v   $   $
��Bold"�5w   $   ��5s   $   �� *
LastName+5w   $   �� 5x      $	��215��5{      $��26��5|      ��5y      �� *PhoneNumbers+ �� SelectedItem 5z      �� *SelectedPhone+5|      �� 5}      $��20(�5~   $   $��26��5   $   $	��185��5�   $   $��12 0 0 5q�5�   $   $��Medium"�5�   $   ��5}   $   �� *Street+5�   $   �� 5�      $��20(�5�   $   $��26��5�   $   $	��140��5�   $   $��12 0 0 5q�5�   $   $��Medium"�5�   $   ��5�   $   �� *City+5�   $   �� 5�      $
��Edit��6!   $	��110��5�   '   $��26��5�   (   $
��Bold"�5�   (   $��25 0 0 0q�5�   (    � Cursor$
 Hand��5�   (   
��������5�   &   �� *EditClickedCommand+5�   '   �� 5�      $��Delete��6!   $	��110��5�   '   $��26��5�   (   $
��Bold"�5�   (   $��85 0 0 0q�5�   (   $
 Hand��5�   (   
���  ����5�   '   �� *DeleteContactCommand+5�   '   5�      5�      5�      5�      5�      