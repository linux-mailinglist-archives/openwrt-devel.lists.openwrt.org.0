Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49102BDF72
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 15:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zenHXvSzjNf2h86pP/UjiuXEbbuiKC6YEqQeueMWU6o=; b=ghNSx6i17gAa6Hjffh5mFAPJk
	EDx4P71+3xxKtrAJciAJ4NTtIFQnoA/MmdyG7tNDB1eDIhGbwNTiAZ0/DP9ZG1kSdPRdscOR21aMK
	Z4qD/5NhxYbxCUpAPknehVP+vp1fr4nLM2fhsj2YzdratuRxmXjUWEXqV2yHn8sYSpnrmZbLn6u3P
	/i5mumx2oTfKHVZOFp4/u45hBiD9TShLVB+2U/foo/JIa6plC6PaFCvlnypGphOmvHGq+ShETwfcR
	BCGfxauXKRDtU1mMTwyPiS4mOMSmPfRsp0TecpdEoS+9ym265eibeZb+brmlOGEbugQ7pf6sNynVg
	VImRAjI/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD7hx-0001Rc-D4; Wed, 25 Sep 2019 13:51:53 +0000
Received: from n1nlsmtp01.shr.prod.ams1.secureserver.net ([188.121.43.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD7hZ-0001Li-Sx
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 13:51:32 +0000
Received: from n3plcpnl0065.prod.ams3.secureserver.net ([160.153.153.132])
 by : HOSTING RELAY : with ESMTP
 id D7fsiLWiqOUUvD7fsigqA2; Wed, 25 Sep 2019 06:49:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=maxnet.al; 
 s=default;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:
 Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lJ+QTo++7vlCUNofS6NSEAhVi0upt0N7qlejiUi4Cb0=; b=j8LgusWLemmUeD0OX29bJs+gwg
 BNqkkF4J46M1da9Lcj4OpPjnloY4iB2GiL2SMkWadBop+bu1H8Jyv7xA64oz5dfyaNt7uiWAS7Fo+
 vdK9YVk9vDoeoucCrUquXt7+9LeAcmxpRbmq5yL4OHmJFxl23O1EkiPBvAoQDI6HUbCcHodza/xEu
 w/Yym6ok5ifacEiXsmkeu6S5t0SYQ+FcSH7Nm3aBUATRLiUyP+DnIl0cPnGLSVEXEWN9zulfE92h8
 p15SYAeWk1AdfocbkV20U1knWgvmEjXU1EjeP8zZlzi/OfCpYvdzJmD2A8NWuCa0W9xg2BJDrcE1J
 ftJKDFIw==;
Received: from [52.125.138.56] (port=54610 helo=mail.outlook.com)
 by n3plcpnl0065.prod.ams3.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92)
 (envelope-from <support@maxnet.al>)
 id 1iD7fs-00HDdI-K5; Wed, 25 Sep 2019 06:49:44 -0700
Date: Wed, 25 Sep 2019 13:49:39 +0000 (UTC)
From: support@maxnet.al
To: Ben Greear <greearb@candelatech.com>
Message-ID: <E35DD50A54031C50.f6a00d5e-317f-456b-b3e4-15891dc232b5@mail.outlook.com>
In-Reply-To: <767b2c5a-1a91-b694-7d79-8ed02860ec23@candelatech.com>
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
 <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
 <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
 <ce97ab8de243a3b9d9e08b466ccf76d2@maxnet.al>
 <767b2c5a-1a91-b694-7d79-8ed02860ec23@candelatech.com>
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
X-CMAE-Envelope: MS4wfKYFwKpwVomydE9ASP4C8zvczja1KLeEA4f3NOr0w+bBiKU6agOpeNOjtgmckO4RB4do2lh2VbrF3jQlKkIXlPZ//MFTAfOYl0PJBnR/yDHXEvG7R6TG
 KO17MrhkXFp5b+qvnUj9MhzCzWmjd4eDBwI+o6iOnXMBv4/9HOD3cSfETEQxc5WHo79YSfnfAkDxSUZm5RQ12YPageC5Av1A2YnxVjG+lOJScJXFuODnPv1G
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_065130_233277_592DCE4F 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.121.43.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============6289510871395857555=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6289510871395857555==
Content-Type: multipart/alternative; 
	boundary="----=_Part_3062_10323692.1569419379045"

------=_Part_3062_10323692.1569419379045
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
Today i managed to connect the station wds at 80MHz channel. Signal is -56 =
and i have very low datarates. I have attached a photo.
=C2=A0When station was ddwrt and AP openwrt the datarates were 866/433. TX =
won't do more than VHT-NSS 1 although RX it's not good either because it's =
a 4 chain radio and it should do VHT-NSS4.
Thank you,Klevis




On Mon, Sep 23, 2019 at 6:36 PM +0200, "Ben Greear" <greearb@candelatech.co=
m> wrote:










Weeks or months or whenever I have time, and maybe sooner if someone
wants to sponsor it.  Please understand I, and probably everyone else worki=
ng
on OpenWRT, am busy with lots of other projects and community work often
gets pushed to the back burner.

Thanks,
Ben

On 9/23/19 8:18 AM, support@maxnet.al wrote:
> Hi Ben,
>=20
> When do you think you might be able to make those changes to your driver?
>=20
> Thanks,
> Klevis.
>=20
>=20
>=20
> On 2019-09-20 13:00, Ben Greear wrote:
>> On 9/20/19 12:55 PM, Vincent Wiemann wrote:
>>> Hi Klevis,
>>>
>>> have you tried it with a short distance?
>>> If you did you should better ask Ben Greear directly.
>>
>> I asked him to post publicly so that others can help answer and that
>> my own answers might
>> help someone else.
>>
>> I have some patches that should enable coverage class settings for
>> wave-2, but I am too busy
>> with other things right now to port them to my ath10k-ct driver/firmware=
.
>>
>> Thanks,
>> Ben
>>
>>>
>>> By the way ath10k gen 2 chipsets don't work very well with long distanc=
e links without a
>>> special feature which implementation is only available to companies lik=
e Ubiquiti and very few
>>> people who have an own reverse-engineered implementation.
>>> It works on IPQ401X, QCA9886 and QCA9888 based chips only.
>>>
>>> And it is not possible to set a coverage class for gen 2 devices, yet a=
s far as I know due to missing
>>> documentation and implementation (correct me if that information is out=
dated).
>>> Furthermore a high channel width often results in problems
>>> due to lower receiver sensibility.
>>> We have better experiences with lower channel widths and sometimes get =
more throughput with that.
>>>
>>> Actually I think this does not explain your connection issues as 13 km =
is not that much.
>>>
>>> Regards,
>>>
>>> Vincent Wiemann
>>>
>>> On 20.09.19 18:30, support@maxnet.al wrote:
>>>> Hello everyone,
>>>>
>>>> I am trying to setup a custom made outdoor link with Apu2d2 board devi=
ces and QCA9994 cards from compex. After i installed openwrt and ath10k ct =
driver,=20
>>>> kmod ath10k and board-2.bin the device can run a 80MHz channel in WDS =
AP. The problem is that it won't run as station or station wds. It can scan
>>>> the SSIDs but won't connect them.
>>>>
>>>> Any suggestion?
>>>>
>>>> Thank you!
>>>> Klevis
>>>>
>>>
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>
>=20


--=20
Ben Greear=20
Candela Technologies Inc  http://www.candelatech.com







------=_Part_3062_10323692.1569419379045
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr" text-align=3D"left"><div style=3D=
"font-family: Helvetica, Arial, sans-serif; font-size: 12pt; color: rgb(33,=
 33, 33); background-color: rgb(255, 255, 255); text-align: left;" dir=3D"l=
