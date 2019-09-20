Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9C6B983F
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 22:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZOjrq56rPJpIQXDeG/3hEWhACRNtWANHvoSh97mkGPA=; b=SLQ
	oHsYT/lpjfkwnfHC8EXX8b7SYwsPOngB7NaZiT9cYhn8gyaDiiItuAdA6LLXFNyOBVpcj+hMQSgff
	JeXdCi8h3MRwAXPENqmGv53zlCMnJxJnDX/pMFLEiU2D13qVG2PaYRNqOEOzLROq/vS1Z0Pd+fy9R
	eUwSSDYn5p3/mfvbOn3to3reg7BrQLco2FHANOfbYr3MPyFcLWdkkzHBVpw2CFYKEcV4FhNyIL7oE
	qTXsLW5otKdU719Wa+a6E03K/s5LaLUDXtZ/Qu1eiLFlzFT0JvmHFLaigFpiQL3WFgpWYSPlvC2tW
	cf1toVez541U0+O6v0Pbx+zXEnkqcgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBPAT-0000L0-2y; Fri, 20 Sep 2019 20:06:13 +0000
Received: from n1nlsmtp02.prod.ams1.secureserver.net ([188.121.43.194]
 helo=n1nlsmtp02.shr.prod.ams1.secureserver.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBPAM-0000KT-Iq
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 20:06:08 +0000
Received: from n3plcpnl0065.prod.ams3.secureserver.net ([160.153.153.132])
 by : HOSTING RELAY : with ESMTP
 id BP9KiAVgm9A1PBP9KieEoo; Fri, 20 Sep 2019 13:05:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=maxnet.al; 
 s=default;
 h=Content-Type:MIME-Version:Subject:Message-ID:To:From:Date:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f021afWktrjGWo66uzYo8w0vXDnNzhikdRRRWiHKKdg=; b=U9j8rsRy3hZmWqatuQRLebOQSZ
 TuErlHn7vuqWMURi+ptQWX6JJQC7SynKYjNwfdBYazKRrDIvsKooKDO1hSxI4wrL2qZOU/5w/9VNO
 2VjgrrFEKuLxhdWdeOAgycHHYU0UtOxYJtbVqenUSKlcysHqhBxuZgN4EitjE4gg+mz5gn++2kx2c
 yE527qbvND+5lxhW5VB6OyANigGfE/bTg0YTfsxI3W5IHkUpcdWTPNegnIwhmuactHgaOe9s6W2gw
 yCL5nBVZZUws2a1Q53zO9Aag9arI8kzKZ2wxsCn2iBa88qRtTZdu5xgW4RwElWyUj1RBs3aPBU0cw
 HHKOLtaQ==;
Received: from [52.125.138.56] (port=60214 helo=mail.outlook.com)
 by n3plcpnl0065.prod.ams3.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92)
 (envelope-from <support@maxnet.al>)
 id 1iBP9K-00GBb3-QX; Fri, 20 Sep 2019 13:05:02 -0700
Date: Fri, 20 Sep 2019 20:04:57 +0000 (UTC)
From: support@maxnet.al
To: openwrt-devel@lists.openwrt.org,
 Vincent Wiemann <vincent.wiemann@ironai.com>
Message-ID: <E35DD50A54031C50.4daee6b5-b31e-4e67-8644-73d0fa44fb96@mail.outlook.com>
MIME-Version: 1.0
X-Mailer: Outlook for iOS and Android
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - n3plcpnl0065.prod.ams3.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - maxnet.al
X-Get-Message-Sender-Via: n3plcpnl0065.prod.ams3.secureserver.net: authenticated_id:
 support@maxnet.al
X-Authenticated-Sender: n3plcpnl0065.prod.ams3.secureserver.net: support@maxnet.al
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfKoZ8jgtTv7qpx4bFyMi8/m3aPxKLwrbMbLwk5MNTfbY4NqlYAhusjkVvMQNnjDJCjrcW3s5YDzP164ij7bfl8PIO2zgTspsI89cHMa45+WdJFS1XGxr
 VMy9ZQ23KZkErURd/yemUiUuv65U8qfr3PFMVLDzFolRon8yLtBiYrCpMllRtA8qjiLvlu/uF4WL3NC3FTgXV8NZH9DWQhd1AC+gvdS2KPYWshUw6juvstgE
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_130606_777036_66079206 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.121.43.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [188.121.43.194 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] QCA9994 outdoor 13km link
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
Content-Type: multipart/mixed; boundary="===============0538390428141757205=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0538390428141757205==
Content-Type: multipart/alternative; 
	boundary="----=_Part_7479_1838457800.1569009897376"

------=_Part_7479_1838457800.1569009897376
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Vincent,




