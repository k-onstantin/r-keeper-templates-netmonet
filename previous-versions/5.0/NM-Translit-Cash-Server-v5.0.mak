object Report1: TPDReport
  EngineVer = 1
  Width = 40
  IVars = <>
  UnionTables = <>
  RepParams = <>
  FixedHeight = 0
  TwoPasses = False
  object Document1: TPDDocument
    Height = 80
    object bndBandVirtNM3: TPDBand
      Script.Strings = (
        
          'begin if ([System.CashGroup.genRestSys]<>'#39#39') and ([System.CashGr' +
          'oup.genWPIDSys]<>'#39#39') then bndBandVirtNM1.visible:=true'
        '   else bndBandVirtNM1.visible:=false; '
        
          'if ([System.CashGroup.genRestSys]<>'#39#39') and ([System.CashGroup.ge' +
          'nWPIDSys]<>'#39#39') then bndBandVirtNM2.visible:=true'
        '   else bndBandVirtNM2.visible:=false; end')
      Color = 4737096
      Top = 69
      Height = 11
      Body.Size = 10
      Footer.Size = 0
      BandType = btMasterData
      DataSetName = 'Virtual[1]'
      CalcFields = <>
      object MemoNM9: TPDMemo
        Visible = False
        Left = 0
        Top = 1
        Width = 40
        Height = 1
        Alignment = taCenter
        Content.Strings = (
          'Tip & Pay v5.0')
      end
      object bndBandVirtNM1: TPDBand
        Color = clMaroon
        Top = 2
        Height = 6
        Header.DoubleHeight = True
        Header.DoubleWidth = True
        Header.Size = 3
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
          Height = 2
          Content.Strings = (
            ' ����.������.����� '
            '      ��������')
        end
        object MemoNM4: TPDMemo
          Script.Strings = (
            '//script version 5.0'
            'var '
            
              'waiterName, tableName, checkSum, checkNumber, checkout, netmonet' +
              'WaiterCode, waiterNameTransliterated, tableNameTransliterated, W' +
              'PID: String;'
            'counter, i: integer;'
            'symbol: char;'
            ''
            'begin'
            '   waiterName := [Orders.MainWaiter.Name];'
            '   tableName := [Orders.TableName];'
            '   checkSum := IntToStr(Trunc([PrintChecks.BindedSum]));'
            '   checkNumber := IntToStr(Trunc([PrintChecks.CheckNum]));'
            '   checkout := [Orders.GUIDString];'
            '   netmonetWaiterCode := [System.CashGroup.genRestSys];'
            '   waiterNameTransliterated := '#39#39';'
            '   tableNameTransliterated := '#39#39';'
            '   WPID := [System.CashGroup.genWPIDSys];'
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
            '  //script version 5.0'
            ' // we delete { and } from order guid, so link is correct'
            '  for i := length(checkout) downto 1 do'
            '    if (checkout[i] = '#39'{'#39') or (checkout[i] = '#39'}'#39') then'
            '      delete(checkout, i, 1);'
            
              'memoNM4.text := '#39'<QRcode https://netmonet.co/tip/'#39' + netmonetWai' +
              'terCode + '#39'?o=3&s='#39' + checkSum + '#39'&c='#39' + checkNumber + '#39'&Tn='#39' + ' +
              'tableNameTransliterated + '#39'&wpid='#39' + WPID + '#39'&en='#39' + waiterNameT' +
              'ransliterated + '#39'&checkout='#39' + checkout + '#39'>'#39';'
            'MemoNM4.visible := false;'
            ''
            
              '    if ([Orders.MainWaiter.genCodeSys] = '#39#39') then MemoNM4.visibl' +
              'e := true;'
            'end')
          Left = 0
          Top = 5
          Width = 40
          Height = 1
          Alignment = taCenter
        end
        object MemoNM3: TPDMemo
          Script.Strings = (
            '//script version 5.0'
            'var '
            
              'tableName, checkSum, checkNumber, checkout, netmonetWaiterCode, ' +
              'tableNameTransliterated, WPID: String;'
            'counter, i: integer;'
            'symbol: char;'
            ''
            'begin'
            '   tableName := [Orders.TableName];'
            '   checkSum := IntToStr(Trunc([PrintChecks.BindedSum]));'
            '   checkNumber := IntToStr(Trunc([PrintChecks.CheckNum]));'
            '   checkout := [Orders.GUIDString];'
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
            '  //script version 5.0.0'
            ' // we delete { and } from order guid, so link is correct'
            '  for i := length(checkout) downto 1 do'
            '    if (checkout[i] = '#39'{'#39') or (checkout[i] = '#39'}'#39') then'
            '      delete(checkout, i, 1);'
            ''
            
              'memoNM3.text := '#39'<QRcode https://netmonet.co/tip/'#39' + netmonetWai' +
              'terCode + '#39'?o=3&s='#39' + checkSum + '#39'&c='#39' + checkNumber + '#39'&Tn='#39' + ' +
              'tableNameTransliterated + '#39'&wpid='#39' + WPID + '#39'&checkout='#39' + check' +
              'out + '#39'>'#39';'
            'MemoNM3.visible := true;'
            ''
            
              '   if ([Orders.MainWaiter.genCodeSys] = '#39#39') then MemoNM3.visible' +
              ' := false;'
            'end')
          Left = 0
          Top = 4
          Width = 40
          Height = 1
          Alignment = taCenter
        end
        object MemoNM2: TPDMemo
          Left = 0
          Top = 3
          Width = 40
          Height = 1
          Alignment = taCenter
          Content.Strings = (
            '�������� ������ �� QR-���')
        end
      end
      object bndBandVirtNM2: TPDBand
        Color = 4737096
        Top = 8
        Height = 3
        Body.Size = 2
        Footer.Size = 0
        BandType = btMasterData
        DataSetName = 'Virtual[1]'
        CalcFields = <>
        object MemoNM7: TPDMemo
          Script.Strings = (
            'begin MemoNM7.visible := true;'
            
              'if ([Orders.MainWaiter.genCodeSys] = '#39#39')then MemoNM7.visible := ' +
              'false; end')
          Left = 0
          Top = 1
          Width = 40
          Height = 1
          Alignment = taCenter
          Content.Strings = (
            '��� ������� [Orders.MainWaiter.genCodeSys] �� netmonet.co')
        end
        object MemoNM8: TPDMemo
          Script.Strings = (
            'begin MemoNM8.visible := false;'
            
              'if ([Orders.MainWaiter.genCodeSys] = '#39#39')then MemoNM8.visible := ' +
              'true; end')
          Left = 0
          Top = 2
          Width = 40
          Height = 1
          Alignment = taCenter
          Content.Strings = (
            '��� ������� [System.CashGroup.genRestSys] �� netmonet.co')
        end
      end
    end
  end
end
