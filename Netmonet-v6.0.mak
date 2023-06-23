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
    object bndNetmonet: TPDBand
      Script.Strings = (
        
          'begin if ([System.CashGroup.genRestSys]<>'#39#39') and ([System.CashGr' +
          'oup.genWPIDSys]<>'#39#39') then headerNetmonetMemo.visible:=true'
        '   else headerNetmonetMemo.visible:=false; '
        
          'if ([System.CashGroup.genRestSys]<>'#39#39') and ([System.CashGroup.ge' +
          'nWPIDSys]<>'#39#39') then contentNetmonetMemo.visible:=true'
        '   else contentNetmonetMemo.visible:=false; end')
      Color = clMaroon
      Top = 75
      Height = 5
      Header.Size = 2
      Body.Size = 3
      Footer.Size = 0
      BandType = btMasterData
      DataSetName = 'Virtual[1]'
      CalcFields = <>
      object contentNetmonetMemo: TPDMemo
        Script.Strings = (
          '// v6.0'
          'var '
          
            'netmonetWaiterCode, fallbackCode, checkSum, checkNumber, tableNa' +
            'me, '
          
            'tableNameTransliterated, waiterName, waiterNameTransliterated, W' +
            'PID, checkout,'
          'url, personalUrlParams, fallbackUrlParams: String;'
          'counter, i: integer;'
          'symbol: char;'
          'qrPayOn, useGroupCode: boolean;'
          ''
          'begin'
          '     netmonetWaiterCode := [Orders.MainWaiter.genCodeSys];'
          '     fallbackCode := [System.CashGroup.genRestSys];'
          '     checkSum := IntToStr(Trunc([PrintChecks.BindedSum]));'
          '     checkNumber := IntToStr(Trunc([PrintChecks.CheckNum]));'
          '     tableName := [Orders.TableName];'
          '     tableNameTransliterated := '#39#39';'
          '     waiterName := [Orders.MainWaiter.Name];'
          '     waiterNameTransliterated := '#39#39';'
          '     WPID := [System.CashGroup.genWPIDSys];'
          '     checkout := [Orders.GUIDString];'
          '     qrPayOn := (WPID[length(WPID)] = '#39'p'#39');'
          '     useGroupCode := (fallbackCode[length(fallbackCode)] = '#39'g'#39');'
          '     url := '#39'https://netmonet.co/tip/'#39';'
          ''
          '// we delete '#39'{'#39' and '#39'}'#39' from order guid, so link is correct'
          'for i := length(checkout) downto 1 do'
          '    if (checkout[i] = '#39'{'#39') or (checkout[i] = '#39'}'#39') then'
          '      delete(checkout, i, 1);'
          ''
          'for counter := 1 to Length(waiterName) do begin'
          '   symbol := waiterName[counter];'
          
            '   if (symbol = '#39'�'#39') then waiterNameTransliterated := waiterName' +
            'Transliterated + '#39#39' else'
          
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
          
            '   if (symbol = '#39'�'#39') then tableNameTransliterated := tableNameTr' +
            'ansliterated + '#39#39' else'
          
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
          '   '
          '   // v6.0'
          '   '
          
            '   personalUrlParams := '#39'?o=3&s='#39' + checkSum + '#39'&c='#39' + checkNumb' +
            'er + '#39'&tn='#39' + tableNameTransliterated;'
          
            '   fallbackUrlParams := personalUrlParams + '#39'&en='#39' + waiterNameT' +
            'ransliterated;'
          '    '
          '   // ���� ��������� ���, �� ��������� � url '#39'group/'#39
          
            '   if useGroupCode and ([Orders.MainWaiter.genCodeSys] = '#39#39') the' +
            'n begin'
          '      delete(fallbackCode, length(fallbackCode), 1); '
          '      url := url + '#39'group/'#39';       '
          '   end'
          '      '
          
            '   // ���� �������� QR ������, �� ��������� �������� checkout = ' +
            'GUID ������'
          '   if qrPayOn then begin'
          '      delete(WPID, length(WPID), 1);'
          
            '      personalUrlParams := personalUrlParams + '#39'&checkout='#39' + ch' +
            'eckout;'
          
            '      fallbackUrlParams := fallbackUrlParams + '#39'&checkout='#39' + ch' +
            'eckout;'
          '   end'
          '   '
          '   if ([Orders.MainWaiter.genCodeSys] <> '#39#39') then begin'
          '      bndNetmonet.Body.DoubleWidth := False;'
          '      bndNetmonet.Body.DoubleHeight := False;'
          '      contentNetmonetMemo.Alignment := taCenter;         '
          '      contentNetmonetMemo.text :=       '
          
            '      '#39'<QRcode '#39' + url + netmonetWaiterCode + personalUrlParams ' +
            '+ '#39'&wpid='#39' + WPID + '#39'>'#39' + #10'
          '      + '#39'�������� ������ �� QR-���'#39' + #10'
          
            '      + '#39'��� ������� '#39' + netmonetWaiterCode + '#39' �� netmonet.co'#39' ' +
            '+ #10;'
          '      end else begin'
          '          bndNetmonet.Body.DoubleWidth := False;'
          '          bndNetmonet.Body.DoubleHeight := False;'
          '          contentNetmonetMemo.Alignment := taCenter;'
          '          contentNetmonetMemo.text :=           '
          
            '          '#39'<QRcode '#39' + url + fallbackCode + fallbackUrlParams + ' +
            #39'&wpid='#39' + WPID + '#39'>'#39' + #10'
          '          + '#39'�������� ������ �� QR-���'#39' + #10'
          
            '          + '#39'��� ������� '#39' + fallbackCode + '#39' �� netmonet.co'#39' + ' +
            '#10;'
          '          end'
          'end')
        Left = 0
        Top = 4
        Width = 40
        Height = 1
      end
      object invisibleInfoMemo: TPDMemo
        Visible = False
        Left = 0
        Top = 1
        Width = 40
        Height = 1
        Alignment = taCenter
        Content.Strings = (
          'Netmonet v6.0')
      end
      object headerNetmonetMemo: TPDMemo
        Script.Strings = (
          '// 6.0'
          'var '
          'WPID: String;'
          'qrPayOn: boolean;'
          ''
          'begin'
          'WPID := [System.CashGroup.genWPIDSys];'
          'qrPayOn := (WPID[length(WPID)] = '#39'p'#39');'
          ''
          '  if qrPayOn then begin'
          
            '  // ������������ �� ������ ������������ ������ ��� DoubleWidth/' +
            'Height := False'
          '  // �������������� ������ ������� � ������ �����'
          '  //headerNetmonetMemo.Alignment := taCenter;'
          
            '  headerNetmonetMemo.Alignment := taLeftJustify; // �� ������ ��' +
            '��'
          '  bndNetmonet.Body.DoubleWidth := True;'
          '  bndNetmonet.Body.DoubleHeight := True;'
          '  headerNetmonetMemo.text := '#39' ����.������.�����.'#39' + #10 + '
          '                             '#39'      ��������'#39';'
          '  end else begin'
          
            '      // ������������ �� ������ ������������ ������ ��� DoubleWi' +
            'dth/Height := False'
          '      // �������������� ������ ������� � ������ ����� '
          '      //headerNetmonetMemo.Alignment := taCenter;'
          
            '      headerNetmonetMemo.Alignment := taLeftJustify; // �� �����' +
            '� ����'
          '      bndNetmonet.Body.DoubleWidth := True;'
          '      bndNetmonet.Body.DoubleHeight := True;'
          '      headerNetmonetMemo.text := '#39'  ������ � ������'#39' + #10 + '
          '                                 '#39'      ��������'#39';'
          '      end'
          'end')
        Left = 0
        Top = 2
        Width = 40
        Height = 2
      end
    end
  end
end
