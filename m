Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB876FB88E
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 20:12:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPwVC1/M0zpfZu3zVc3ZhDnCCgzeUlkDl1hOVV0In0E=; b=YW0EzxUbv3oIyN
	RgxP3HoFDjA9SR9ZAiOc5eqh+ebyChKbBaIy2bFITxlirLHImgkrgVhrr/1LBuRDzHVWdE1Za9TLO
	zPAvGfvZDQtlDCEmojCK//y7GeCHORhzdACjNeO9GeqURPCxABRlfLoanAvwgWK1Jal9KhpU3YRcQ
	yiHxXcq+GjQ0ihs+7b1JcF2VJ2MEmWjYeDGOUdOXbMtv5Y9qiM9JIojbgLEpR0MsAHEJGYUGd/OT/
	v6bm/fXQ+USs62stJP9/AtX3vTvORYyAMcz6QBaDtL1MuGyJN8Uykvap7cpnCSe0usbb0krtk7qZY
	JTbL4/OKGoMN94J2HrkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUy3o-0001H1-NY; Wed, 13 Nov 2019 19:12:12 +0000
Received: from a1i272.smtp2go.com ([43.228.185.16])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUy3g-0001GF-VA
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 19:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=smtpservice.net; s=m6sda0.a1-4.dyn; x=1573673211; h=Feedback-ID:
 X-Smtpcorp-Track:Date:Message-ID:From:To:Subject:Reply-To:Sender:
 List-Unsubscribe; bh=BlqfnZERYdjpqbXYooEXDyzzTeeaYIdg2ezAvv/cffQ=; b=kURI9R1K
 jHSMZz3JRCvNZ92VEwpaIU4Gq6IMGZdQnlcXohdlb7VL20mMYf8IahEOIUcfgOEKAi7i+w7MTv/3e
 enKsYytc/T+hpre4bShpQnITqv+yL1AIDsHf5s25w4Ds452p4yycJwN/yIvpIK9FfJEuME8Gwlq0x
 /GhfVO7nESKnzjCuoc81MpMEIFc5jGmlXkk0WbkleKSYff4kuu3rwFAbiPgyfSFflectzbPvcb4vv
 qmzBdRDPQmy1ceWDt7Ji3ffPoXinXiH8JdCtHoBRCpygXDIzz2kgDZXSiwPTh467hrqPuOsiGyJL7
 hcpIKd1i+7rSEjrYR/B7L1TAHw==;
Received: from [10.173.255.233] (helo=SmtpCorp)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1iUy3P-ItkG13-LZ; Wed, 13 Nov 2019 19:11:48 +0000
Received: from [10.68.161.204] (helo=mail.blazebox.homeip.net)
 by smtpcorp.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1iUy3O-IbZrx4-Bt; Wed, 13 Nov 2019 19:11:46 +0000
Received: from blazebox.homeip.net (localhost [127.0.0.1])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id 523B2630901;
 Wed, 13 Nov 2019 14:11:40 -0500 (EST)
X-Virus-Scanned: amavisd-new at blazebox.homeip.net
Received: from mail.blazebox.homeip.net ([127.0.0.1])
 by blazebox.homeip.net (mail.blazebox.homeip.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id quCUGwWuTf8U; Wed, 13 Nov 2019 14:11:37 -0500 (EST)
Received: from [IPv6:2001:470:1f07:a3a:2dac:cce6:ced7:c53d] (unknown
 [IPv6:2001:470:1f07:a3a:2dac:cce6:ced7:c53d])
 by mail.blazebox.homeip.net (Postfix) with ESMTPA id C24CA630900;
 Wed, 13 Nov 2019 14:11:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blazebox.homeip.net;
 s=mail; t=1573672296;
 bh=BlqfnZERYdjpqbXYooEXDyzzTeeaYIdg2ezAvv/cffQ=;
 h=Subject:To:References:From:Cc:Date:In-Reply-To;
 b=wYMfc0rZo448mntL72OG526ntnFLAY/pdcF0/iOjr3ACSLoCosgrO6acxMxmWY+yw
 J2OeoPuPB0wbF1w9lz3qkTuG5T78pZWwW72XTo8uotLO4TkQcNDBwVE3zQvhmNobfb
 3a4tGvw/69jAxzMRsHM+gqbWTu1EUA6m0sMG4X6+CrL8H3BA3vc4A+75GvpyrDWkGd
 7PBYQOjGay7JiiDu4Uue/EMuU9Odj5XPY2aMB6FsoHLNS0oGW9PZPFpwe5Q3ioVxWz
 h7JjZIwWF/mae/oxsVWm6s5nlulLyfjovfhgdi5QESHuUl3E9O5Ur1Mr57xNLfn69T
 8i59n+4jka29A==
To: "Schmutzler, Adrian" <Adrian.Schmutzler@uni-bayreuth.de>
References: <20191113173242.9037-1-paulb@blazebox.homeip.net>
 <20191113173242.9037-2-paulb@blazebox.homeip.net>
 <f839b2d2d2aa4136b1562baf77074a09@uni-bayreuth.de>
From: Paul Blazejowski <paulb@blazebox.homeip.net>
Message-ID: <6e39fe03-bd61-9683-68ef-0ec9721a422c@blazebox.homeip.net>
Date: Wed, 13 Nov 2019 14:11:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <f839b2d2d2aa4136b1562baf77074a09@uni-bayreuth.de>
Content-Language: en-US
X-Smtpcorp-Track: 1ily3OmPZrx4Ut.zUVzwuNw1
Feedback-ID: 316702m:316702a3jAEqy:316702svgSNKSEU-
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_111205_340319_C17A32C7 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [43.228.185.16 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
Subject: Re: [OpenWrt-Devel] FW: [PATCH 2/2] ath79: add support for Netgear
 WNDR3700v4
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



On 11/13/19 12:42 PM, Schmutzler, Adrian wrote:
> =A0
> =

> =A0
> =

> *From:*Adrian Schmutzler [mailto:mail@adrianschmutzler.de]
> *Sent:* Mittwoch, 13. November 2019 18:39
> *To:* 'Paul Blazejowski' <paulb@blazebox.homeip.net>;
> 'openwrt-devel@lists.openwrt.org' <openwrt-devel@lists.openwrt.org>
> *Subject:* RE: [PATCH 2/2] ath79: add support for Netgear WNDR3700v4
> =

> =A0
Hi Adrian,

> =

> Hi,
> =

>> diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts
>> b/target/linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts
>> new file mode 100644
>> index 0000000000..eb1ad731c3
>> --- /dev/null
>> +++ b/target/linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts
>> @@ -0,0 +1,9 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>> +/dts-v1/;
>> +
>> +#include "ar9344_netgear_wndr.dtsi"
>> +
>> +/ {
>> +=A0=A0=A0 compatible =3D "netgear,wndr3700-v4", "qca,ar9344";
>> +=A0=A0=A0 model =3D "Netgear WNDR3700 v4";
>> +};
> =

> Indent should be fixed here (-> tab).

Ok, noted!

> =

> One could also copy the flashing instructions to the commit message, so
> you do not have to search for them.

OK

> =

> Both could also be done by a willing dev during merge, unless there is
> more to fix.

Thanks for your help!

> =

> Best
> =

> Adrian
> =


Cheerios!
-paul

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
