Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72775BE0FF
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 17:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GuCzy5tw3f0BZCb2mEYtqtaDdU7OvtfzrXsAkuYLDrQ=; b=h7oPsJOGQiRbzVkV/IQEr9wXm
	ZWdKYkbUQlXZxjCB7oc+0oxU4YK3gwZlszXtS+8m/uu+MSW6ni/9DwSDFRvyFwc6bxUbhvjnEeT1C
	YQoGEI/GW6O7YI4ECiFjFtb2+QVo6yMV8QWuaKC180i/NjpWv+9H6tQ5TIi8kEirDaaEy/gG8vlkJ
	iWp+5UhrECWlS7xbjP731Q+Xbr35jbl2cX9M1GK4LS4PsvKfVuTmJPp9HXPcQiPZtqPDYrY4pRjZc
	VuOCsZ5/u+7nAlTk8tyVV1RUTDqPCEE3XzVIMGJz+BkNEXp7ZTf/ONMdFSLOLpr6AU8sld9K4hsT+
	PRUZtPUbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD91M-0001gN-BD; Wed, 25 Sep 2019 15:16:00 +0000
Received: from n1nlsmtp02.prod.ams1.secureserver.net ([188.121.43.194]
 helo=n1nlsmtp02.shr.prod.ams1.secureserver.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD91A-0001fd-Nv
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 15:15:51 +0000
Received: from n3plcpnl0065.prod.ams3.secureserver.net ([160.153.153.132])
 by : HOSTING RELAY : with ESMTP
 id D909iCFYC9A1PD909iZIUi; Wed, 25 Sep 2019 08:14:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=maxnet.al; 
 s=default;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:
 Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J/DpCO93VNVs7Rk2+edgcplaxIZdwePR74kyXP2Z900=; b=RrcijwEpYfVwQ3Wm0UOEewaUbW
 zHKFyfD8smMy/T8rUyYGceej+zSWieR/pT9ZfxEzEteC4NDMHB6nDQsMpFfpuekyWP0ml/KUAefBb
 fSstrnNj94hTZV0zLnqyFV57c4rPWbV6IcFLfXIV1Oe9W019C1Sh+q1vvanIQDoNtyJ0kGijQBWe3
 m+Fr+42zWqV3etA0aBYW+7JS1g3zhnCW1wA6mqKP8RlGzcwbJvmvcha1Nc4cN8akFu9u5Ls1NK26L
 skioLsPV90EULWB1eo+F+EBZz3KIKEFDcxN7Ldgy3EgMXV3Dwam2YKNzc4m4XlqPSCyj/mULcUIx4
 vjwGkJ3A==;
Received: from [52.125.138.56] (port=40004 helo=mail.outlook.com)
 by n3plcpnl0065.prod.ams3.secureserver.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92)
 (envelope-from <support@maxnet.al>)
 id 1iD909-0018T0-AI; Wed, 25 Sep 2019 08:14:45 -0700
