object Report: TPDReport
  EngineVer = 1
  Width = 40
  IVars = <>
  UnionTables = <>
  RepParams = <>
  FixedHeight = 0
  TwoPasses = True
  object Sheet1: TPDDocument
    Height = 80
    object bndBandVirtNM1: TPDBand
      Color = 13735574
      Top = 71
      Height = 5
      Header.DoubleHeight = True
      Header.DoubleWidth = True
      Header.Size = 2
      Body.Size = 3
      Footer.DoubleHeight = True
      Footer.DoubleWidth = True
      Footer.Size = 0
      BandType = btMasterData
      DataSetName = 'Virtual[1]'
      CalcFields = <>
      object MemoNM1: TPDMemo
        Left = 0
        Top = 1
        Width = 40
        Height = 1
        Content.Strings = (
          '  ������ ��������')
      end
      object MemoNM2: TPDMemo
        Left = 0
        Top = 2
        Width = 40
        Height = 1
        Alignment = taCenter
        Content.Strings = (
          '�������� ������ �� QR-���')
      end
      object MemoNM3: TPDMemo
        Script.Strings = (
          '//script version 4.2'
          'var '
          
            'tableName, checkSum, checkNumber, netmonetWaiterCode, tableNameT' +
            'ransliterated, WPID: String;'
          'counter: integer;'
          'symbol: char;'
          ''
          'begin'
          '   tableName := [Orders.TableName];'
          '   checkSum := IntToStr(Trunc([PrintChecks.BindedSum]));'
          '   checkNumber := IntToStr(Trunc([PrintChecks.CheckNum]));'
          '   netmonetWaiterCode := [Orders.MainWaiter.genCodeSys];'
          '   tableNameTransliterated := '#39#39';'
          '   WPID := [System.CashGroup.genWPIDSys];'
          ''
          'for counter := 1 to Length(tableName) do begin'
          '   symbol := tableName[counter];'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'a'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'b'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'v'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'g'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'd'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'e'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'yo'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'zh'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'z'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'i'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'y'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'k'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'l'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'm'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'n'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'o'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'p'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'r'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39's'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39't'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'u'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'f'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'h'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'c'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'ch'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'sh'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'sch'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'i'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'e'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'yu'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'ya'#39' else'
          
            '   if symbol = '#39' '#39' then tableNameTransliterated := tableNameTran' +
            'sliterated + '#39'_'#39
          
            '      else tableNameTransliterated := tableNameTransliterated + ' +
            'symbol'
          '   end'
          '//script version 4.2'
          
            'memoNM3.text := '#39'<QRcode https://netmonet.co/tip/'#39' + netmonetWai' +
            'terCode + '#39'?o=3&s='#39' + checkSum + '#39'&c='#39' + checkNumber + '#39'&Tn='#39' + ' +
            'tableNameTransliterated + '#39'&wpid='#39' + WPID + '#39'>'#39';'
          'MemoNM3.visible := true;'
          ''
          
            '   if ([Orders.MainWaiter.genCodeSys] = '#39#39') then MemoNM3.visible' +
            ' := false;'
          'end')
        Left = 0
        Top = 3
        Width = 40
        Height = 1
        Alignment = taCenter
      end
      object MemoNM4: TPDMemo
        Script.Strings = (
          '//script version 4.1.0'
          'var '
          
            'waiterName, tableName, checkSum, checkNumber, waiterNameTranslit' +
            'erated, tableNameTransliterated: String;'
          'counter: integer;'
          'symbol: char;'
          ''
          'begin'
          '   waiterName := [Orders.MainWaiter.Name];'
          '   tableName := [Orders.TableName];'
          '   checkSum := IntToStr(Trunc([PrintChecks.BindedSum]));'
          '   checkNumber := IntToStr(Trunc([PrintChecks.CheckNum]));'
          '   waiterNameTransliterated := '#39#39';'
          '   tableNameTransliterated := '#39#39';'
          ''
          'for counter := 1 to Length(waiterName) do begin'
          '   symbol := waiterName[counter];'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'a'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'b'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'v'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'g'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'd'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'e'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'yo'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'zh'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'z'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'i'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'y'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'k'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'l'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'm'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'n'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'o'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'p'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'r'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39's'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39't'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'u'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'f'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'h'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'c'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'ch'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'sh'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'sch'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'i'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'e'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'yu'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then waiterNameTransliter' +
            'ated := waiterNameTransliterated + '#39'ya'#39' else'
          
            '   if symbol = '#39' '#39' then waiterNameTransliterated := waiterNameTr' +
            'ansliterated + '#39'_'#39
          
            '      else waiterNameTransliterated := waiterNameTransliterated ' +
            '+ symbol'
          '   end'
          ''
          'for counter := 1 to Length(tableName) do begin'
          '   symbol := tableName[counter];'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'a'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'b'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'v'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'g'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'd'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'e'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'yo'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'zh'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'z'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'i'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'y'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'k'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'l'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'm'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'n'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'o'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'p'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'r'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39's'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39't'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'u'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'f'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'h'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'c'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'ch'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'sh'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'sch'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'i'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'e'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'yu'#39' else'
          
            '   if (symbol = '#39'�'#39') or (symbol = '#39'�'#39') then tableNameTranslitera' +
            'ted := tableNameTransliterated + '#39'ya'#39' else'
          
            '   if symbol = '#39' '#39' then tableNameTransliterated := tableNameTran' +
            'sliterated + '#39'_'#39
          
            '      else tableNameTransliterated := tableNameTransliterated + ' +
            'symbol'
          '   end'
          '//script version 4.1.0'
          '//XXXXXX = ��� ���������'
          
            'memoNM4.text := '#39'<QRcode https://netmonet.co/tip/XXXXXX?o=3&s='#39' ' +
            '+ checkSum + '#39'&c='#39' + checkNumber + '#39'&Tn='#39' + tableNameTranslitera' +
            'ted + '#39'&en='#39' + waiterNameTransliterated + '#39'>'#39';'
          'MemoNM4.visible := false;'
          ''
          
            '    if ([Orders.MainWaiter.genCodeSys] = '#39#39') then MemoNM4.visibl' +
            'e := true;'
          'end')
        Left = 0
        Top = 4
        Width = 40
        Height = 1
        Alignment = taCenter
      end
    end
    object bndBandVirtNM2: TPDBand
      Color = 11528431
      Top = 76
      Height = 4
      Footer.DoubleWidth = True
      Footer.Size = 2
      BandType = btMasterData
      DataSetName = 'Virtual[1]'
      CalcFields = <>
      object MemoNM6: TPDMemo
        Left = 0
        Top = 1
        Width = 40
        Height = 1
        Alignment = taCenter
        Content.Strings = (
          '��� ������� ��� �� ����� netmonet.co')
      end
      object MemoNM7: TPDMemo
        Script.Strings = (
          'begin MemoNM7.visible := true;'
          
            'if ([Orders.MainWaiter.genCodeSys] = '#39#39')then MemoNM7.visible := ' +
            'false; end')
        Left = 0
        Top = 2
        Width = 40
        Height = 1
        Content.Strings = (
          '       [Orders.MainWaiter.genCodeSys]')
      end
      object MemoNM8: TPDMemo
        Script.Strings = (
          'begin //XXXXXX = ��� ���������'
          'MemoNM8.visible := false;'
          
            'if ([Orders.MainWaiter.genCodeSys] = '#39#39')then MemoNM8.visible := ' +
            'true; end')
        Left = 0
        Top = 3
        Width = 40
        Height = 1
        Content.Strings = (
          '       XXXXXX')
      end
    end
  end
end
