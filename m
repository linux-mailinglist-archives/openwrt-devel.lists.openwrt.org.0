Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEBC1BDF6A
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 15:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:To:Mime-Version:From:Date:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xqTpbkxHD0umnnbCN9qKAyzdG9Fqti+0W02R1/+PvRM=; b=S0Jqal06DZB7IJeKJKMv8oH05+
	4G2S5iQmWODxwJyCtyjClz/jObYDdDi1a+w82wHdJQfOrEj7X4Y/COX7BNeyRSgnsJQguhIlwfPPb
	9+MHZDv2i4fRlyWz17g6Z8l5dP7ptOGZY2e65+4jIYFeGgeBYK0vLQ7pONuSrR8iZNz9ChXT7oJ0M
	NDChfv9LZkfJzU8K5dvpxrKP9PErL8Pq+ktR0Kkl+gRa60wndpdV27BfczDXBTl66zYhK9wIlmQpJ
	305C+ns91q1wASoF7Dz/R8Y4wI9QZktBIr0ABFNktEQsMtNiPkbdkOTT+JImMFX5JGq9by9Xq9d4O
	B7mrF8/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTn39-0000hU-HE; Wed, 29 Apr 2020 13:46:55 +0000
Received: from o2.lv1e.shared.sendgrid.net ([167.89.100.174])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTn32-0000gO-VK
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 13:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smartdev.vn; 
 h=content-type:from:mime-version:reply-to:subject:to:list-unsubscribe; 
 s=s1; bh=42lI5A1jWPTWP/rX4wVnBdc8HzPLM6wnW+FCGVev0po=; b=FR2sQhP
 35lrZ5Uu8v8jUMWngDGMdSmGR26LRdS9MXILnJbkK1ucTB2AjK18IZhTkWdIbe9y
 OpfTCpYSTBc5knR6sNhLx4plzTOGjrkrkSUUljN8R5neY441gK0Lbz2eJmsiZ17L
 G/A+QcdNycH3OM8MqQwmrRZ87HTt3aUIT2e4=
Date: Wed, 29 Apr 2020 12:43:23 +0000 (UTC)
From: "Arnaud Chadeyron" <arnaud.chadeyron@smartdev.vn>
Mime-Version: 1.0
To: openwrt-devel@lists.openwrt.org
Message-ID: <uH33WxLkSt6kQfH0rrrOZg@ismtpd0098p1mdw1.sendgrid.net>
X-SG-EID: C3xZdBqjDSvyHR+3uPPGAKfeQqaOY4Yl4oXQtTBfY4FOpHuERoDFi5dls2PD8Kfl3CyPpaHBodEFC2
 X+mlNz0ZYwAPfBVQNmuMa1pdACkL2PWJt4/qvYkIGv+Ohui2uIKC14KeL7iM/dT7OobE021as5p6TP
 GXKeIlY+/sXnNCe4QzZgHwOVece4YCWFMs6B3ffJHb0IM+6dzYQq5ChDQ9ION3FW8k8lPPepzFl8SA
 8mstARGpOUhW5DY42n8k/h
X-SG-ID: Z2FxZazunBjVeNuNdzHDqrF8mxuCpi0krmont6YQrP0mnkIWngxAD7zGzLjXWl1ao0EqYX0gxXpLh2
 uhTCDR9U6jF44LgcG+/kjqp5UgJ+ns8xPa4uo00iQTUpCm4HSwv4LeEdIYoc7EjUoDk9Xw5QyXtXFV
 483zxwkI4yX8eHvDn7ehJdLnpbbbvR/UllM1Vp1wFwRt4VnONEk2QzgXgQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_064649_028389_1BC8C7E3 
