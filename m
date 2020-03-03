Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A273A176E2D
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 05:49:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ig4FYjrdHTDyTCDQnMuiaEsCeBDpjQ2bdEruUXgAL88=; b=lVMmCzeUOhuoAUt7rTeYPoUIr
	Ks0Y4dAGa/4FZ2ZSjK9MNK4rHuyvbYl5MnCNS6L2dpyuwTlOwOQb3OtHoKHsm4Eylmn1FzHpx/D8+
	YY2SFjR2UKDCcTz1PrVEeH4zhvEzS6mwE2gu9V3TAbWiinZmKKhRPjLlQ5It/1ci2/xa9JveKrupX
	hk0g3zvYjpYS8vq/9mzqjga1NHjQp4g8Xo42sFp2ORpcmXMPrajLeaQXzx2l6cenoYXW0UdCqkXbW
	C4XCwJdh6CvmClM5y6HxdunuWGuDl25T7gJXYnjwkpKfDp2UadiNBAeuO4zgQtfZTpVNIfHSwJXwH
	DbLPv0krw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8zUv-00010y-Ok; Tue, 03 Mar 2020 04:49:37 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8zUm-0000zB-9x; Tue, 03 Mar 2020 04:49:30 +0000
X-Originating-IP: 72.234.241.177
Received: from [192.168.22.124] (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 89ADEC0004;
 Tue,  3 Mar 2020 04:49:07 +0000 (UTC)
To: Luiz Angelo Daros de Luca <luizluca@gmail.com>
References: <7e661795-63c8-2c62-f3ce-bde77adcdfe2@aparcar.org>
 <20200226133614.GJ99033@meh.true.cz>
 <F03638DF-B6C4-438F-9B4F-E1110111AD01@gmail.com>
 <e169bdbe-fc8a-6a6f-c778-ae91ad7a8ced@aparcar.org>
 <CAJq09z7WbOG-PbJmHDDr4Dut9o+Z-QEXfAdrnkcM46QhJFsXxg@mail.gmail.com>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <85304112-2c33-c1bb-52b4-ffa7ffcec31b@aparcar.org>
Date: Mon, 2 Mar 2020 18:49:04 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAJq09z7WbOG-PbJmHDDr4Dut9o+Z-QEXfAdrnkcM46QhJFsXxg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_204928_482062_96F8893F 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] RFC: versions.json
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
Cc: Rich Brown <richb.hanover@gmail.com>, openwrt-adm@lists.openwrt.org,
 mail@adrianschmutzler.de, =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, fhfrediani@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> Thinking on which info the client side would need, I would remove the 
> minors info if we can just skip to latest.
Yes, if we always skip to the latest anyway the "latest" key could 
contain that version and the rest is simply interpolated. When wanting 
to cover release candidates we could use Petrs "candidate" tag, which is 
empty if no "prerelease" is available.
> And, It's missing a changelog link. Also, each release can have its 
> own info.json with more info.
I would not store a change log link in a versions.json file but an 
additional info.json might makes sense.
> How would it deal with devices that cannot be upgrades (like the past 
> case of 4/32)? Or will it bother the user forever with a nonsense 
> upgrade suggestion?

The client implementation could make an additional check like reading 
<server>/<version>/<target>/profiles.json and see if the profile is 
still supported in the new version. If not, it could point to openwrt.org.

If you permanently want to ignore new upgrades, disable the upgrade check.

> How would it deal with devices target or subtarget changes (like 
> ar71xx -> ath79, or generic -> tiny) or this is more a "go to 
> OpenWrt.org" instead of "click here to download"? And aborted releases 
> that brick devices until a new release is ready, specially when they 
> are specific to a device?
I'd say target changes are too risky to automate.
>
> The version.json would speed up upgrade rollout. It would also 
> increase the impact of a bugged upgrade. I would be nice to have 
> something like a staged release process, even just for suggesting them 
> to the user. We could create some form of machine id mixing device 
> mac, urandom seed, board id and the new release version and use it for 
> selecting a device for a stage. It could be a client-side-code only 
> strategy but versions.json could inform the proportion of each stage.
I'm against this fragmented rollout based on some random value. Either 
the user makes a conscious decision to install freshly released firmware 
or not.
> It would also be interesting to have some form of automatic or manual 
> success feedback like "Notify OpenWrt if your upgrade worked". This 
> way, a backend could be notified before the upgrade and expect a 
> response afterwards.

Yes, long term we could try to create a community of device testers 
where whoever owns the device can perform a list of tests and set a 
"stable" bit in some "to be designed" file.

Best,
Paul


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