Date: Wed, 25 Sep 2019 15:14:39 +0000 (UTC)
From: support@maxnet.al
To: Ben Greear <greearb@candelatech.com>
Message-ID: <E35DD50A54031C50.bd843672-79ee-46bd-9cc5-21e5b7f21227@mail.outlook.com>
In-Reply-To: <c9f32f30-c40b-81a6-8497-fab4cebb5df1@candelatech.com>
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
 <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
 <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
 <ce97ab8de243a3b9d9e08b466ccf76d2@maxnet.al>
 <767b2c5a-1a91-b694-7d79-8ed02860ec23@candelatech.com>
 <E35DD50A54031C50.f6a00d5e-317f-456b-b3e4-15891dc232b5@mail.outlook.com>
 <c9f32f30-c40b-81a6-8497-fab4cebb5df1@candelatech.com>
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
X-CMAE-Envelope: MS4wfBmodPzxL9rYmlS2d9eI3uQJ2taoooZ3/Ob0HiH//FxzvI1yqcqf/xNCdtBAMa4SJptTFmOXu4pOGxT8IefOlDbo8loWb8FexB5qMNz/jqC4Li0tnv67
 HjW2fZaOY2LsfICRQ1fq/nYu2tGHijfrT409dXvS+H9pvKkzE3igKwUt+/iWMBaDAbmuojOpLw3tKTuvmcNRDffAU0cjoucXR4cqesgqYFAWeyNWeTuXtDsn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_081549_166316_AD46E166 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.121.43.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [188.121.43.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============4140074135916179812=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4140074135916179812==
Content-Type: multipart/alternative; 
	boundary="----=_Part_3462_445151284.1569424479780"

------=_Part_3462_445151284.1569424479780
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is long distance, 5km with 4 dishes on each side. They are all vertica=
l and all chains have signal range -60 to -65.=20




I don't have omni antennas. Is there a problem that i am using dishes?=20




On Wed, Sep 25, 2019 at 5:11 PM +0200, "Ben Greear" <greearb@candelatech.co=
m> wrote:










Is this short distance or long?

Please try short distance with omni antenna first to make sure you are not =
hitting the delayed-ack issue
or problems with your antenna.

Change your antenna orientation so that they point in different directions.

Thanks,
Ben

On 9/25/19 6:49 AM, support@maxnet.al wrote:
> Hello,
>=20
> Today i managed to connect the station wds at 80MHz channel. Signal is -5=
6 and i have very low datarates. I have attached a photo.
>=20
>  =C2=A0When station was ddwrt and AP openwrt the datarates were 866/433. =
TX won't do more than VHT-NSS 1 although RX it's not good either because it=
's a 4 chain=20
> radio and it should do VHT-NSS4.
>=20
> Thank you,
> Klevis
>=20
>=20
>=20
>=20
> On Mon, Sep 23, 2019 at 6:36 PM +0200, "Ben Greear" > wrote:
>=20
>     Weeks or months or whenever I have time, and maybe sooner if someone
>     wants to sponsor it.  Please understand I, and probably everyone else=
 working
>     on OpenWRT, am busy with lots of other projects and community work of=
ten
>     gets pushed to the back burner.
>=20
>     Thanks,
>     Ben
>=20
>     On 9/23/19 8:18 AM, support@maxnet.al wrote:
>     > Hi Ben,
>     >=20
>     > When do you think you might be able to make those changes to your d=
river?
>     >=20
>     > Thanks,
>     > Klevis.
>     >=20
>     >=20
>     >=20
>     > On 2019-09-20 13:00, Ben Greear wrote:
>     >> On 9/20/19 12:55 PM, Vincent Wiemann wrote:
>     >>> Hi Klevis,
>     >>>
>     >>> have you tried it with a short distance?
>     >>> If you did you should better ask Ben Greear directly.
>     >>
>     >> I asked him to post publicly so that others can help answer and th=
at
>     >> my own answers might
>     >> help someone else.
>     >>
>     >> I have some patches that should enable coverage class settings for
>     >> wave-2, but I am too busy
>     >> with other things right now to port them to my ath10k-ct driver/fi=
rmware.
>     >>
>     >> Thanks,
>     >> Ben
>     >>
>     >>>
>     >>> By the way ath10k gen 2 chipsets don't work very well with long d=
istance links without a
>     >>> special feature which implementation is only available to compani=
es like Ubiquiti and very few
>     >>> people who have an own reverse-engineered implementation.
>     >>> It works on IPQ401X, QCA9886 and QCA9888 based chips only.
>     >>>
>     >>> And it is not possible to set a coverage class for gen 2 devices,=
 yet as far as I know due to missing
>     >>> documentation and implementation (correct me if that information =
is outdated).
>     >>> Furthermore a high channel width often results in problems
>     >>> due to lower receiver sensibility.
>     >>> We have better experiences with lower channel widths and sometime=
s get more throughput with that.
>     >>>
>     >>> Actually I think this does not explain your connection issues as =
13 km is not that much.
>     >>>
>     >>> Regards,
>     >>>
>     >>> Vincent Wiemann
>     >>>
>     >>> On 20.09.19 18:30, support@maxnet.al wrote:
>     >>>> Hello everyone,
>     >>>>
>     >>>> I am trying to setup a custom made outdoor link with Apu2d2 boar=
d devices and QCA9994 cards from compex. After i installed openwrt and ath1=
0k ct driver,=20
>     >>>> kmod ath10k and board-2.bin the device can run a 80MHz channel i=
n WDS AP. The problem is that it won't run as station or station wds. It ca=
n scan
>     >>>> the SSIDs but won't connect them.
>     >>>>
>     >>>> Any suggestion?
>     >>>>
>     >>>> Thank you!
>     >>>> Klevis
>     >>>>
>     >>>
>     >>> _______________________________________________
>     >>> openwrt-devel mailing list
>     >>> openwrt-devel@lists.openwrt.org
>     >>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>     >>>
>     >=20
>=20
>=20
>     --=20
>     Ben GreearCandela Technologies Inc http://www.candelatech.com
>=20


--=20
Ben Greear=20
Candela Technologies Inc  http://www.candelatech.com







------=_Part_3462_445151284.1569424479780
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">This is long distance, 5km with 4 dishes on each side. They are all vertical and all chains have signal range -60 to -65. <br>
<br>
</div>
<div dir="auto" style="direction: ltr; margin: 0; padding: 0; font-family: sans-serif; font-size: 11pt; color: black; ">I don't have omni antennas. Is there a problem that i am using dishes? </div>
<br><br><br>
<div class="gmail_quote">On Wed, Sep 25, 2019 at 5:11 PM +0200, "Ben Greear" <span dir="ltr">&lt;<a href="mailto:greearb@candelatech.com" target="_blank">greearb@candelatech.com</a>&gt;</span> wrote:<br>
<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir="3D&quot;ltr&quot;">
<pre>Is this short distance or long?

Please try short distance with omni antenna first to make sure you are not hitting the delayed-ack issue
or problems with your antenna.

Change your antenna orientation so that they point in different directions.

Thanks,
Ben

On 9/25/19 6:49 AM, support@maxnet.al wrote:
&gt; Hello,
&gt; 
&gt; Today i managed to connect the station wds at 80MHz channel. Signal is -56 and i have very low datarates. I have attached a photo.
&gt; 
&gt;  &nbsp;When station was ddwrt and AP openwrt the datarates were 866/433. TX won't do more than VHT-NSS 1 although RX it's not good either because it's a 4 chain 
&gt; radio and it should do VHT-NSS4.
&gt; 
&gt; Thank you,
&gt; Klevis
&gt; 
&gt; 
&gt; 
&gt; 
&gt; On Mon, Sep 23, 2019 at 6:36 PM +0200, "Ben Greear" <greearb@candelatech.com <mailto:greearb@candelatech.com>&gt; wrote:
&gt; 
&gt;     Weeks or months or whenever I have time, and maybe sooner if someone
&gt;     wants to sponsor it.  Please understand I, and probably everyone else working
&gt;     on OpenWRT, am busy with lots of other projects and community work often
&gt;     gets pushed to the back burner.
&gt; 
&gt;     Thanks,
&gt;     Ben
&gt; 
&gt;     On 9/23/19 8:18 AM, support@maxnet.al wrote:
&gt;     &gt; Hi Ben,
&gt;     &gt; 
&gt;     &gt; When do you think you might be able to make those changes to your driver?
&gt;     &gt; 
&gt;     &gt; Thanks,
&gt;     &gt; Klevis.
&gt;     &gt; 
&gt;     &gt; 
&gt;     &gt; 
&gt;     &gt; On 2019-09-20 13:00, Ben Greear wrote:
&gt;     &gt;&gt; On 9/20/19 12:55 PM, Vincent Wiemann wrote:
&gt;     &gt;&gt;&gt; Hi Klevis,
&gt;     &gt;&gt;&gt;
&gt;     &gt;&gt;&gt; have you tried it with a short distance?
&gt;     &gt;&gt;&gt; If you did you should better ask Ben Greear directly.
&gt;     &gt;&gt;
&gt;     &gt;&gt; I asked him to post publicly so that others can help answer and that
&gt;     &gt;&gt; my own answers might
&gt;     &gt;&gt; help someone else.
&gt;     &gt;&gt;
&gt;     &gt;&gt; I have some patches that should enable coverage class settings for
&gt;     &gt;&gt; wave-2, but I am too busy
&gt;     &gt;&gt; with other things right now to port them to my ath10k-ct driver/firmware.
&gt;     &gt;&gt;
&gt;     &gt;&gt; Thanks,
&gt;     &gt;&gt; Ben
&gt;     &gt;&gt;
&gt;     &gt;&gt;&gt;
&gt;     &gt;&gt;&gt; By the way ath10k gen 2 chipsets don't work very well with long distance links without a
&gt;     &gt;&gt;&gt; special feature which implementation is only available to companies like Ubiquiti and very few
&gt;     &gt;&gt;&gt; people who have an own reverse-engineered implementation.
&gt;     &gt;&gt;&gt; It works on IPQ401X, QCA9886 and QCA9888 based chips only.
&gt;     &gt;&gt;&gt;
&gt;     &gt;&gt;&gt; And it is not possible to set a coverage class for gen 2 devices, yet as far as I know due to missing
&gt;     &gt;&gt;&gt; documentation and implementation (correct me if that information is outdated).
&gt;     &gt;&gt;&gt; Furthermore a high channel width often results in problems
&gt;     &gt;&gt;&gt; due to lower receiver sensibility.
&gt;     &gt;&gt;&gt; We have better experiences with lower channel widths and sometimes get more throughput with that.
&gt;     &gt;&gt;&gt;
&gt;     &gt;&gt;&gt; Actually I think this does not explain your connection issues as 13 km is not that much.
&gt;     &gt;&gt;&gt;
&gt;     &gt;&gt;&gt; Regards,
&gt;     &gt;&gt;&gt;
&gt;     &gt;&gt;&gt; Vincent Wiemann
&gt;     &gt;&gt;&gt;
&gt;     &gt;&gt;&gt; On 20.09.19 18:30, support@maxnet.al wrote:
&gt;     &gt;&gt;&gt;&gt; Hello everyone,
&gt;     &gt;&gt;&gt;&gt;
&gt;     &gt;&gt;&gt;&gt; I am trying to setup a custom made outdoor link with Apu2d2 board devices and QCA9994 cards from compex. After i installed openwrt and ath10k ct driver, 
&gt;     &gt;&gt;&gt;&gt; kmod ath10k and board-2.bin the device can run a 80MHz channel in WDS AP. The problem is that it won't run as station or station wds. It can scan
&gt;     &gt;&gt;&gt;&gt; the SSIDs but won't connect them.
&gt;     &gt;&gt;&gt;&gt;
&gt;     &gt;&gt;&gt;&gt; Any suggestion?
&gt;     &gt;&gt;&gt;&gt;
&gt;     &gt;&gt;&gt;&gt; Thank you!
&gt;     &gt;&gt;&gt;&gt; Klevis
&gt;     &gt;&gt;&gt;&gt;
&gt;     &gt;&gt;&gt;
&gt;     &gt;&gt;&gt; _______________________________________________
&gt;     &gt;&gt;&gt; openwrt-devel mailing list
&gt;     &gt;&gt;&gt; openwrt-devel@lists.openwrt.org
&gt;     &gt;&gt;&gt; https://lists.openwrt.org/mailman/listinfo/openwrt-devel
&gt;     &gt;&gt;&gt;
&gt;     &gt; 
&gt; 
&gt; 
&gt;     -- 
&gt;     Ben GreearCandela Technologies Inc http://www.candelatech.com
&gt; 


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

</greearb@candelatech.com></greearb@candelatech.com></pre>
</div>

</blockquote>
</div>
</body></html>
------=_Part_3462_445151284.1569424479780--


--===============4140074135916179812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4140074135916179812==--