X-CRM114-Status: UNSURE (  -1.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: sendgrid.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [167.89.100.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [167.89.100.174 listed in wl.mailspike.net]
 2.0 URI_TRY_3LD            URI: "Try it" URI, suspicious hostname
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] =?utf-8?q?Sous-traitant_en_d=C3=A9veloppement_au?=
 =?utf-8?q?_Vietnam_-_NOS_TARIFS?=
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
Reply-To: arnaud.chadeyron@smartdev.vn
Content-Type: multipart/mixed; boundary="===============9106172208575399277=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9106172208575399277==
Content-Type: multipart/alternative; boundary=5deb18860357603df6d8d3f77359e451e0468f068089b870dfd3b3b7919c

--5deb18860357603df6d8d3f77359e451e0468f068089b870dfd3b3b7919c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Mime-Version: 1.0

Bonjour,

Nous sommes SmartDev https://smartdev.vn/ une societ=C3=A9 vietnamienne d'o=
utsourcing sp=C3=A9cialis=C3=A9e dans le d=C3=A9veloppement d'applications =
mobiles et de sites web. Notre entreprise est g=C3=A9r=C3=A9e par une =C3=
=A9quipe de Fran=C3=A7ais depuis 2014:

Vincent Roye, Directeur G=C3=A9n=C3=A9ral
 Maxime Perniola, Directeur Technique
 Arnaud Chadeyron, Directeur Commercial

Ayant acc=C3=A8s ici =C3=A0 des d=C3=A9veloppeurs talentueux et passionn=C3=
=A9s =C3=A0 des co=C3=BBts avantageux, nous souhaiterions vous proposer nos=
 services d'outsourcing. Cela vous permettrait de r=C3=A9duire vos co=C3=BB=
ts tout en gardant une flexibilit=C3=A9 totale.

Veuillez trouvez dans ce lien nos tarifs et technologies. https://smartdev.=
vn/fr/tarifs/

Seriez-vous int=C3=A9ress=C3=A9 par un RDV telephonique/visio pour discuter=
 ensemble d'une possible collaboration ?

Cordialement,

Arnaud Chadeyron

+84 777 177 392

Skype: arnaud.chadeyron https://join.skype.com/invite/frwpnw9Wol0e

Directeur Commercial

unsubscribe https://u8792405.ct.sendgrid.net/asm/unsubscribe/?user_id=3D879=
2405&data=3DXR_7khwe8NwPo8kU5FuWs5U1IRHFztBCPcuk73uUMD0zh-eWdB3ujH6Efa5KJ4U=
8TnjpCtwZi9hH68YCZvMOmOLzgtWC1BoHh6HA0VWS2kdGYqcOW4QTYBLDrkUxv_Pivhwn6blqNi=
ORNWYo0p2fPNILg3aHFC9Ult1HyGK7mDlAW7k15kJMggzyUVgGPCWfZfiSLSkVHiQr9MptBa3zj=
MNOqqRCFUTeFikp2IHyJFDKBf3O3lDY0BDOLBLRUh3Lg68rqb3tKEWsMP__W89tQ7ZLjdminXPI=
EA2f01b1caRPqmZ8VqOE5VZjsbisl03jlI5QYu6omqDwQJ8Oz0PGo8Afm3ocoZXx14tDNXpsy4p=
sLhITxqzP0NHL82fMqDcXVTEr6oErLr8hrM0RH3cE30uWC_IuBitymqoXe0PUng-gzO2JMwmnZU=
ZASkpr_OjWptIjzxGc3MUz34dVihpp6LpMAhk1hl956_Q_ZeXsa4LP3rf_Kg2yNyQH7xeLj_siI=
_koqrrLPGcsOXeoHPPdziif3dpfyc87jd60FMP6nL-dFAxueks1wjtCu_oM1sFo9g-LVbcTkpbc=
pO_-giIbSg=3D=3D=

--5deb18860357603df6d8d3f77359e451e0468f068089b870dfd3b3b7919c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8
Mime-Version: 1.0

<html>
  <head>
    <title></title>
  </head>
  <body>
    <p>
    Bonjour,<br><br>

    Nous sommes <a href=3D"https://u8792405.ct.sendgrid.net/ls/click?upn=3D=
jVSQM5ycG3tD-2B2kQw1aDAPJTbnhRBhkUAgTivAU3vdU-3D0A-0_0B5ng5hsSdjETOB-2BM6QM=
PdgaN-2FgoQHOz-2BVXo3Qv-2B7sDRx-2F-2B9X5CthJbXZ35-2BBoK71779kJhKi-2BD8L4CFO=
JmygGmQvJ-2BYf3v4UmMlAXB6DsFFVIkCWXHDPEI7O6UZB6Nl-2F-2FrsBeRqRANg68CAvpXaOf=
ASraY-2FoY4Y1mAwhRI4Vsj1IEazQL6VXTaYzX-2BcEPj9A4rRRvqPabraUBidXD1eN9tUIXjyP=
TjFXi9RYZ3fVohRCNjm4ilHymIRZ2oFBn2vrcyOkEkq7-2BRcsAKBcxD4E8gF-2BXOIxvJV9p87=
P-2Bqv6iRn3ZRk817ZTU8n-2F2-2BGc8IAZDik1lbhKivlDNiOPxMp33xCpHsLAbh6c4MLncbwy=
8DY8m2Df-2Fat1KpQiaA0A7TFrvIEopKFknyzYjYP64NOd3sCKzffASIJ-2Fwvej7zBGq3wEmSg=
j1dVNFnNW-2F7nmiz4ax6uosJPBN-2FhSnvZHPvDyg-3D-3D">SmartDev</a> une societ=
=C3=A9 vietnamienne d'outsourcing sp=C3=A9cialis=C3=A9e dans le d=C3=A9velo=
ppement d'applications mobiles et de sites web. Notre entreprise est g=C3=
=A9r=C3=A9e par une =C3=A9quipe de Fran=C3=A7ais depuis 2014:<br>
=20=20=20=20
    <ul>
      <li>Vincent Roye, Directeur G=C3=A9n=C3=A9ral</li>
      <li>Maxime Perniola, Directeur Technique</li>
      <li>Arnaud Chadeyron, Directeur Commercial</li>
    </ul>
=20=20=20=20
    Ayant acc=C3=A8s ici =C3=A0 des d=C3=A9veloppeurs talentueux et passion=
n=C3=A9s =C3=A0 des co=C3=BBts avantageux, nous souhaiterions vous proposer=
 nos services d'outsourcing. Cela vous permettrait de r=C3=A9duire vos co=
=C3=BBts tout en gardant une flexibilit=C3=A9 totale.<br><br>=20
=20=20=20=20
   Veuillez trouvez dans ce lien <a href=3D"https://u8792405.ct.sendgrid.ne=
t/ls/click?upn=3DjVSQM5ycG3tD-2B2kQw1aDAILf3zNvBjrgh5FL-2BpYkDPefQjtjeDwuu-=
2F8MDBnKUgagFFuO_0B5ng5hsSdjETOB-2BM6QMPdgaN-2FgoQHOz-2BVXo3Qv-2B7sDRx-2F-2=
B9X5CthJbXZ35-2BBoK71779kJhKi-2BD8L4CFOJmygGmQvJ-2BYf3v4UmMlAXB6DsFFVIkCWXH=
DPEI7O6UZB6Nl-2F-2FrsBeRqRANg68CAvpXaOfASraY-2FoY4Y1mAwhRI4Vsj1IEazQL6VXTaY=
zX-2BcEPj9A4rRRvqPabraUBidXD1eN9tUIXjyPTjFXi9RYZ3fVohRCNjm4ilHymIRZ2oFBn2vA=
2OnTLuT4JmF5eYR2OBYBK6Nz2Gc2wEJaaQ-2FwDMqcjHIjLO7SVNVin4N13MrcFA5fGN3IVGM3x=
Bb6GS3btVLWZ8M-2BB2DPbIjTYPjKnLJv9FP6n7FsYb7hu8C4DxOWqHq-2FbPUEQs1nVtQXjVk6=
Yn5OI2PzS5uXosXP0GmCoNoUw-2Btupc4r9HYMxSpiA5N0l7286BlJlb6shiEQyZo6l-2BXFA-3=
D-3D">nos tarifs et technologies.</a><br><br>
=20=20=20=20
=20=20=20=20
    Seriez-vous int=C3=A9ress=C3=A9 par un RDV telephonique/visio pour disc=
uter ensemble d'une possible collaboration ?<br><br>=20
=20=20=20=20
    Cordialement,<br><br>
    Arnaud Chadeyron<br>
    +84 777 177 392<br>
    Skype: <a href=3D"https://u8792405.ct.sendgrid.net/ls/click?upn=3DjVSQM=
5ycG3tD-2B2kQw1aDAMantUji3qOD7adU0V6Vc-2BiYbrVX010pleo-2FhoCOJTb-2FMR2bJTon=
T0GRNCj0hT9oZA-3D-3DotSw_0B5ng5hsSdjETOB-2BM6QMPdgaN-2FgoQHOz-2BVXo3Qv-2B7s=
DRx-2F-2B9X5CthJbXZ35-2BBoK71779kJhKi-2BD8L4CFOJmygGmQvJ-2BYf3v4UmMlAXB6DsF=
FVIkCWXHDPEI7O6UZB6Nl-2F-2FrsBeRqRANg68CAvpXaOfASraY-2FoY4Y1mAwhRI4Vsj1IEaz=
QL6VXTaYzX-2BcEPj9A4rRRvqPabraUBidXD1eN9tUIXjyPTjFXi9RYZ3fVohRCNjm4ilHymIRZ=
2oFBn2v94ZegYAZG0jAhraUlrGfI7pALLG84ZtyB-2F1-2BtqtYNZW4-2Fhd-2Fr4udC-2BGLKS=
TxP-2F6JEk-2BEsqShKC7bcEE52uh7XGvgox4GWR5YCexI0fR4-2F25-2B1qIgJpuJWW8I9BEZE=
rl0qTFWqxXPCEU-2FGye4LFCniPOLasXipNmNbDIII29vcQgiw3qwDc-2FwrmXz0N43Xsr61gkb=
B8-2FhFPnosRvVNfklKA-3D-3D">arnaud.chadeyron</a><br>
    Directeur Commercial<br>
    <a href=3D"https://u8792405.ct.sendgrid.net/asm/unsubscribe/?user_id=3D=
8792405&data=3DXR_7khwe8NwPo8kU5FuWs5U1IRHFztBCPcuk73uUMD0zh-eWdB3ujH6Efa5K=
J4U8TnjpCtwZi9hH68YCZvMOmOLzgtWC1BoHh6HA0VWS2kdGYqcOW4QTYBLDrkUxv_Pivhwn6bl=
qNiORNWYo0p2fPNILg3aHFC9Ult1HyGK7mDlAW7k15kJMggzyUVgGPCWfZfiSLSkVHiQr9MptBa=
3zjMNOqqRCFUTeFikp2IHyJFDKBf3O3lDY0BDOLBLRUh3Lg68rqb3tKEWsMP__W89tQ7ZLjdmin=
XPIEA2f01b1caRPqmZ8VqOE5VZjsbisl03jlI5QYu6omqDwQJ8Oz0PGo8Afm3ocoZXx14tDNXps=
y4psLhITxqzP0NHL82fMqDcXVTEr6oErLr8hrM0RH3cE30uWC_IuBitymqoXe0PUng-gzO2JMwm=
nZUZASkpr_OjWptIjzxGc3MUz34dVihpp6LpMAhk1hl956_Q_ZeXsa4LP3rf_Kg2yNyQH7xeLj_=
siI_koqrrLPGcsOXeoHPPdziif3dpfyc87jd60FMP6nL-dFAxueks1wjtCu_oM1sFo9g-LVbcTk=
pbcpO_-giIbSg=3D=3D">unsubscribe</a>
=20=20=20=20
    </p>
=20=20
=20=20
<img src=3D"https://u8792405.ct.sendgrid.net/wf/open?upn=3DiHHhiMyCjRugsPcn=
pSiVzuCO7A-2FCGKbnOsPHlbjQ3vqgoO-2FzuBDkeS9lebzCZ0ehbWGalrMi4Abp1n6fI9mDvfQ=
0EmzfJpgJOKVjZfUGuE5aBhtTQMeNJXJZtrUtPKcy-2FoeC-2FSAzvSNDHIgHzSwqzgk7aEymKi=
mFoDwWD1EZODIvwAVhWWoTg0M9o5ijI4F8raXHbZZ-2B3cnMhQHTIjNRTCaH9A-2BTlX8v34Pgd=
06pKdIvbb3QqFSvTtXYLzF3bKqmsIQ7i0eeLgE8BMfHLDb5j2kDkKhyaPWiG7sVNBHSXcmfL5Jr=
KVdK26b1jiXKRcjx7BR-2FMqHycDr3ix7yypjEX-2Bdew7gmjIk3COVvLTl7pJ8TV-2BVsdY5vi=
XVKA1C4DNhTuJgsmDdq5aV3G-2B2SE92sWyiGChilM6qva3snmr1XNr20hMeZPLrZACaWMGwThO=
oU83hE79uWxwIsoNuDVNvLqQ-3D-3D" alt=3D"" width=3D"1" height=3D"1" border=3D=
"0" style=3D"height:1px !important;width:1px !important;border-width:0 !imp=
ortant;margin-top:0 !important;margin-bottom:0 !important;margin-right:0 !i=
mportant;margin-left:0 !important;padding-top:0 !important;padding-bottom:0=
 !important;padding-right:0 !important;padding-left:0 !important;"/>
</body>
</html>
=20=20

--5deb18860357603df6d8d3f77359e451e0468f068089b870dfd3b3b7919c--


--===============9106172208575399277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9106172208575399277==--