I have tried short distance with ddwrt and i get 1733/1733 datarates and ab=
out 1Gbps real traffic using iperf. Ubiquiti and MikroTik have 80MHz outdoo=
r radios and they work good. I don't want to use 160MHz which is very wide =
and there are lot of 20MHz channels within that will create interferences. =
Actually i want to benefit from VHT-NSS4 so at 80MHz channel i will get 156=
0Mbps. Ben Greear also thinks that is something wrong with ACK timing.From:=
 Vincent Wiemann <vincent.wiemann@ironai.com>
Sent: Friday, 20 September 2019, 21:56
To: support@maxnet.al; openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] QCA9994 outdoor 13km link

Hi Klevis,

have you tried it with a short distance?
If you did you should better ask Ben Greear directly.

By the way ath10k gen 2 chipsets don't work very well with long distance li=
nks without a
special feature which implementation is only available to companies like Ub=
iquiti and very few
people who have an own reverse-engineered implementation.
It works on IPQ401X, QCA9886 and QCA9888 based chips only.

And it is not possible to set a coverage class for gen 2 devices, yet as fa=
r as I know due to missing
documentation and implementation (correct me if that information is outdate=
d).
Furthermore a high channel width often results in problems
due to lower receiver sensibility.
We have better experiences with lower channel widths and sometimes get more=
 throughput with that.

Actually I think this does not explain your connection issues as 13 km is n=
ot that much.

Regards,

Vincent Wiemann

On 20.09.19 18:30, support@maxnet.al wrote:
> Hello everyone,
>=20
> I am trying to setup a custom made outdoor link with Apu2d2 board devices=
 and QCA9994 cards from compex. After i installed openwrt and ath10k ct dri=
ver, kmod ath10k and board-2.bin the device can run a 80MHz channel in WDS =
AP. The problem is that it won't run as station or station wds. It can scan
> the SSIDs but won't connect them.=C2=A0
>=20
> Any suggestion?
>=20
> Thank you!
> Klevis
>=20


------=_Part_7479_1838457800.1569009897376
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div dir=3D"ltr" text-align=3D"left"><div dir=3D"auto" style=3D=
"direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size:=
 11pt; color: black; ">Hi Vincent,<br></div><div dir=3D"auto" style=3D"dire=
ction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt=
; color: black; ">
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">I have tried short distanc=
e with ddwrt and i get 1733/1733 datarates and about 1Gbps real traffic usi=
ng iperf. Ubiquiti and MikroTik have 80MHz outdoor radios and they work goo=
d. I don't want to use 160MHz which is very wide and there are lot of 20MHz=
 channels within that will create interferences. Actually i want to benefit=
 from VHT-NSS4 so at 80MHz channel i will get 1560Mbps. Ben Greear also thi=
nks that is something wrong with ACK timing.</div><div id=3D"id-e1286fd3-9f=
2e-4753-a2e1-1ea87be2b6ad" class=3D"ms-outlook-mobile-reference-message"><h=
r style=3D"display:inline-block;width:98%" tabindex=3D"-1"><div id=3D"divRp=
lyFwdMsg" style=3D"font-family: Helvetica, Arial, sans-serif;font-size: 12p=
t;line-height: 13pt;color: #000000"><strong>From:</strong> Vincent Wiemann =
&lt;vincent.wiemann@ironai.com&gt;<br><strong>Sent:</strong> Friday, 20 Sep=
tember 2019, 21:56<br><strong>To:</strong> support@maxnet.al; openwrt-devel=
@lists.openwrt.org<br><strong>Subject:</strong> Re: [OpenWrt-Devel] QCA9994=
 outdoor 13km link<br></div><br>Hi Klevis,

have you tried it with a short distance?
If you did you should better ask Ben Greear directly.

By the way ath10k gen 2 chipsets don't work very well with long distance li=
nks without a
special feature which implementation is only available to companies like Ub=
iquiti and very few
people who have an own reverse-engineered implementation.
It works on IPQ401X, QCA9886 and QCA9888 based chips only.

And it is not possible to set a coverage class for gen 2 devices, yet as fa=
r as I know due to missing
documentation and implementation (correct me if that information is outdate=
d).
Furthermore a high channel width often results in problems
due to lower receiver sensibility.
We have better experiences with lower channel widths and sometimes get more=
 throughput with that.

Actually I think this does not explain your connection issues as 13 km is n=
ot that much.

Regards,

Vincent Wiemann

On 20.09.19 18:30, support@maxnet.al wrote:
&gt; Hello everyone,
&gt;=20
&gt; I am trying to setup a custom made outdoor link with Apu2d2 board devi=
ces and QCA9994 cards from compex. After i installed openwrt and ath10k ct =
driver, kmod ath10k and board-2.bin the device can run a 80MHz channel in W=
DS AP. The problem is that it won't run as station or station wds. It can s=
can
&gt; the SSIDs but won't connect them.&nbsp;
&gt;=20
&gt; Any suggestion?
&gt;=20
&gt; Thank you!
&gt; Klevis
&gt;=20
<br></div></div></body></html>
------=_Part_7479_1838457800.1569009897376--


--===============0538390428141757205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0538390428141757205==--