tr">Hello,</div><div style=3D"font-family: Helvetica, Arial, sans-serif; fo=
nt-size: 12pt; color: rgb(33, 33, 33); background-color: rgb(255, 255, 255)=
; text-align: left;" dir=3D"ltr"><br></div><div style=3D"font-family: Helve=
tica, Arial, sans-serif; font-size: 12pt; color: rgb(33, 33, 33); backgroun=
d-color: rgb(255, 255, 255); text-align: left;" dir=3D"ltr">Today i managed=
 to connect the station wds at 80MHz channel. Signal is -56 and i have very=
 low datarates. I have attached a photo.</div><div style=3D"font-family: He=
lvetica, Arial, sans-serif; font-size: 12pt; color: rgb(33, 33, 33); backgr=
ound-color: rgb(255, 255, 255); text-align: left;" dir=3D"ltr"><br></div><d=
iv style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 12pt; col=
or: rgb(33, 33, 33); background-color: rgb(255, 255, 255); text-align: left=
;" dir=3D"ltr">&nbsp;When station was ddwrt and AP openwrt the datarates we=
re 866/433. TX won't do more than VHT-NSS 1 although RX it's not good eithe=
r because it's a 4 chain radio and it should do VHT-NSS4.</div><div style=
=3D"font-family: Helvetica, Arial, sans-serif; font-size: 12pt; color: rgb(=
33, 33, 33); background-color: rgb(255, 255, 255); text-align: left;" dir=
=3D"ltr"><br></div><div style=3D"font-family: Helvetica, Arial, sans-serif;=
 font-size: 12pt; color: rgb(33, 33, 33); background-color: rgb(255, 255, 2=
55); text-align: left;" dir=3D"ltr">Thank you,</div><div style=3D"font-fami=
ly: Helvetica, Arial, sans-serif; font-size: 12pt; color: rgb(33, 33, 33); =
background-color: rgb(255, 255, 255); text-align: left;" dir=3D"ltr">Klevis=
</div><div style=3D"font-family: Helvetica, Arial, sans-serif; font-size: 1=
2pt; color: rgb(33, 33, 33); background-color: rgb(255, 255, 255); text-ali=
gn: left;" dir=3D"ltr"><br></div></div><br><br><br>
<div class=3D"gmail_quote">On Mon, Sep 23, 2019 at 6:36 PM +0200, "Ben Gree=
ar" <span dir=3D"ltr">&lt;<a href=3D"mailto:greearb@candelatech.com" target=
=3D"_blank">greearb@candelatech.com</a>&gt;</span> wrote:<br>
<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">




