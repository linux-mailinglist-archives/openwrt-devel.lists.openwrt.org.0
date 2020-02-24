Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8C116A73B
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Feb 2020 14:23:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mt6JJKoSGtKzKkpGFw1/UanqVF2Io6XgtJ0xF496UW0=; b=jEcKnDcEornOl9
	wG++ICk19Iql763f34R0MKeYn3k+hG71BN8IxHen6GFa2yWxzt8A2wZxIsc2Uuig5FioYLUfClzSa
	R3iscqQ90QC/nEMJczQre3jYlod9vE+uiim4KhaxYWHh4OE6jiguk7r5QQRszLDg6T8ygK/dKQk9e
	b3+k5i1SV1VLQboZeQ414YdN7ziWOMZP5J8zXJp7dhx0F/mWxh9WDD8Uqlm8ON5cJSwz7gRdb7uuQ
	1CSjuClSjRY/cAqOsXu1v2SNJ1HUT5/eInE9T+EKvpSJ20Hh8CDxnSDllc4m1DpmAIPDRh3pgu/Ah
	8nyqRstYLvMR3lEITXQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Dhw-0002aR-He; Mon, 24 Feb 2020 13:23:36 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Dho-0002aA-97
 for openwrt-devel@lists.openwrt.org; Mon, 24 Feb 2020 13:23:30 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mf0Jg-1jcXO30M9K-00gYen; Mon, 24
 Feb 2020 14:23:25 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Sungbo Eo'" <mans0n@gorani.run>,
	<openwrt-devel@lists.openwrt.org>
References: <20200224120605.152672-1-mans0n@gorani.run>
In-Reply-To: <20200224120605.152672-1-mans0n@gorani.run>
Date: Mon, 24 Feb 2020 14:23:24 +0100
Message-ID: <020001d5eb15$97c9e810$c75db830$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQFlGfI+W1BrMj99DOKuPZ134QlKhakL9i1g
X-Provags-ID: V03:K1:1QtHkV0MZgcRSy4I3HD6aMhQqM38Ppz721tb0SYtK25ob0OfWGG
 fvmZdWcdFhXs5MuWt9W2C2F7CUgR1mdR5YQS+jlJSLvyiMnez7m6XEHZrIugRH1fP9NRfAq
 H8x89BuIEAmXklnkFJSQD+o+RqVb2J69pw8UrDSIS49QjkxU/zMqs3fEuJLA0z3uRMWqx3Z
 H6Yqk0T6Uxen1d+1awN+A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TvbGho7eubc=:8zNC0xLmzL8jAKE84sMnuK
 L/dc8kG7IU08nKVmLf8wbuuRSFQ0z4m2XP+HGR8xdGye4nNS7coi5Ri2IyZkOfu+obUNdJRa4
 1friubd2ZXlPX+HY/xSViCoxG563aGwVet+CSKgS3mOkAaskOnr1Sd0ajcp+z1HJE0eWeN0Pl
 bIEiUryrl2+4+bozAs3sbCtXSCOX7zAGOqgFlF//MjnfTecjwvWYhu1IvJWLoBX91i7Hi1GT7
 0EYQuN6uC+JCB3GrsyNt9fhQEUzOQuETwHqKb3giTTZRr35i3UmBxy42ilwgMTrd8AYmjYqQq
 8SEwN6UMDkVpPnMhPHRczDY1805vug9qw7DQUBXS8atiwu6DlGt8uyKc7paiQoBrvrywBzyPO
 +jy68lagpink5jTH/6oV20ajsZRA6nH0HhTdkCTfvulJ5G8cAsx5HyGWroAf2M6gaSLMUw2MG
 P5K6svKJz7XP6Z+sstv9YzvaoOzX0721zypiRb2IYTPAEYMeopv2NfctzFBX8tNjOZaSTdm+m
 FbNjPGtpQSuNQXdnS0mrzoRAu3cNIxMNAl1+hNHHbES+vYUqs/MlbFuwEKG1//vVNfGCwOdod
 eSfXdl+aXY5dVdsSpUaOEqn/gnFo9Pb8YEUdulVi5+yEk5RhncH95EG1T+rsueQGj38/G0Uiw
 jwy55yPfg1xhPOWYQxs4N4P4/52+7DWxDsqMeAd0bPOMkcqrStlMmtY5u8URaxAt9e26hZUCQ
 AYY8eYPh2IhYWSN9Ap4YKI8YBn5HsQC1aK11Fa8gXWEJyby+Cu+vnCobYWY3kqOJpUWEtlGtH
 0bdtJMYfSOitukHw0oRtHr1Pn1BxjsW40hibRpb/otzBrO0tpvCvbKe3+MiBcwtsRBr9XwZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_052328_777920_6FECF520 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into
 plain DTS files
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

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Sungbo Eo
> Sent: Montag, 24. Februar 2020 13:06
> To: openwrt-devel@lists.openwrt.org
> Cc: Sungbo Eo <mans0n@gorani.run>
> Subject: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into plain DTS
> files
> 
> Move DTS files newly created by patch files to files directory. This will make
> these files much more maintainable.
> 
> Patching the kernel Makefile is unnecessary, as the DTS files specified in
> DEVICE_DTS will be compiled by OpenWrt buildroot anyway.

I personally see it the same way, though I'm aware this in handled differently
for different targets.
This change will just remove one layer of complexity.

Acked-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Best

Adrian


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
