Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85284BE6B1
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 22:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mylZoZJyBniup9Cfy0UNnzGagAX3eJw8mtibNywoDi8=; b=hccku4z5nttMHxgyB0Gn3viZ2
	y2kqpCu1kSQmcZtpYJsInz/OR+2wTCI880kW5TMVbmpUa/73Of00NovT0/RNCWdux6YMjVHmnoH85
	MSuSSDSmbEvzd2+n2u2+lcucdTwNCrko2jPTJ6OonWF55/pcI7forvB7fZmgpKuyp9yNHZTtqf7zp
	Fds1bTX5AWsVcaCbbVAFl0CYpABSxQUX9fslOxC8AhKhgMsbT6GzKKvSXfjFQMGMOgTPHk09KVQpw
	E/ttIQMGVBB3HXMTRavVD2hQCbCPtREYaEiq5W2APWRj8QOjYx7tfe8QEU1/Ro8MtBPoNAO9qsIWL
	DdHXufDww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDEHC-0002DV-Py; Wed, 25 Sep 2019 20:52:42 +0000
Received: from n1nlsmtp02.prod.ams1.secureserver.net ([188.121.43.194]
 helo=n1nlsmtp02.shr.prod.ams1.secureserver.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDEH2-0002Cv-7S
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 20:52:34 +0000
Received: from n3plcpnl0065.prod.ams3.secureserver.net ([160.153.153.132])
 by : HOSTING RELAY : with ESMTP
 id DEG1iFWH79A1PDEG1icCAj; Wed, 25 Sep 2019 13:51:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=maxnet.al; 
 s=default;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:
 Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y/WY2S4a5n0/wkT8hUAZu9lKZIvg8MqN5+WUmOUAkBM=; b=UBhfRDQD8mXQpkl7eGZ3347GnL
 S+Sz9ZpwHhAlEwrUFACvxyjGyWYl99W4dkNfYWFYPwJsvPq7dHUL/zL1FqsH8NxSlyz/G9TG2mgIK
 Qc/HjS+m3+Fkp3qNzYMcjDhyfXDn0DgT2yk8a/abn0B0EWcX/nTjiv1r9EyI1S8mfTbwSgfZzztjz
 OVI5nJuRQWWZJ6iX7x5TLNd9j8USrVFUWnAqErRGSoQ8AK9BgYbSBegrE6GbrZ6n8G+mPUqPqtdE6
 c0A5P2s4il13WyxTtcSxPhpbmsjvmxgMu8h7H9ya3CQ/fWEpyvcSuYPMFvXetCivDsLbODO5mBkaz
 +QjiHQfA==;
Received: from [52.125.138.56] (port=37792 helo=mail.outlook.com)
 by n3plcpnl0065.prod.ams3.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92)
 (envelope-from <support@maxnet.al>)
 id 1iDEG1-007MlF-Jo; Wed, 25 Sep 2019 13:51:29 -0700
Date: Wed, 25 Sep 2019 20:51:24 +0000 (UTC)
From: support@maxnet.al
To: Ben Greear <greearb@candelatech.com>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <E35DD50A54031C50.de2e2e47-8353-471a-9b8c-2d93bbb6a536@mail.outlook.com>
In-Reply-To: <c9f4eef7-e45a-15c0-35d9-9f747f88dcf6@ncentric.com>
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
 <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
 <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
 <ce97ab8de243a3b9d9e08b466ccf76d2@maxnet.al>
 <767b2c5a-1a91-b694-7d79-8ed02860ec23@candelatech.com>
 <E35DD50A54031C50.f6a00d5e-317f-456b-b3e4-15891dc232b5@mail.outlook.com>
 <c9f32f30-c40b-81a6-8497-fab4cebb5df1@candelatech.com>
 <E35DD50A54031C50.bd843672-79ee-46bd-9cc5-21e5b7f21227@mail.outlook.com>
 <c9f4eef7-e45a-15c0-35d9-9f747f88dcf6@ncentric.com>
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
X-CMAE-Envelope: MS4wfDeky9IkzrXoo6rr+evpbep2ImyY/Ui0E4jg3Pu0zOu/7jqWZcXtNg1RBnVlttolg4nAKc1GfTtKGl/97tJ5+15cHJiPg0OSmPTPMyr9s4aqzXOMhLhe
 fnnyT7Ti7zrlrqK/lMxtSyzfeBpo8SMhUYHxTn5z8sdrb9HXzItBE4uwA3021l0V+5/0sit/xeomS2MaUk6sQOzfswyjbRuzHv1F6lael4E+3bqWIj/rrOZw
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_135232_572790_192A4A82 
X-CRM114-Status: GOOD (  28.78  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.121.43.194 listed in list.dnswl.org]
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
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7846298610386018018=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7846298610386018018==
Content-Type: multipart/alternative; 
	boundary="----=_Part_103_1752963286.1569444684073"