<div dir=3D"3D&quot;ltr&quot;">
<pre>Weeks or months or whenever I have time, and maybe sooner if someone
wants to sponsor it.  Please understand I, and probably everyone else worki=
ng
on OpenWRT, am busy with lots of other projects and community work often
gets pushed to the back burner.

Thanks,
Ben

On 9/23/19 8:18 AM, support@maxnet.al wrote:
&gt; Hi Ben,
&gt;=20
&gt; When do you think you might be able to make those changes to your driv=
er?
&gt;=20
&gt; Thanks,
&gt; Klevis.
&gt;=20
&gt;=20
&gt;=20
&gt; On 2019-09-20 13:00, Ben Greear wrote:
&gt;&gt; On 9/20/19 12:55 PM, Vincent Wiemann wrote:
&gt;&gt;&gt; Hi Klevis,
&gt;&gt;&gt;
&gt;&gt;&gt; have you tried it with a short distance?
&gt;&gt;&gt; If you did you should better ask Ben Greear directly.
&gt;&gt;
&gt;&gt; I asked him to post publicly so that others can help answer and th=
at
&gt;&gt; my own answers might
&gt;&gt; help someone else.
&gt;&gt;
&gt;&gt; I have some patches that should enable coverage class settings for
&gt;&gt; wave-2, but I am too busy
&gt;&gt; with other things right now to port them to my ath10k-ct driver/fi=
rmware.
&gt;&gt;
&gt;&gt; Thanks,
&gt;&gt; Ben
&gt;&gt;
&gt;&gt;&gt;
&gt;&gt;&gt; By the way ath10k gen 2 chipsets don't work very well with lon=
g distance links without a
&gt;&gt;&gt; special feature which implementation is only available to comp=
anies like Ubiquiti and very few
&gt;&gt;&gt; people who have an own reverse-engineered implementation.
&gt;&gt;&gt; It works on IPQ401X, QCA9886 and QCA9888 based chips only.
&gt;&gt;&gt;
&gt;&gt;&gt; And it is not possible to set a coverage class for gen 2 devic=
es, yet as far as I know due to missing
&gt;&gt;&gt; documentation and implementation (correct me if that informati=
on is outdated).
&gt;&gt;&gt; Furthermore a high channel width often results in problems
&gt;&gt;&gt; due to lower receiver sensibility.
&gt;&gt;&gt; We have better experiences with lower channel widths and somet=
imes get more throughput with that.
&gt;&gt;&gt;
&gt;&gt;&gt; Actually I think this does not explain your connection issues =
as 13 km is not that much.
&gt;&gt;&gt;
&gt;&gt;&gt; Regards,
&gt;&gt;&gt;
&gt;&gt;&gt; Vincent Wiemann
&gt;&gt;&gt;
&gt;&gt;&gt; On 20.09.19 18:30, support@maxnet.al wrote:
&gt;&gt;&gt;&gt; Hello everyone,
&gt;&gt;&gt;&gt;
&gt;&gt;&gt;&gt; I am trying to setup a custom made outdoor link with Apu2d=
2 board devices and QCA9994 cards from compex. After i installed openwrt an=
d ath10k ct driver,=20
&gt;&gt;&gt;&gt; kmod ath10k and board-2.bin the device can run a 80MHz cha=
nnel in WDS AP. The problem is that it won't run as station or station wds.=
 It can scan
&gt;&gt;&gt;&gt; the SSIDs but won't connect them.
&gt;&gt;&gt;&gt;
&gt;&gt;&gt;&gt; Any suggestion?
&gt;&gt;&gt;&gt;
&gt;&gt;&gt;&gt; Thank you!
&gt;&gt;&gt;&gt; Klevis
&gt;&gt;&gt;&gt;
&gt;&gt;&gt;
&gt;&gt;&gt; _______________________________________________
&gt;&gt;&gt; openwrt-devel mailing list
&gt;&gt;&gt; openwrt-devel@lists.openwrt.org
&gt;&gt;&gt; https://lists.openwrt.org/mailman/listinfo/openwrt-devel
&gt;&gt;&gt;
&gt;=20


--=20
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

</greearb@candelatech.com></pre>
</div>

</blockquote>
</div>
</body></html>
------=_Part_3062_10323692.1569419379045--


--===============6289510871395857555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6289510871395857555==--

