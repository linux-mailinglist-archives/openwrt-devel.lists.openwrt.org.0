Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B726914F249
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 19:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQQh+k04KyNMrL9PzYa0/sIIhTq7I8Ev0HskntXPNw4=; b=qNOlHOyl+8XJib
	1IXdtZD7enkQtxw9dQxUT3/ZsmPG697YKXrHpHtPZLWHtVDCOfjgexRQL1m9SAFXZFUdoFnviR/LV
	o3tFpCruIg2H3PUFrn/wQTpUPCwL/j0HXqiRQ7VuaQc9W9g1OvCqDGpPGc6nqIkz0fRbHCFV6VJyt
	SYafREATwpZGanrruaBMy8tWEKc7J7rVvAcnSW3cfHN5IbbxRl3VeAZZdWtHveGmU+bLuM5M0eEYQ
	6X6a//1J/CHHhvGezH7vi9q0b2qOVfGowvMt6oKRaaYobJgC0R3qzfDeuCbbaE+2Tr+lJhpD2zmDb
	X6AfOY+mQLiv3maSj0Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixbBE-0000Xe-KK; Fri, 31 Jan 2020 18:38:12 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixbB0-0000Tz-Vl
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 18:38:00 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MLzeb-1jFPAw2nEf-00HuoW; Fri, 31
 Jan 2020 19:37:55 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-4-tomek_n@o2.pl>
 <010201d5d84f$117d2d90$347788b0$@adrianschmutzler.de>
 <33ee79ee-6273-e744-ddeb-22ebe0ab8d2f@o2.pl>
 <019201d5d864$f8896220$e99c2660$@adrianschmutzler.de>
In-Reply-To: <019201d5d864$f8896220$e99c2660$@adrianschmutzler.de>
Date: Fri, 31 Jan 2020 19:37:55 +0100
Message-ID: <019401d5d865$8da22d10$a8e68730$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIg9Z1HjtTSr13X0aN4mb1BSdO/fgEITCZSAST3czAB3FKEpAHQEHX9p0AR6pA=
X-Provags-ID: V03:K1:3E76zy3ElWH0+6LbrDL/RLt0g1Dx6oRV3O2c0LwCBK/BXgT35eS
 KNeN2UsvZecOqXNto0HTl8/pRsq0vUzv4AaZe/0awNFX6mtBTGcBbaknY+9LCovwF+efpty
 qIJsJSYzaFIVCSZKKog3MkoNzF518+SnF/ZkvdEkqhOXBAk/KBtKv3S6M1qqcr/WkBIHMl4
 9UAX1GG/3VvHNQ1xR4zOg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NQLn2bINhE0=:HPcMeecoGPWGRv8r6f70YW
 uD+MISyfsNcEEdP9VIBLB9Y4CkmoX+LP3t+jpLWwAm4Bk3HsgGVL9cKWwPQkigGunHNYABJKw
 o5uOmKfnVm7AY+FIqx2uZoLorcyhrqYpNhQbMpy5HRtHJXKu/Iavxan8Kg2OrU63hrzoofWjg
 jrs3QgjFpLKAPRbzXBdyeITwQanU/YDhKjkTMM9uZVxC1qTzKV8A1Icih3pSGnVI8srUchyDu
 YRFOFxk2EOAl59VbUwUqw42AAC6hDFPd8UpZRl1DIPqmtEXtEkLvAj7Sg30uCjK8O2ntVk1k9
 0DC//boBGtSjfXxYgC0Scgcz0810JLcyskaZeV4Cntdvn46E3QEsvM26GYpvEeH+BWeTUDMa9
 WSrQEpooeCsCkD36jIT7Qdg9oigJgWA6i0HYdQ9UD3VXrt8wj6h30y8jOSQ+LfB3vkIsVsNMF
 CqnQ4rC5Fv1BrNaGWss1yKUI/qzio/ZOTKI+xF8/mB1mqV94EhsKtAupFz9RtYJS5K15WINoV
 CAJKBC7uVC6af6A9ljhQGRGnG9vRI6h49UrBIgnSiMIsdV0VBfH74Ghsarp/w8EL+1ThifJjd
 +1vtwfnqJ5l7K5MeOh/8yd+w5c2SnjBaQCnELdI0TwelqnZJDPRrTm/RrPDCysA7L49Kguc+V
 58U1HUHfzPFMyh6dvevW4NQdjQtI9iouOOiaBWRUceTMdpVlrb+uuKS00uUFL1mO/l1M4vWMC
 hxEZFJxCzWbV3g438YYpAxIK2knxRCnfHXZgS/e4i8QE/pYnTB6Amu5qa6gRwz/9MvKWgg5i/
 CFBqpco7zbFzMvkDx+P2RrPAp3NYKd9xLB2Z+Vil14pcPl7i/Jt8hiu3hj+dgIg2LIfXIO+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_103759_313973_13B132AD 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 3/8] mvebu: image: drop empty variables
 from default profile
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> When variables are _not_ set, but are added to DEVICE_VARS, the variables will
> have the last value set to any device before (i.e. the last device setting
it). Note
> that Device/Default counts like an include to the current device there.

Still not precise enough here:

When variables are _not_ set, but are added to DEVICE_VARS, the variables for
each device will
have the last value set to any device before the current device (i.e. the last
device setting it). Note
that Device/Default counts like an include to the current device there, so it
effectively overrides the values taken over from the previous ones and thus
creates the "expected" behavior.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