------=_Part_103_1752963286.1569444684073
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,=20






In the beginning i was using 2 dishes on each side. They are ubiquiti 2x2 d=
ual polarized dishes and i connected the chains of station in the same way =
as AP and i still had issues. After that i thought the problem might be bec=
ause this card uses mimo multipath and AP ch0 should talk with station ch=
=C2=A0 0 1 2 3.=C2=A0With 2x2 dishes that's not possible because=20






DISH 1=20




CH0 -H=20




CH1 -V=20






CH2 -H=20




CH3 -V=20






The station pigtails were connected in the same way as AP.=C2=A0=20




In this configuration AP ch0 whish is Horizontal can talk only with station=
 ch0 and ch2.=20






So i decided to go with Jiroues single polarity dishes on each side. You th=
ink that single polarity might be the problem but why it doesn't cause prob=
lems in routers when there are 4 omni antennas and still you can get datara=
tes 866Mbps by phone(my phone is 2x2). The testing distance now is 5km but =
the distance where they will be installed is 13km. We also have dozens of u=
biquiti and mikrotik links and 13km it's not a big deal.=C2=A0=20






Today also i noticed something strange. The AP was openwrt and station was =
ddwrt and i got=C2=A0 433/866=C2=A0and after changing the station to openwr=
t the datarates got worse. Ddwrt wasn't good either. It had datarates probl=
em.=C2=A0=20






Can it be something wrong with firmware antenna configuration? Why it shows=
 only two antennas iw phy phy0 info?=20






Thank you=20









On Wed, Sep 25, 2019 at 6:34 PM +0200, "Koen Vandeputte" <koen.vandeputte@n=
centric.com> wrote:











On 25.09.19 17:14, support@maxnet.al wrote:
> This is long distance, 5km with 4 dishes on each side. They are all=20
> vertical and all chains have signal range -60 to -65.
>
> I don't have omni antennas. Is there a problem that i am using dishes?
>
>
I run dozens of long-range devices, and I'm seeing 2 issues in your setup:

1)

- Ack-to issues kick in starting from roughly 1000m.=C2=A0 When you cannot=
=20
alter ack_to (coverage class), you will notice severe performance issues=20
above 1000m

2)

- Using identical polarization on all chains is an absolute performance=20
killer.

I have 2 devices,=C2=A0 both 2x2 802.11n, HT40 SGI, which are only 150m=20
apart, all chains V polarized.

When running speedtests, inspecting ath9k rate control shows it is stuck=20
at the max speed for 1 chain (iso 2)

In my case it means the absolute link rate is 130Mbit iso 270 in this=20
configuration.

I can imagine using 4 chains will even reduce performance a lot more.

You should really try to use use H + V+ (-45) + (+45).

Also, ensure radio's at both sides have the chains on identical=20
polarization. (Chain0 - V,=C2=A0 Chain1 - H, ..)


Regards,

Koen

>
> On Wed, Sep 25, 2019 at 5:11 PM +0200, "Ben Greear"=20
> > wrote:
>
>     Is this short distance or long?
>
>     Please try short distance with omni antenna first to make sure you ar=
e not hitting the delayed-ack issue
>     or problems with your antenna.
>
>     Change your antenna orientation so that they point in different direc=
tions.
>
>     Thanks,
>     Ben
>
>     On 9/25/19 6:49 AM, support@maxnet.al wrote:
>     > Hello,
>     >=20
>     > Today i managed to connect the station wds at 80MHz channel. Signal=
 is -56 and i have very low datarates. I have attached a photo.
