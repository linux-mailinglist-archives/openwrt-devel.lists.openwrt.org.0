Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A800180ED0
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 05:02:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:Message-ID:To:From:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YqJ6yaKRxbuQ75FYrUqYH0A68TKVd9EJ/3kUhg3ZmlQ=; b=GGo
	3LdXeHaFhxRQCO/GfDNUNL+Iwuhp+AenGmOB+UbB/NBekK+xTv7K79kuaQHq3WaHRqkbcEtyZyw2d
	0W4EmNWKkNsu9gZhgp1Ea4Egw/xEs9Niz14ZBrv8dRN6dAQVmHTQOFJdoBPmzGtS1lGdCjlE8FlwF
	2pvSFT8PBoONMCnYJnSOMaWhM5HxvjTtPgNQD7uqeKWIEsoRste8EgX74xuIIQWI8RIfh1sa6gkDE
	/kHCacr3jxF0Aff/jtswr1BrAFMdN7jJtrLkHa9MObd4P4x+vuqZgbjbqFpJU5Pr33AK1BKQGmN3S
	g+mKb3HEw+ywAb9MQlDKGmcbT1wMXVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBsYx-0001nL-NW; Wed, 11 Mar 2020 04:01:43 +0000
Received: from ucmailus34.sendcloud.org ([107.150.104.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBsYl-0001m2-7x
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 04:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=service.startopshop.com; i=@service.startopshop.com; q=dns/txt;
 s=mail; t=1583899280; h=date : from : reply-to : to : message-id :
 subject : mime-version : content-type : list-unsubscribe : from;
 bh=ysnZvBRU2adTMwjx+fvtkr6ny/j8CouWQfB7Up6R2pE=;
 b=oZROoM9XHFmHrXbu0sseT5uA2UNqAqWh1Im+fks+iVf7V5fpqKoghBIYj4o55NHf6GrYl
 v767WOw/KZO69ctfe6rdzFhOABjmZUu+MoZ6jRtECPBppJW8CVwruOpM9Ay+vCOHOTuuoBk
 PgQ4nC547gRJf5in+6+/i0cVsXCYQOI=
Received: from sendcloud.api (Unknown [127.0.0.1]) by SendCloud Inbound Server
 with ESMTPA id 1BFC5C27-1CCC-45C4-ADBB-34ED4850B10B.1 envelope-from
 <sales01@service.startopshop.com> (authenticated bits=0);
 Wed, 11 Mar 2020 12:01:20 +0800
Date: Wed, 11 Mar 2020 12:01:20 +0800 (CST)
From: Sophi <sales01@service.startopshop.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <1583899280141_99612_24480_1202.sc-10_9_12_206-inbound0$openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="----=_Part_29320079_508848542.1583899280124"
SC-Custom-nodeId: 179
SC-Custom-originalTaskCode: 54466ad6-214a-40b7-bab0-0ecc1db9a0c6
SC-Custom-channelId: 176
X-SMTPAPI: 
X-SENDCLOUD-UUID: 1583899280141_99612_24480_1202.sc-10_9_12_206-inbound0$openwrt-devel@lists.openwrt.org
X-SENDCLOUD-LOG: 1583899280141_99612_24480_1202.sc-10_9_12_206-inbound0$openwrt-devel@lists.openwrt.org#openwrt-devel@lists.openwrt.org#164594#99612#0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_210131_571072_3C421576 
X-CRM114-Status: UNSURE (   2.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [107.150.104.125 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.6 HTML_MIME_NO_HTML_TAG  HTML-only message, but there is no HTML
 tag
Subject: [OpenWrt-Devel] =?utf-8?q?plastic_mould_component_making_service?=
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: Sophi <sales01@jpmould.com>
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


------=_Part_29320079_508848542.1583899280124
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"content_box">                   <div>     <table cellspacing=
=3D"0" cellpadding=3D"0" style=3D"width:100%;background-color:#F0F0F0;">   =
  <tbody>     <tr>         <td>                      <table cellspacing=3D"=
0" cellpadding=3D"0" style=3D"width:100%;margin:0 auto;max-width:800px;min-=
width:400px">     <tbody>              <tr style=3D"margin:0px; background-=
color: #F8F8F8;text-align: left;height: 60px;">                            =
 <td style=3D"margin:0px">                     <div style=3D"margin:0px;dis=
play: inline-block;height:60px;width:390px;">                         <p st=
yle=3D"margin:0px;height:10px;"></p>                         <span style=3D=
"margin:0px;font-family: Arial;font-size:28px;color: #7F8C8D;font-weight:bo=
ld;padding-left:20px;display: inline-block;height:40px;line-height: 40px;">=
RECOMMEND</span>                         <p style=3D"margin:0px;height:10px=
;"></p>                     </div>                     <div style=3D"margin=
:0px;display: inline-block;height:60px;width:390px;vertical-align: top;text=
-align:right;">                         <p style=3D"margin:0px;height:8px;"=
></p>                         <span style=3D"margin:0px;display:inline-bloc=
k;font-family: Arial;font-size:16px;color: #7F8C8D;font-weight: bold; verti=
cal-align: bottom;padding-right: 8px;">launched by</span>                  =
                                <img src=3D"http://td-cms-company.startopsh=
op.com/08d18b41-604d-448a-9577-33125a499513.jpg" style=3D"height:40px !impo=
rtant;max-width:240px;">                                                   =
<p style=3D"margin:0px;height:10px;"></p>                     </div>       =
          </td>                     </tr>          </tbody> </table>       =
       </td>     </tr>     </tbody> </table> </div>                    <div=
>     <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:100%;backgr=
ound-color:#F0F0F0;">     <tbody>     <tr>         <td>                    =
  <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:100%;margin:0 a=
uto;max-width:800px;min-width:400px">     <tbody>              <tr style=3D=
"margin:0px;height:400px;">                             <td style=3D"margin=
:0px;                     text-align:center;                     width:100%=
;                     background-repeat: no-repeat;background-size:100% 100=
%;                     background-image: url(http://td-cms-banner.startopsh=
op.com/a5b962a8-706c-4725-a377-1ccd3c3efb22.jpg?imageMogr2/crop/!971x485a0a=
47);                 ">                                      </td>         =
            </tr>          </tbody> </table>              </td>     </tr>  =
   </tbody> </table> </div>                    <div>     <table cellspacing=
=3D"0" cellpadding=3D"0" style=3D"width:100%;background-color:#F0F0F0;">   =
  <tbody>     <tr>         <td>                      <table cellspacing=3D"=
0" cellpadding=3D"0" style=3D"width:100%;margin:0 auto;max-width:800px;min-=
width:400px">     <tbody>              <tr style=3D"margin:0px;background: =
white">                             <td style=3D"margin:0px;               =
  text-align: center;background: white; height:106px;padding-bottom: 15px; =
                background:no-repeat 50% 50% url('http://edm-cus-tpl.starto=
pshop.com/RECOMMEND.png');                 ">                     <p style=
=3D"margin:0px;height:15px;"></p>                     <p style=3D"margin:0p=
x;width:100%;font-size: 28px;color: #1DCAF2; text-align: center;font-weight=
: bold">                         Quick View                     </p>       =
          </td>                     </tr>          </tbody> </table>       =
       </td>     </tr>     </tbody> </table> </div>                    <div=
>     <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:100%;backgr=
ound-color:#F0F0F0;">     <tbody>     <tr>         <td>                    =
  <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:100%;margin:0 a=
uto;max-width:800px;min-width:400px">     <tbody>              <tr style=3D=
"margin:0px;background: white;">                             <td style=3D"m=
argin:0px;text-align: center;background: white; height:106px;padding-top: 3=
0px;padding-bottom:38px;">                     <div style=3D"margin:0px">  =
                       <div style=3D"display: inline-block;width:375px;">  =
                           <p style=3D"display: inline-block;width:375px;he=
ight:375px;margin-left: 16px;">                                 <img style=
=3D"margin-left:-20px;width: 350px;height:350px;" src=3D"http://td-cms-prod=
uct.startopshop.com/2c095087-c095-4a66-8948-824ed5881193.jpg?imageMogr2/cro=
p/!750x750a0a0">                             </p>                          =
   <p style=3D"width: 100%;height: 18px;"></p>                         </di=
v>                           <p style=3D"display: inline-block;width:375px;=
vertical-align: top;margin-left: 20px;">                             <label=
 style=3D"margin-bottom:25px;width:100%;display:inline-block;font-size: 24p=
x;font-family: 'Arial';font-weight:bold;color:#191919;text-align: left;line=
-height:34px;word-wrap:break-word;padding-right: 25px;">mould part for pack=
ing and cosmetics mold</label>                             <label style=3D"=
color:#CCCCCC;display:inline-block;width:100%;font-size: 14px;font-family: =
'Arial';color:#939393;text-align: left;line-height: 1.1875rem;">           =
                      <label style=3D"color:#666666"> 1 Piece/Pieces</label=
>                                 <label style=3D"margin-left: 15px;color:#=
999999"> (Min. Order)</label>                             </label>         =
                    <label style=3D"margin-top:8px;display:inline-block;wid=
th:100%;font-size: 14px;font-family: 'Arial';color:#939393;text-align: left=
;height:1.1875rem;line-height: 1.1875rem;">                                =
 <label style=3D"color:#666666;"> FOB Reference Price:</label>             =
                    <label style=3D"margin-left: 15px;color:#FF856D"> Click=
 the botton below</label>                             </label>             =
                <label style=3D"text-align: left; margin-top: 30px;width:10=
0%;display:inline-block;margin-bottom: 28px;">                             =
    <a  href=3D"http://etrack02.com/track/click/eyJtYWlsbGlzdF9pZCI6IDAsICJ=
0YXNrX2lkIjogIiIsICJlbWFpbF9pZCI6ICIxNTgzODk5MjgwMTQxXzk5NjEyXzI0NDgwXzEyMD=
Iuc2MtMTBfOV8xMl8yMDYtaW5ib3VuZDAkb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZ=
yIsICJzaWduIjogIjRhYjNiODNkOTUyMTNmYjIwMzU1MGE5N2MzYzBlMzQ1IiwgInVzZXJfaGVh=
ZGVycyI6IHsiU0MtQ3VzdG9tLW5vZGVJZCI6ICIxNzkiLCAiU0MtQ3VzdG9tLW9yaWdpbmFsVGF=
za0NvZGUiOiAiNTQ0NjZhZDYtMjE0YS00MGI3LWJhYjAtMGVjYzFkYjlhMGM2IiwgIlNDLUN1c3=
RvbS1jaGFubmVsSWQiOiAiMTc2In0sICJsYWJlbCI6IDAsICJ0cmFja19kb21haW4iOiAiZXRyY=
WNrMDIuY29tIiwgImxpbmsiOiAiaHR0cCUzQS8vd3d3LmppbnBhbm1vdWxkLmNvbS9lbmdsaXNo=
L3Byb2R1Y3QvQ29zbWV0aWNzLyIsICJ1c2VyX2lkIjogOTk2MTIsICJvdmVyc2VhcyI6ICJmYWx=
zZSIsICJjYXRlZ29yeV9pZCI6IDE2NDU5NH0=3D.html" alt=3D"more" target=3D"_blank=
" style=3D"font-weight: bold;                                 cursor: point=
er;                                 display:inline-block;                  =
               font-size:14px;                                 font-family:=
 'Arial';                                 padding:8px 18px;                =
                 border-radius:40px;                                 backgr=
ound-color:#0798EB;                                 color:#ffffff;         =
                        text-decoration: none;" >                          =
           LEARN MORE                                 </a>                 =
            </label>                         </p>                     </div=
>                     <p style=3D"margin:0px;color:#CCCCCC;text-align: cent=
er">                                                  <span style=3D"width:=
92%;min-width:400px;display: inline-block;text-align: center;">            =
                     <span style=3D"display:inline-block;color:#999999;widt=
h: 25%;text-align: left;overflow: hidden;float: left;line-height:20px;font-=
size: 14px;padding-right:10px;white-space: pre-wrap;word-break: break-all;"=
>usage :</span>                                 <span style=3D"display:inli=
ne-block;color:#666666; max-width: 70%;text-align: left;float: left;line-he=
ight: 20px;font-size: 14px;white-space: pre-wrap;word-break: break-all;">to=
oling part for packaing and cosmetics</span>                          </spa=
n>                                                  <span style=3D"width:92=
%;min-width:400px;display: inline-block;text-align: center;">              =
                   <span style=3D"display:inline-block;color:#999999;width:=
 25%;text-align: left;overflow: hidden;float: left;line-height:20px;font-si=
ze: 14px;padding-right:10px;white-space: pre-wrap;word-break: break-all;">c=
ustomer file support:</span>                                 <span style=3D=
"display:inline-block;color:#666666; max-width: 70%;text-align: left;float:=
 left;line-height: 20px;font-size: 14px;white-space: pre-wrap;word-break: b=
reak-all;">DWG,STP.STEP. PDF </span>                          </span>      =
                                            <span style=3D"width:92%;min-wi=
dth:400px;display: inline-block;text-align: center;">                      =
           <span style=3D"display:inline-block;color:#999999;width: 25%;tex=
t-align: left;overflow: hidden;float: left;line-height:20px;font-size: 14px=
;padding-right:10px;white-space: pre-wrap;word-break: break-all;">delivery:=
</span>                                 <span style=3D"display:inline-block=
;color:#666666; max-width: 70%;text-align: left;float: left;line-height: 20=
px;font-size: 14px;white-space: pre-wrap;word-break: break-all;">8-14 worki=
ng days</span>                          </span>                            =
                      <span style=3D"width:92%;min-width:400px;display: inl=
ine-block;text-align: center;">                                 <span style=
=3D"display:inline-block;color:#999999;width: 25%;text-align: left;overflow=
: hidden;float: left;line-height:20px;font-size: 14px;padding-right:10px;wh=
ite-space: pre-wrap;word-break: break-all;">tolerances:</span>             =
                    <span style=3D"display:inline-block;color:#666666; max-=
width: 70%;text-align: left;float: left;line-height: 20px;font-size: 14px;w=
hite-space: pre-wrap;word-break: break-all;">=C2=B10.005-0.01</span>       =
                   </span>                                                 =
 <span style=3D"width:92%;min-width:400px;display: inline-block;text-align:=
 center;">                                 <span style=3D"display:inline-bl=
ock;color:#999999;width: 25%;text-align: left;overflow: hidden;float: left;=
line-height:20px;font-size: 14px;padding-right:10px;white-space: pre-wrap;w=
ord-break: break-all;">sample free or not:</span>                          =
       <span style=3D"display:inline-block;color:#666666; max-width: 70%;te=
xt-align: left;float: left;line-height: 20px;font-size: 14px;white-space: p=
re-wrap;word-break: break-all;">yes</span>                          </span>=
                                              </p>                 </td>   =
                  </tr>          </tbody> </table>              </td>     <=
/tr>     </tbody> </table> </div>                    <div>     <table cells=
pacing=3D"0" cellpadding=3D"0" style=3D"width:100%;background-color:#F0F0F0=
;">     <tbody>     <tr>         <td>                      <table cellspaci=
ng=3D"0" cellpadding=3D"0" style=3D"width:100%;margin:0 auto;max-width:800p=
x;min-width:400px">     <tbody>              <tr style=3D"margin:0px;backgr=
ound: white">                             <td style=3D"margin:0px;         =
        text-align: center;background: white; height:106px;padding-bottom: =
15px;                 background:no-repeat 50% 50% url('http://edm-cus-tpl.=
startopshop.com/RECOMMEND.png');                 ">                     <p =
style=3D"margin:0px;height:15px;"></p>                     <p style=3D"marg=
in:0px;width:100%;font-size: 28px;color: #1DCAF2; text-align: center;font-w=
eight: bold">                         More Information                     =
</p>                 </td>                     </tr>          </tbody> </ta=
ble>              </td>     </tr>     </tbody> </table> </div>             =
       <div>          <table cellspacing=3D"0" cellpadding=3D"0" style=3D"w=
idth:100%;background-color:#F0F0F0;">     <tbody>     <tr>         <td>    =
                  <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width=
:100%;margin:0 auto;max-width:800px;min-width:400px">     <tbody>          =
    <tr style=3D"margin:0px;background: #f8f8f8">                          =
   <td style=3D"margin:0px;width: 100%;text-align: center">                =
     <p style=3D"margin:0px;width:100%;background: white;padding-top: 30px;=
background: #f8f8f8">                         <img style=3D"width:93%;" src=
=3D"http://td-cms-product.startopshop.com/8af4e41c-6402-4809-b9ec-0f08ba404=
d89.jpg?imageMogr2/crop/!616x620a0a0" alt=3D"">                     </p>   =
                                       <p style=3D"margin:0px;width:100%;ba=
ckground: white;padding-top: 30px;background: #f8f8f8">                    =
     <img style=3D"width:93%;" src=3D"http://td-cms-product.startopshop.com=
/a56f00e3-b541-4957-89a1-8110516a389f.jpg?imageMogr2/crop/!750x745a0a4" alt=
=3D"">                     </p>                                          <p=
 style=3D"margin:0px;width:100%;background: white;padding-top: 30px;backgro=
und: #f8f8f8">                         <img style=3D"width:93%;" src=3D"htt=
p://td-cms-product.startopshop.com/d43438af-fd35-4014-a6dc-dbb17216fd6c.jpg=
?imageMogr2/crop/!618x620a0a0" alt=3D"">                     </p>          =
                                <p style=3D"margin:0px;height:30px;"></p>  =
               </td>                     </tr>          </tbody> </table>  =
            </td>     </tr>     </tbody> </table>      </div>              =
      <div>     <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:1=
00%;background-color:#F0F0F0;">     <tbody>     <tr>         <td>          =
            <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:100%;=
margin:0 auto;max-width:800px;min-width:400px">     <tbody>              <t=
r style=3D"margin:0px;background: white;">                             <td =
style=3D"margin:0px;text-align: center;background: #f8f8f8">               =
      <label style=3D"margin:0px;text-align: center; width:100%;display: in=
line-block;padding-bottom: 28px;">                         <a  href=3D"http=
://etrack02.com/track/click/eyJtYWlsbGlzdF9pZCI6IDAsICJ0YXNrX2lkIjogIiIsICJ=
lbWFpbF9pZCI6ICIxNTgzODk5MjgwMTQxXzk5NjEyXzI0NDgwXzEyMDIuc2MtMTBfOV8xMl8yMD=
YtaW5ib3VuZDAkb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZyIsICJzaWduIjogIjRhY=
jNiODNkOTUyMTNmYjIwMzU1MGE5N2MzYzBlMzQ1IiwgInVzZXJfaGVhZGVycyI6IHsiU0MtQ3Vz=
dG9tLW5vZGVJZCI6ICIxNzkiLCAiU0MtQ3VzdG9tLW9yaWdpbmFsVGFza0NvZGUiOiAiNTQ0NjZ=
hZDYtMjE0YS00MGI3LWJhYjAtMGVjYzFkYjlhMGM2IiwgIlNDLUN1c3RvbS1jaGFubmVsSWQiOi=
AiMTc2In0sICJsYWJlbCI6IDAsICJ0cmFja19kb21haW4iOiAiZXRyYWNrMDIuY29tIiwgImxpb=
msiOiAiaHR0cCUzQS8vd3d3LmppbnBhbm1vdWxkLmNvbS9lbmdsaXNoL3Byb2R1Y3QvQ29zbWV0=
aWNzLyIsICJ1c2VyX2lkIjogOTk2MTIsICJvdmVyc2VhcyI6ICJmYWxzZSIsICJjYXRlZ29yeV9=
pZCI6IDE2NDU5NH0=3D.html" target=3D"_blank" alt=3D"homepage" style=3D"font-=
weight: bold; display:inline-block;font-size:14px;font-family: 'Arial';padd=
ing:8px 18px;border-radius:40px;background-color:#0798EB;color:#ffffff;text=
-decoration: none" >                             LEARN MORE                =
         </a>                     </label>                 </td>           =
          </tr>          </tbody> </table>              </td>     </tr>    =
 </tbody> </table> </div>                    <div>     <table cellspacing=
=3D"0" cellpadding=3D"0" style=3D"width:100%;background-color:#F0F0F0;">   =
  <tbody>     <tr>         <td>                      <table cellspacing=3D"=
0" cellpadding=3D"0" style=3D"width:100%;margin:0 auto;max-width:800px;min-=
width:400px">     <tbody>              <tr style=3D"margin:0px;background: =
white">                             <td style=3D"margin:0px;               =
  text-align: center;background: white; height:106px;padding-bottom: 15px; =
                background:no-repeat 50% 50% url('http://edm-cus-tpl.starto=
pshop.com/RECOMMEND.png');                 ">                     <p style=
=3D"margin:0px;height:15px;"></p>                     <p style=3D"margin:0p=
x;width:100%;font-size: 28px;color: #1DCAF2; text-align: center;font-weight=
: bold">                         Company Profile                     </p>  =
               </td>                     </tr>          </tbody> </table>  =
            </td>     </tr>     </tbody> </table> </div>                   =
 <div>     <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:100%;b=
ackground-color:#F0F0F0;">     <tbody>     <tr>         <td>               =
       <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:100%;margi=
n:0 auto;max-width:800px;min-width:400px">     <tbody>              <tr sty=
le=3D"margin:0px">                             <td style=3D"margin:0px;widt=
h:25px;background:#ffffff;">                                      </td>    =
                         <td style=3D"margin:0px;text-align:center;backgrou=
nd:#ffffff;overflow: hidden">                     <pre style=3D"margin:0px;=
white-space: pre-wrap;font-family: 'Arial';line-height:20px;font-size:14px;=
text-align: left;">Our company is specialized in manufacturing nonstandard =
plastic and die mold parts.
Our Business Range:
Nonstandard plastic and Die mould parts
Machine Tools
CNC Boring
TurningCenters
Vertical Turning Centers=20
CNC Lathes=20
Vertical CNC Lathes
Machining Centers
External&amp;Internal Grinding=20
Surface Grinding
modern CNC machinery, CAD/CAM software and supported with experienced toolm=
akers we offer a comprehensive range of services from mould tool design and=
 manufacture, precision machining, manufacture of jigs and fixtures, toolin=
g modifications and routine maintenance and refurbishment of tools.</pre>  =
                   <p style=3D"margin:0px;height:30px;margin: 0px;"></p>   =
              </td>                             <td style=3D"margin:0px;wid=
th:25px;background:#ffffff;">                                      </td>   =
                  </tr>          </tbody> </table>              </td>     <=
/tr>     </tbody> </table> </div>                    <div>     <table cells=
pacing=3D"0" cellpadding=3D"0" style=3D"width:100%;background-color:#F0F0F0=
;">     <tbody>     <tr>         <td>                      <table cellspaci=
ng=3D"0" cellpadding=3D"0" style=3D"width:100%;margin:0 auto;max-width:800p=
x;min-width:400px">     <tbody>              <tr style=3D"margin:0px;backgr=
ound: white;">                             <td style=3D"margin:0px;text-ali=
gn: center;background: #ffffff">                     <label style=3D"margin=
:0px;text-align: center; width:100%;display: inline-block;padding-bottom: 2=
8px;">                         <a  href=3D"http://etrack02.com/track/click/=
eyJtYWlsbGlzdF9pZCI6IDAsICJ0YXNrX2lkIjogIiIsICJlbWFpbF9pZCI6ICIxNTgzODk5Mjg=
wMTQxXzk5NjEyXzI0NDgwXzEyMDIuc2MtMTBfOV8xMl8yMDYtaW5ib3VuZDAkb3BlbndydC1kZX=
ZlbEBsaXN0cy5vcGVud3J0Lm9yZyIsICJzaWduIjogIjI0NzdjMDM4MDI1MDJkNDA2YzYzZjNlY=
zFjYTVkMGE5IiwgInVzZXJfaGVhZGVycyI6IHsiU0MtQ3VzdG9tLW5vZGVJZCI6ICIxNzkiLCAi=
U0MtQ3VzdG9tLW9yaWdpbmFsVGFza0NvZGUiOiAiNTQ0NjZhZDYtMjE0YS00MGI3LWJhYjAtMGV=
jYzFkYjlhMGM2IiwgIlNDLUN1c3RvbS1jaGFubmVsSWQiOiAiMTc2In0sICJsYWJlbCI6IDAsIC=
J0cmFja19kb21haW4iOiAiZXRyYWNrMDIuY29tIiwgImxpbmsiOiAiaHR0cCUzQS8vd3d3Lmppb=
nBhbm1vdWxkLmNvbS9lbmdsaXNoL2Fib3V0LyIsICJ1c2VyX2lkIjogOTk2MTIsICJvdmVyc2Vh=
cyI6ICJmYWxzZSIsICJjYXRlZ29yeV9pZCI6IDE2NDU5NH0=3D.html" target=3D"_blank" =
alt=3D"homepage" style=3D"font-weight: bold; display:inline-block;font-size=
:14px;font-family: 'Arial';padding:8px 18px;border-radius:40px;background-c=
olor:#0798EB;color:#ffffff;text-decoration: none" >                        =
     LEARN MORE                         </a>                     </label>  =
               </td>                     </tr>          </tbody> </table>  =
            </td>     </tr>     </tbody> </table> </div>                   =
 <div>     <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:100%;b=
ackground-color:#F0F0F0;">     <tbody>     <tr>         <td>               =
       <table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:100%;margi=
n:0 auto;max-width:800px;min-width:400px">     <tbody>              <tr sty=
le=3D"margin:0px;background: #f8f8f8;width: 100%;text-align: center">      =
                       <td style=3D"margin:0px">                     <div s=
tyle=3D"margin:0px;margin: 0 auto;width:395px;display: inline-block;vertica=
l-align: middle;text-align: left">                         <p style=3D"marg=
in:0px;height:20px"></p>                         <p style=3D"margin:0px;fon=
t-size:28px;font-family:Arial;color: #333333;padding-left: 16px;">Contact u=
s</p>                         <p style=3D"margin:0px;height:20px"></p>     =
                </div>                     <div style=3D"margin:0px;margin:=
 0 auto;width:395px;display: inline-block;vertical-align: middle;">        =
              </div>                 </td>                     </tr>       =
       <tr style=3D"margin:0px;background: #f8f8f8;width: 100%;text-align: =
center">                             <td style=3D"margin:0px">             =
        <div style=3D"margin:0px;margin: 0 auto;width:395px;display: inline=
-block;vertical-align: middle;text-align: left">                         <d=
iv style=3D"margin:0px;padding-left:16px;">                              <d=
iv style=3D"display:inline-block;width:55px;height:55px;background:no-repea=
t  url('http://td-cms-contact.startopshop.com/cb8238c9-0e73-499d-a282-405b3=
ba2e8ae.jpg?imageMogr2/crop/!1097x1097a0a43');background-size: 55px 55px;">=
</div>                              <div style=3D"display:inline-block;vert=
ical-align: top;padding-left:5px">                                  <p styl=
e=3D"margin:0px;height:8px"></p>                                  <div styl=
e=3D"max-width:315px;font-size:14px;font-family:Arial;color: #333333;line-h=
eight: 18px">                                      <span style=3D"font-weig=
ht: bold">Sophi</span>                                      <span> - </span=
>                                      <span>sales Manager</span>          =
                        </div>                                  <div style=
=3D"font-size:14px;font-family:Arial;color: #333333;line-height: 18px"> sal=
es01@jpmould.com</div>                              </div>                 =
        </div>                         <div style=3D"margin: 0px;padding-le=
ft:16px;">                             <p style=3D"height:10px;"></p>      =
                      <div style=3D"display: inline-block">                =
                <p style=3D"margin:0px;font-size:14px;font-family:Arial;col=
or: #333333;line-height: 18px;font-weight:bold">  +86 15017101717</p>      =
                          <p style=3D"margin:0px;height:2px"></p>          =
                      <p style=3D"margin:0px;font-size:14px;font-family:Ari=
al;color: #333333;line-height: 18px;">Tel:&nbsp;&nbsp;+86 15017121717</p>  =
                              <p style=3D"margin:0px;height:2px"></p>      =
                          <p style=3D"margin:0px;font-size:14px;font-family=
:Arial;color: #333333;line-height: 18px;">Fax:&nbsp;&nbsp;+86 </p>         =
                       <p style=3D"margin:0px;height:2px"></p>             =
                   <p style=3D"margin:0px;font-size:14px;font-family:Arial;=
color: #333333;line-height: 18px;">Whatsapp:&nbsp;&nbsp;+86 </p>           =
                     <p style=3D"margin:0px;height:2px"></p>               =
                 <p style=3D"margin:0px;font-size:14px;font-family:Arial;co=
lor: #333333;line-height: 18px;">Wechat:&nbsp;&nbsp;15017101717</p>        =
                        <p style=3D"margin:0px;height:30px"></p>           =
                 </div>                            <div style=3D"display: i=
nline-block;text-align: right;padding-left:72px;">                         =
        <div style=3D"padding-left: 5px">                                  =
   <p style=3D"margin:0px;width:80px;height:80px; background:no-repeat url(=
'http://td-cms-contact.startopshop.com/07ebb9ac-fa3a-4a1b-a25b-8f41468f8fbf=
.png?imageMogr2/crop/!384x384a21a27');background-size: 80px 80px;"></p>    =
                             </div>                                        =
                         <p style=3D"margin:0px;font-size:12px;font-family:=
Arial;color: #999999;line-height: 23px;text-align: left;">Wechat QR code</p=
>                                                            </div>        =
                 </div>                     </div>                     <div=
 style=3D"margin:0px;margin: 0 auto;width:395px;display: inline-block;verti=
cal-align: top;text-align: left">                         <p style=3D"margi=
n:0px;width:350px;font-size:14px;font-family:Arial;color: #333333;font-weig=
ht: bold;padding-left:16px;line-height: 18px; word-wrap:break-word;">      =
                       Dongguan Jinpan Mould Parts Co,.Ltd                 =
        </p>                         <p style=3D"margin:0px;height:20px"></=
p>                         <p style=3D"margin:0px;width:350px;font-size:14p=
x;font-family:Arial;color: #333333;padding-left:16px;line-height: 18px; wor=
d-wrap:break-word;">                              No. 8 Chuangye Road, The =
First Indutrial Zone, Shangsha Street, Changan Town,&nbsp;Dongguan,&nbsp;Gu=
angdong,&nbsp;China                         </p>                         <p=
 style=3D"margin:0px;height:30px"></p>                         <p style=3D"=
margin:0px;width:100%;text-align: left;font-size:14px;padding-left: 16px;">=
                                                          <a  href=3D"http:=
//etrack02.com/track/click/eyJtYWlsbGlzdF9pZCI6IDAsICJ0YXNrX2lkIjogIiIsICJl=
bWFpbF9pZCI6ICIxNTgzODk5MjgwMTQxXzk5NjEyXzI0NDgwXzEyMDIuc2MtMTBfOV8xMl8yMDY=
taW5ib3VuZDAkb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZyIsICJzaWduIjogIjI0Mz=
dhNTFkMjQwNTVkZjZhY2ZiOTVjN2FiMDQ1YmIwIiwgInVzZXJfaGVhZGVycyI6IHsiU0MtQ3Vzd=
G9tLW5vZGVJZCI6ICIxNzkiLCAiU0MtQ3VzdG9tLW9yaWdpbmFsVGFza0NvZGUiOiAiNTQ0NjZh=
ZDYtMjE0YS00MGI3LWJhYjAtMGVjYzFkYjlhMGM2IiwgIlNDLUN1c3RvbS1jaGFubmVsSWQiOiA=
iMTc2In0sICJsYWJlbCI6IDAsICJ0cmFja19kb21haW4iOiAiZXRyYWNrMDIuY29tIiwgImxpbm=
siOiAiaHR0cCUzQS8vd3d3LmxpbmtlZGluLmNvbS9pbi9wYW4tamluLTY2MDI4MjE5OC8iLCAid=
XNlcl9pZCI6IDk5NjEyLCAib3ZlcnNlYXMiOiAiZmFsc2UiLCAiY2F0ZWdvcnlfaWQiOiAxNjQ1=
OTR9.html" target=3D"_blank" title=3D"facebook" ><img src=3D"http://edm-int=
-tpl.startopshop.com/facebook.png"></a>                                    =
                      <a  href=3D"http://etrack02.com/track/click/eyJtYWlsb=
GlzdF9pZCI6IDAsICJ0YXNrX2lkIjogIiIsICJlbWFpbF9pZCI6ICIxNTgzODk5MjgwMTQxXzk5=
NjEyXzI0NDgwXzEyMDIuc2MtMTBfOV8xMl8yMDYtaW5ib3VuZDAkb3BlbndydC1kZXZlbEBsaXN=
0cy5vcGVud3J0Lm9yZyIsICJzaWduIjogIjI0MzdhNTFkMjQwNTVkZjZhY2ZiOTVjN2FiMDQ1Ym=
IwIiwgInVzZXJfaGVhZGVycyI6IHsiU0MtQ3VzdG9tLW5vZGVJZCI6ICIxNzkiLCAiU0MtQ3Vzd=
G9tLW9yaWdpbmFsVGFza0NvZGUiOiAiNTQ0NjZhZDYtMjE0YS00MGI3LWJhYjAtMGVjYzFkYjlh=
MGM2IiwgIlNDLUN1c3RvbS1jaGFubmVsSWQiOiAiMTc2In0sICJsYWJlbCI6IDAsICJ0cmFja19=
kb21haW4iOiAiZXRyYWNrMDIuY29tIiwgImxpbmsiOiAiaHR0cCUzQS8vd3d3LmxpbmtlZGluLm=
NvbS9pbi9wYW4tamluLTY2MDI4MjE5OC8iLCAidXNlcl9pZCI6IDk5NjEyLCAib3ZlcnNlYXMiO=
iAiZmFsc2UiLCAiY2F0ZWdvcnlfaWQiOiAxNjQ1OTR9.html" target=3D"_blank" title=
=3D"twitter" ><img src=3D"http://edm-int-tpl.startopshop.com/twitter.png" s=
tyle=3D"margin-left: 16px"></a>                                            =
              <a  href=3D"http://etrack02.com/track/click/eyJtYWlsbGlzdF9pZ=
CI6IDAsICJ0YXNrX2lkIjogIiIsICJlbWFpbF9pZCI6ICIxNTgzODk5MjgwMTQxXzk5NjEyXzI0=
NDgwXzEyMDIuc2MtMTBfOV8xMl8yMDYtaW5ib3VuZDAkb3BlbndydC1kZXZlbEBsaXN0cy5vcGV=
ud3J0Lm9yZyIsICJzaWduIjogIjI0MzdhNTFkMjQwNTVkZjZhY2ZiOTVjN2FiMDQ1YmIwIiwgIn=
VzZXJfaGVhZGVycyI6IHsiU0MtQ3VzdG9tLW5vZGVJZCI6ICIxNzkiLCAiU0MtQ3VzdG9tLW9ya=
WdpbmFsVGFza0NvZGUiOiAiNTQ0NjZhZDYtMjE0YS00MGI3LWJhYjAtMGVjYzFkYjlhMGM2Iiwg=
IlNDLUN1c3RvbS1jaGFubmVsSWQiOiAiMTc2In0sICJsYWJlbCI6IDAsICJ0cmFja19kb21haW4=
iOiAiZXRyYWNrMDIuY29tIiwgImxpbmsiOiAiaHR0cCUzQS8vd3d3LmxpbmtlZGluLmNvbS9pbi=
9wYW4tamluLTY2MDI4MjE5OC8iLCAidXNlcl9pZCI6IDk5NjEyLCAib3ZlcnNlYXMiOiAiZmFsc=
2UiLCAiY2F0ZWdvcnlfaWQiOiAxNjQ1OTR9.html" target=3D"_blank" title=3D"youTub=
e" ><img src=3D"http://edm-int-tpl.startopshop.com/youtube.png" style=3D"ma=
rgin-left: 16px"></a>                                                      =
    <a href=3D"skype:live:.cid.e43e05629060e528/?call" target=3D"_blank" ti=
tle=3D"skype"><img src=3D"http://edm-int-tpl.startopshop.com/skype.png" sty=
le=3D"margin-left: 16px"></a>                                              =
            <a  href=3D"http://etrack02.com/track/click/eyJtYWlsbGlzdF9pZCI=
6IDAsICJ0YXNrX2lkIjogIiIsICJlbWFpbF9pZCI6ICIxNTgzODk5MjgwMTQxXzk5NjEyXzI0ND=
gwXzEyMDIuc2MtMTBfOV8xMl8yMDYtaW5ib3VuZDAkb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud=
3J0Lm9yZyIsICJzaWduIjogIjI0MzdhNTFkMjQwNTVkZjZhY2ZiOTVjN2FiMDQ1YmIwIiwgInVz=
ZXJfaGVhZGVycyI6IHsiU0MtQ3VzdG9tLW5vZGVJZCI6ICIxNzkiLCAiU0MtQ3VzdG9tLW9yaWd=
pbmFsVGFza0NvZGUiOiAiNTQ0NjZhZDYtMjE0YS00MGI3LWJhYjAtMGVjYzFkYjlhMGM2IiwgIl=
NDLUN1c3RvbS1jaGFubmVsSWQiOiAiMTc2In0sICJsYWJlbCI6IDAsICJ0cmFja19kb21haW4iO=
iAiZXRyYWNrMDIuY29tIiwgImxpbmsiOiAiaHR0cCUzQS8vd3d3LmxpbmtlZGluLmNvbS9pbi9w=
YW4tamluLTY2MDI4MjE5OC8iLCAidXNlcl9pZCI6IDk5NjEyLCAib3ZlcnNlYXMiOiAiZmFsc2U=
iLCAiY2F0ZWdvcnlfaWQiOiAxNjQ1OTR9.html" target=3D"_blank" title=3D"linkedin=
" ><img src=3D"http://edm-int-tpl.startopshop.com/linkedin.png" style=3D"ma=
rgin-left: 16px"></a>                                                      =
</p>                         <p style=3D"margin:0px;height:30px"></p>      =
               </div>                 </td>                     </tr>      =
    </tbody> </table>              </td>     </tr>     </tbody> </table> </=
div>               </div><table cellspacing=3D"0" cellpadding=3D"0" style=
=3D"width: 100%; background-color: #F0F0F0;">
			<tr>
				<td>
					<table cellspacing=3D"0" cellpadding=3D"0" style=3D"max-width: 800px;m=
in-width:400px;width:100%; margin: 0 auto;">
						<tr>
							<td>
								<table cellspacing=3D"0" cellpadding=3D"0" style=3D"max-width: 800p=
x;min-width:400px; width:100%;height: 100px; background-color: #E4E4E4;">
									<tr>
										<td style=3D"height: 100px; box-sizing: border-box; padding: 25px=
 50px; text-align: center; font-family: 'tahoma'; font-size: 14px; margin: =
0;">
											<p style=3D"line-height: 18px; color: #666666;margin: 12px 0;">W=
e're commissioned by user to send this email. If you do not wish to receive=
 it, please click to unsubscribe.</p>
											<p style=3D"margin-top: 10px;line-height: 16px; color: #AEAEAE; =
margin: 12px 0;">This message was sent to openwrt-devel@lists.openwrt.org b=
y XinbeeMail.</p>
											<p style=3D"margin-top: 15px;">
												<a title=3D"UnSubscribe" href=3D"http://etrack02.com/track/clic=
k/eyJtYWlsbGlzdF9pZCI6IDAsICJ0YXNrX2lkIjogIiIsICJlbWFpbF9pZCI6ICIxNTgzODk5M=
jgwMTQxXzk5NjEyXzI0NDgwXzEyMDIuc2MtMTBfOV8xMl8yMDYtaW5ib3VuZDAkb3BlbndydC1k=
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZyIsICJzaWduIjogIjNjYjY4MzNiNGU0MmY2ZDYzYmRlNzE=
wYmUxYzdiM2VkIiwgInVzZXJfaGVhZGVycyI6IHsiU0MtQ3VzdG9tLW5vZGVJZCI6ICIxNzkiLC=
AiU0MtQ3VzdG9tLW9yaWdpbmFsVGFza0NvZGUiOiAiNTQ0NjZhZDYtMjE0YS00MGI3LWJhYjAtM=
GVjYzFkYjlhMGM2IiwgIlNDLUN1c3RvbS1jaGFubmVsSWQiOiAiMTc2In0sICJsYWJlbCI6IDAs=
ICJ0cmFja19kb21haW4iOiAiZXRyYWNrMDIuY29tIiwgImxpbmsiOiAiaHR0cCUzQS8vcmNzLnh=
pbmJlZS5jb20vdW5zdWJzY3JpYmUuaHRtbCUzRnRhc2tDb2RlJTNEZmU0M2QxMDItMWI5MC00Nz=
g4LTg4NmMtN2I5ZDhiMDYwNmIyJTI2ZW1haWwlM0RvcGVud3J0LWRldmVsJTQwbGlzdHMub3Blb=
ndydC5vcmciLCAidXNlcl9pZCI6IDk5NjEyLCAib3ZlcnNlYXMiOiAiZmFsc2UiLCAiY2F0ZWdv=
cnlfaWQiOiAxNjQ1OTR9.html" style=3D"font-size:16px;border: none; text-decor=
ation: underline; font-weight: bold; color: #49A9EE;" >Unsubscribe</a>
											</p>
										</td>
									<tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table><br/><br/><div style=3D"width:1px;height:0px;overflow:hidden"><im=
g style=3D"width:0;height:0" alt=3D"" src=3D"http://etrack02.com/track/open=
/eyJtYWlsbGlzdF9pZCI6IDAsICJ0YXNrX2lkIjogIiIsICJlbWFpbF9pZCI6ICIxNTgzODk5Mj=
gwMTQxXzk5NjEyXzI0NDgwXzEyMDIuc2MtMTBfOV8xMl8yMDYtaW5ib3VuZDAkb3BlbndydC1kZ=
XZlbEBsaXN0cy5vcGVud3J0Lm9yZyIsICJzaWduIjogIjFhOWFkZDFkY2Q1MjJhMDUwMWYyOGUz=
MzM3MjdlNmVhIiwgInVzZXJfaGVhZGVycyI6IHsiU0MtQ3VzdG9tLW5vZGVJZCI6ICIxNzkiLCA=
iU0MtQ3VzdG9tLW9yaWdpbmFsVGFza0NvZGUiOiAiNTQ0NjZhZDYtMjE0YS00MGI3LWJhYjAtMG=
VjYzFkYjlhMGM2IiwgIlNDLUN1c3RvbS1jaGFubmVsSWQiOiAiMTc2In0sICJsYWJlbCI6IDAsI=
CJ0cmFja19kb21haW4iOiAiZXRyYWNrMDIuY29tIiwgInVzZXJfaWQiOiA5OTYxMiwgIm92ZXJz=
ZWFzIjogImZhbHNlIiwgImNhdGVnb3J5X2lkIjogMTY0NTk0fQ=3D=3D.gif"/></div>

------=_Part_29320079_508848542.1583899280124
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

------=_Part_29320079_508848542.1583899280124--




