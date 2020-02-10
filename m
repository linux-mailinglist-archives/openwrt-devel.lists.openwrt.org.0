Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA891573D9
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 13:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NKc7h6jyrPyOlZjUOvGFpwC0yOMlxbAkPQx6jHJAplE=; b=JLtJTlOmAe+atumBri5vuZuas
	tvo5198h4NkiTyWsdjW3hXPAa7j2iKQUi9Gk+KX2UMW1Vp83Cy8dMEcJVm2TrRbH3EMaSKSJTAgwN
	7sb1q5Y8VS+OJig73yStWT3GDhOyGv/odofRD70y0Ye4o4WQOeVPr/U1GiqbMRq5YeOzIv+tMx/OX
	Uev2j+QqQO72XPWxuzydValXQV7xC5FJJ79P0gqt2WSsqc9pXu7mr/EKvfmMUUnYmsQt9mwImsFdd
	Tvflk8gG4dbgyCjKt9KPpI9drwdNeIlJ51sP3q3r7MOglBRFS9iWXzSCPAWB/sms5ftLdTv0fNPhd
	uS4CzXMJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17q1-0007O9-51; Mon, 10 Feb 2020 12:06:53 +0000
Received: from rauberhaus.de ([178.254.39.111] helo=viisauksena.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17pq-0007NS-VS
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 12:06:44 +0000
Received: from [172.16.9.198] (pD95F6B51.dip0.t-ipconnect.de [217.95.107.81])
 by rauberhaus.de (Postfix) with ESMTPSA id 4C44820726
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Feb 2020 13:06:39 +0100 (CET)
Authentication-Results: v32412.1blu.de;
 spf=pass (sender IP is 217.95.107.81) smtp.mailfrom=lede@viisauksena.de
 smtp.helo=[172.16.9.198]
Received-SPF: pass (v32412.1blu.de: connection is authenticated)
To: openwrt-devel@lists.openwrt.org
References: <13479067-774c-dc91-3ff9-45e12f8449cc@viisauksena.de>
 <2dace267-41f7-a4b3-ffeb-1543d8eb8200@marcant.net>
 <43c86752-7148-1c9a-8ac3-0571e296a1b0@gmail.com>
From: jens <lede@viisauksena.de>
Openpgp: id=AB0F97125ABF0FAEDEFBDB8B507EB93F6F6DEE01
Autocrypt: addr=lede@viisauksena.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <8e8a6b0b-b77a-dcea-6f9f-7b8d754727d2@viisauksena.de>
Date: Mon, 10 Feb 2020 13:06:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <43c86752-7148-1c9a-8ac3-0571e296a1b0@gmail.com>
Content-Type: multipart/mixed; boundary="------------5820CF47AB4A622226503ADA"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_040643_309399_4D108A20 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] mptcp in openwrt
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--------------5820CF47AB4A622226503ADA
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

correct,

we use openwrt very conveniently in our gateway machine. And there we
have multiple uplinks to the Internet. We can use MultiWan3 - but for
some other cases we would prefer to aggregate Capacity - and therefore
want to use Multipath TCP. (We have some Internet Servers which we want
to use as our gateways, because there we have static v4 subnets. )

This is similar to what mobile-providers use for seamingless mobile
Network/ wifi transitions. I was in the believe that many "routers" have
some kind of DSL and some have extra LTE Uplink. Would be awesome to use
it both. And this not only as a fallback strategy.
I would agree that most usecases dont have an "endpoint" to reach
(multipath).

tldr: actually we have fibre connection, a vDSL connection, an
Wifi-LongRange connection we want to combine. (in total something around
1600 Mbit down and 800 up )

fuzzle*

On 05.02.20 10:20, Alberto Bursi wrote:
> 
> On 05/02/20 08:51, André Valentin wrote:
...
>> mptcp is only for the devices intiating and terminating the
>> connection. All routers in between (maybe OpenWRT) do not care about
>> this.
>> The only way you could use mptcp on a router is with a proxy service
>> running on it, which will do the mptcp stuff.
...
> But OpenWrt isn't used just for routers and wifi access points now.
> There are a bunch of services you can run on OpenWrt devices,
> and you can get very powerful devices or even run it on normal PC/server
> hardware.
> So it makes sense to ask about multipath even if it's not relevant for a
> router or wifi AP.

--------------5820CF47AB4A622226503ADA
Content-Type: application/pgp-keys;
 name="0x507EB93F6F6DEE01.asc"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0x507EB93F6F6DEE01.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=tOCZ
-----END PGP PUBLIC KEY BLOCK-----

--------------5820CF47AB4A622226503ADA
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------5820CF47AB4A622226503ADA--