>     >=20
>     >  =C2=A0When station was ddwrt and AP openwrt the datarates were 866=
/433. TX won't do more than VHT-NSS 1 although RX it's not good either beca=
use it's a 4 chain=20
>     > radio and it should do VHT-NSS4.
>     >=20
>     > Thank you,
>     > Klevis
>     >=20
>     >=20
>     >=20
>     >=20
>     > On Mon, Sep 23, 2019 at 6:36 PM +0200, "Ben Greear" > wrote: > > We=
eks or months or whenever I have time, and maybe
>     sooner if someone > wants to sponsor it. Please understand I, and
>     probably everyone else working > on OpenWRT, am busy with lots of
>     other projects and community work often > gets pushed to the back
>     burner. > > Thanks, > Ben > > On 9/23/19 8:18 AM,
>     support@maxnet.al wrote: > > Hi Ben, > > > > When do you think you
>     might be able to make those changes to your driver? > > > >
>     Thanks, > > Klevis. > > > > > > > > On 2019-09-20 13:00, Ben
>     Greear wrote: > >> On 9/20/19 12:55 PM, Vincent Wiemann wrote: >
>     >>> Hi Klevis, > >>> > >>> have you tried it with a short
>     distance? > >>> If you did you should better ask Ben Greear
>     directly. > >> > >> I asked him to post publicly so that others
>     can help answer and that > >> my own answers might > >> help
>     someone else. > >> > >> I have some patches that should enable
>     coverage class settings for > >> wave-2, but I am too busy > >>
>     with other things right now to port them to my ath10k-ct
>     driver/firmware. > >> > >> Thanks, > >> Ben > >> > >>> > >>> By
>     the way ath10k gen 2 chipsets don't work very well with long
>     distance links without a > >>> special feature which
>     implementation is only available to companies like Ubiquiti and
>     very few > >>> people who have an own reverse-engineered
>     implementation. > >>> It works on IPQ401X, QCA9886 and QCA9888
>     based chips only. > >>> > >>> And it is not possible to set a
>     coverage class for gen 2 devices, yet as far as I know due to
>     missing > >>> documentation and implementation (correct me if that
>     information is outdated). > >>> Furthermore a high channel width
>     often results in problems > >>> due to lower receiver sensibility.
>     > >>> We have better experiences with lower channel widths and
>     sometimes get more throughput with that. > >>> > >>> Actually I
>     think this does not explain your connection issues as 13 km is not
>     that much. > >>> > >>> Regards, > >>> > >>> Vincent Wiemann > >>>
>     > >>> On 20.09.19 18:30, support@maxnet.al wrote: > >>>> Hello
>     everyone, > >>>> > >>>> I am trying to setup a custom made outdoor
>     link with Apu2d2 board devices and QCA9994 cards from compex.
>     After i installed openwrt and ath10k ct driver, > >>>> kmod ath10k
>     and board-2.bin the device can run a 80MHz channel in WDS AP. The
>     problem is that it won't run as station or station wds. It can
>     scan > >>>> the SSIDs but won't connect them. > >>>> > >>>> Any
>     suggestion? > >>>> > >>>> Thank you! > >>>> Klevis > >>>> > >>> >
>     >>> _______________________________________________ > >>>
>     openwrt-devel mailing list > >>> openwrt-devel@lists.openwrt.org >
>     >>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel > >>>
>     > > > > > -- > Ben GreearCandela Technologies Inc
>     http://www.candelatech.com > -- Ben Greear Candela Technologies
>     Inc http://www.candelatech.com
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel






------=_Part_103_1752963286.1569444684073
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div dir="ltr" text-align="left"><div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">Hi, <br></div><div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">
<br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">In the beginning i was using 2 dishes on each side. They are ubiquiti 2x2 dual polarized dishes and i connected the chains of station in the same way as AP and i still had issues. After that i thought the problem might be because this card uses mimo multipath and AP ch0 should talk with station ch&nbsp; <a href="tel:+440123">0 1 2 3.</a>&nbsp;With 2x2 dishes that's not possible because <br>
<br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">DISH 1 <br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">CH0 -H <br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">CH1 -V <br>
<br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">CH2 -H <br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">CH3 -V <br>
<br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">The station pigtails were connected in the same way as AP.&nbsp; <br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">In this configuration AP ch0 whish is Horizontal can talk only with station ch0 and ch2. <br>
<br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">So i decided to go with Jiroues single polarity dishes on each side. You think that single polarity might be the problem but why it doesn't cause problems in routers when there are 4 omni antennas and still you can get datarates 866Mbps by phone(my phone is 2x2). The testing distance now is 5km but the distance where they will be installed is 13km. We also have dozens of ubiquiti and mikrotik links and 13km it's not a big deal.&nbsp; <br>
<br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">Today also i noticed something strange. The AP was openwrt and station was ddwrt and i got&nbsp; <a href="tel:+44433866">433/866</a>&nbsp;and after changing the station to openwrt the datarates got worse. Ddwrt wasn't good either. It had datarates problem.&nbsp; <br>
<br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">Can it be something wrong with firmware antenna configuration? Why it shows only two antennas iw phy phy0 info? <br>
<br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">Thank you <br>
<br>
</div>
<div id="ms-outlook-mobile-signature" dir="ltr" style="text-align: left;"><div><br></div></div></div><br><br><br>
<div class="gmail_quote">On Wed, Sep 25, 2019 at 6:34 PM +0200, "Koen Vandeputte" <span dir="ltr">&lt;<a href="mailto:koen.vandeputte@ncentric.com" target="_blank">koen.vandeputte@ncentric.com</a>&gt;</span> wrote:<br>
<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir="3D&quot;ltr&quot;">
<pre>
On 25.09.19 17:14, support@maxnet.al wrote:
&gt; This is long distance, 5km with 4 dishes on each side. They are all 
&gt; vertical and all chains have signal range -60 to -65.
&gt;
&gt; I don't have omni antennas. Is there a problem that i am using dishes?
&gt;
&gt;
I run dozens of long-range devices, and I'm seeing 2 issues in your setup:

