fftw_android
============

A sample about how to compile fftw3 to library and use it in android.

Compare between different dft_2d implement efforts is shown in below table.

<table border="1" cellpadding="0" cellspacing="0" width="1115" style="border-collapse:
 collapse;table-layout:fixed;width:836pt">
 <colgroup><col width="360" style="mso-width-source:userset;mso-width-alt:10336;width:242pt">
 <col width="72" span="11" style="width:54pt">
 </colgroup><tbody><tr height="18" style="height:13.5pt">
  <td height="18" class="xl65" width="360" style="height:13.5pt;width:242pt">Method</td>
  <td class="xl71" align="right" width="72" style="border-left:none;width:54pt">1</td>
  <td class="xl71" align="right" width="72" style="border-left:none;width:54pt">2</td>
  <td class="xl71" align="right" width="72" style="border-left:none;width:54pt">3</td>
  <td class="xl71" align="right" width="72" style="border-left:none;width:54pt">4</td>
  <td class="xl71" align="right" width="72" style="border-left:none;width:54pt">5</td>
  <td class="xl71" align="right" width="72" style="border-left:none;width:54pt">6</td>
  <td class="xl71" align="right" width="72" style="border-left:none;width:54pt">7</td>
  <td class="xl71" align="right" width="72" style="border-left:none;width:54pt">8</td>
  <td class="xl71" align="right" width="72" style="border-left:none;width:54pt">9</td>
  <td class="xl71" align="right" width="72" style="border-left:none;width:54pt">10</td>
  <td class="xl68" width="72" style="border-left:none;width:54pt;text-align:right">Avg(ms)</td>
 </tr>
 <tr height="18" style="height:13.5pt">
  <td height="18" class="xl69" style="height:13.5pt;border-top:none">ffwt_plan_dft_2d</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">72.54102</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">64.63599</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">55.90796</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">55.17505</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">55.146</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">56.03003</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">55.26685</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">55.08496</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">55.23608</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">55.11401</td>
  <td class="xl69" align="right" style="border-top:none;border-left:none">58.0138</td>
 </tr>
 <tr height="18" style="height:13.5pt">
  <td height="18" class="xl69" style="height:13.5pt;border-top:none">ffwt_plan_dft_r2c_2d</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">35.82813</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">24.96289</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">24.07886</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">24.4751</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">24.16992</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">24.29199</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">23.98706</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">24.5669</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">23.98706</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">24.32202</td>
  <td class="xl69" align="right" style="border-top:none;border-left:none">25.467</td>
 </tr>
 <tr height="18" style="height:13.5pt">
  <td height="18" class="xl69" style="height:13.5pt;border-top:none">ffwtf_plan__dft_r2c_2d</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">36.59106</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">21.4231</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">20.81299</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">17.91284</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">16.69287</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">19.25708</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">15.41089</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">15.25806</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">15.31885</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">15.29004</td>
  <td class="xl69" align="right" style="border-top:none;border-left:none">19.3968</td>
 </tr>
 <tr height="18" style="height:13.5pt">
  <td height="18" class="xl70" style="height:13.5pt;border-top:none">ffwtf_plan__dft_r2c_2d(neon)</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">56.67188</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">4.333984</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">4.150879</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">4.089844</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">4.149902</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">4.029053</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">4.150879</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">4.943848</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">4.180908</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">5.249023</td>
  <td class="xl72" align="right" style="border-top:none;border-left:none">9.59502</td>
 </tr>
 <tr height="18" style="height:13.5pt">
  <td height="18" class="xl69" style="height:13.5pt;border-top:none">ffwtf_plan__dft_r2c_2d(threads=4)</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">65.21582</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">29.14404</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">31.34082</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">32.07398</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">21.0271</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">22.91797</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">20.84302</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">22.15601</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">24.2002</td>
  <td class="xl66" align="right" style="border-top:none;border-left:none">33.99707</td>
  <td class="xl69" align="right" style="border-top:none;border-left:none">30.2916</td>
 </tr>
 <tr height="18" style="height:13.5pt">
  <td height="18" class="xl70" style="height:13.5pt;border-top:none">ffwtf_plan__dft_r2c_2d(threads=4)(n<span style="display:none">eon)</span></td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">48.49316</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">16.8772</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">14.70996</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">15.47315</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">15.5332</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">16.02197</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">20.47803</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">14.43506</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">13.76318</td>
  <td class="xl67" align="right" style="border-top:none;border-left:none">13.61084</td>
  <td class="xl72" align="right" style="border-top:none;border-left:none">18.9396</td>
 </tr>
 <tr height="18" style="height:13.5pt">
  <td height="18" colspan="12" style="height:13.5pt;mso-ignore:colspan"></td>
 </tr>
 <tr height="18" style="height:13.5pt">
  <td height="18" style="height:13.5pt">Test Phone</td>
  <td colspan="11" style="mso-ignore:colspan">Google Nexus 4(ARQ8064<span style="mso-spacerun:yes">&nbsp; </span>1.5GHz x 4)</td>
 </tr>
 <tr height="18" style="height:13.5pt">
  <td height="18" style="height:13.5pt">Test Data</td>
  <td colspan="11" style="mso-ignore:colspan">Input: 160 x 160</td>
 </tr>
 <!--[if supportMisalignedColumns]-->
 <tr height="0" style="display:none">
  <td width="360" style="width:242pt"></td>
  <td width="72" style="width:54pt"></td>
  <td width="72" style="width:54pt"></td>
  <td width="72" style="width:54pt"></td>
  <td width="72" style="width:54pt"></td>
  <td width="72" style="width:54pt"></td>
  <td width="72" style="width:54pt"></td>
  <td width="72" style="width:54pt"></td>
  <td width="72" style="width:54pt"></td>
  <td width="72" style="width:54pt"></td>
  <td width="72" style="width:54pt"></td>
  <td width="72" style="width:54pt"></td>
 </tr>
 <!--[endif]-->
</tbody></table>