1)

- Ack-to issues kick in starting from roughly 1000m.&nbsp; When you cannot 
alter ack_to (coverage class), you will notice severe performance issues 
above 1000m

2)

- Using identical polarization on all chains is an absolute performance 
killer.

I have 2 devices,&nbsp; both 2x2 802.11n, HT40 SGI, which are only 150m 
apart, all chains V polarized.

When running speedtests, inspecting ath9k rate control shows it is stuck 
at the max speed for 1 chain (iso 2)

In my case it means the absolute link rate is 130Mbit iso 270 in this 
configuration.

I can imagine using 4 chains will even reduce performance a lot more.

You should really try to use use H + V+ (-45) + (+45).

Also, ensure radio's at both sides have the chains on identical 
polarization. (Chain0 - V,&nbsp; Chain1 - H, ..)


Regards,

Koen

&gt;
&gt; On Wed, Sep 25, 2019 at 5:11 PM +0200, "Ben Greear" 
&gt; <greearb@candelatech.com <mailto:greearb@candelatech.com>&gt; wrote:
&gt;
&gt;     Is this short distance or long?
&gt;
&gt;     Please try short distance with omni antenna first to make sure you are not hitting the delayed-ack issue
&gt;     or problems with your antenna.
&gt;
&gt;     Change your antenna orientation so that they point in different directions.
&gt;
&gt;     Thanks,
&gt;     Ben
&gt;
&gt;     On 9/25/19 6:49 AM, support@maxnet.al wrote:
&gt;     &gt; Hello,
&gt;     &gt; 
&gt;     &gt; Today i managed to connect the station wds at 80MHz channel. Signal is -56 and i have very low datarates. I have attached a photo.
&gt;     &gt; 
&gt;     &gt;  &nbsp;When station was ddwrt and AP openwrt the datarates were 866/433. TX won't do more than VHT-NSS 1 although RX it's not good either because it's a 4 chain 
&gt;     &gt; radio and it should do VHT-NSS4.
&gt;     &gt; 
&gt;     &gt; Thank you,
&gt;     &gt; Klevis
&gt;     &gt; 
&gt;     &gt; 
&gt;     &gt; 
&gt;     &gt; 
&gt;     &gt; On Mon, Sep 23, 2019 at 6:36 PM +0200, "Ben Greear" &gt; wrote: &gt; &gt; Weeks or months or whenever I have time, and maybe
&gt;     sooner if someone &gt; wants to sponsor it. Please understand I, and
&gt;     probably everyone else working &gt; on OpenWRT, am busy with lots of
&gt;     other projects and community work often &gt; gets pushed to the back
&gt;     burner. &gt; &gt; Thanks, &gt; Ben &gt; &gt; On 9/23/19 8:18 AM,
&gt;     support@maxnet.al wrote: &gt; &gt; Hi Ben, &gt; &gt; &gt; &gt; When do you think you
&gt;     might be able to make those changes to your driver? &gt; &gt; &gt; &gt;
&gt;     Thanks, &gt; &gt; Klevis. &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On 2019-09-20 13:00, Ben
&gt;     Greear wrote: &gt; &gt;&gt; On 9/20/19 12:55 PM, Vincent Wiemann wrote: &gt;
&gt;     &gt;&gt;&gt; Hi Klevis, &gt; &gt;&gt;&gt; &gt; &gt;&gt;&gt; have you tried it with a short
&gt;     distance? &gt; &gt;&gt;&gt; If you did you should better ask Ben Greear
&gt;     directly. &gt; &gt;&gt; &gt; &gt;&gt; I asked him to post publicly so that others
&gt;     can help answer and that &gt; &gt;&gt; my own answers might &gt; &gt;&gt; help
&gt;     someone else. &gt; &gt;&gt; &gt; &gt;&gt; I have some patches that should enable
&gt;     coverage class settings for &gt; &gt;&gt; wave-2, but I am too busy &gt; &gt;&gt;
&gt;     with other things right now to port them to my ath10k-ct
&gt;     driver/firmware. &gt; &gt;&gt; &gt; &gt;&gt; Thanks, &gt; &gt;&gt; Ben &gt; &gt;&gt; &gt; &gt;&gt;&gt; &gt; &gt;&gt;&gt; By
&gt;     the way ath10k gen 2 chipsets don't work very well with long
&gt;     distance links without a &gt; &gt;&gt;&gt; special feature which
&gt;     implementation is only available to companies like Ubiquiti and
&gt;     very few &gt; &gt;&gt;&gt; people who have an own reverse-engineered
&gt;     implementation. &gt; &gt;&gt;&gt; It works on IPQ401X, QCA9886 and QCA9888
&gt;     based chips only. &gt; &gt;&gt;&gt; &gt; &gt;&gt;&gt; And it is not possible to set a
&gt;     coverage class for gen 2 devices, yet as far as I know due to
&gt;     missing &gt; &gt;&gt;&gt; documentation and implementation (correct me if that
&gt;     information is outdated). &gt; &gt;&gt;&gt; Furthermore a high channel width
&gt;     often results in problems &gt; &gt;&gt;&gt; due to lower receiver sensibility.
&gt;     &gt; &gt;&gt;&gt; We have better experiences with lower channel widths and
&gt;     sometimes get more throughput with that. &gt; &gt;&gt;&gt; &gt; &gt;&gt;&gt; Actually I
&gt;     think this does not explain your connection issues as 13 km is not
&gt;     that much. &gt; &gt;&gt;&gt; &gt; &gt;&gt;&gt; Regards, &gt; &gt;&gt;&gt; &gt; &gt;&gt;&gt; Vincent Wiemann &gt; &gt;&gt;&gt;
&gt;     &gt; &gt;&gt;&gt; On 20.09.19 18:30, support@maxnet.al wrote: &gt; &gt;&gt;&gt;&gt; Hello
&gt;     everyone, &gt; &gt;&gt;&gt;&gt; &gt; &gt;&gt;&gt;&gt; I am trying to setup a custom made outdoor
&gt;     link with Apu2d2 board devices and QCA9994 cards from compex.
&gt;     After i installed openwrt and ath10k ct driver, &gt; &gt;&gt;&gt;&gt; kmod ath10k
&gt;     and board-2.bin the device can run a 80MHz channel in WDS AP. The
&gt;     problem is that it won't run as station or station wds. It can
&gt;     scan &gt; &gt;&gt;&gt;&gt; the SSIDs but won't connect them. &gt; &gt;&gt;&gt;&gt; &gt; &gt;&gt;&gt;&gt; Any
&gt;     suggestion? &gt; &gt;&gt;&gt;&gt; &gt; &gt;&gt;&gt;&gt; Thank you! &gt; &gt;&gt;&gt;&gt; Klevis &gt; &gt;&gt;&gt;&gt; &gt; &gt;&gt;&gt; &gt;
&gt;     &gt;&gt;&gt; _______________________________________________ &gt; &gt;&gt;&gt;
&gt;     openwrt-devel mailing list &gt; &gt;&gt;&gt; openwrt-devel@lists.openwrt.org &gt;
&gt;     &gt;&gt;&gt; https://lists.openwrt.org/mailman/listinfo/openwrt-devel &gt; &gt;&gt;&gt;
&gt;     &gt; &gt; &gt; &gt; &gt; -- &gt; Ben GreearCandela Technologies Inc
&gt;     http://www.candelatech.com &gt; -- Ben Greear Candela Technologies
&gt;     Inc http://www.candelatech.com
&gt;
&gt;
&gt; _______________________________________________
&gt; openwrt-devel mailing list
&gt; openwrt-devel@lists.openwrt.org
&gt; https://lists.openwrt.org/mailman/listinfo/openwrt-devel
</greearb@candelatech.com></pre>
</div>

</blockquote>
</div>
</body></html>
------=_Part_103_1752963286.1569444684073--


--===============7846298610386018018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7846298610386018018==--

