Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7AE9CDBC
	for <lists+openwrt-devel@lfdr.de>; Mon, 26 Aug 2019 13:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxowX6a4Rxxzbr3JbtSdU9QzrukGkJ7hwCEw5dyQGXk=; b=BwzBkXuws4RXm2
	urw+x3gd2DUQ337doY8ionNHlea1k6BKMg/2gcYJ1iXmRgGrEaDBHDLi9zLhRgRA01XQTVc7A4rLI
	yzz2ymshR2bGjlmbCkLhlOg8c3rkVeoauB6iKG/MLyGs+O3NU+aE52GLHFOw1p4gSfrDsTVTN2lEd
	Rqjvf3cEskoCPZ+Cn0zyEjhetyDdGb5WErSkuWE00Qa2h76gEg/HWjG8NFz99/N+WtwUnNY95v9O9
	UlE0r7YkUA4NEQ1FyuHp1SZMvnFfZd7sbMb22dBHviBnFtf6euigMn6lg+sQQzZb1k2NKp+H4hS8q
	NodzLaAxAbFuYR52Tawg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2CpG-0005mN-L5; Mon, 26 Aug 2019 11:06:18 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2CpA-0005ls-5o
 for openwrt-devel@lists.openwrt.org; Mon, 26 Aug 2019 11:06:13 +0000
Received: from [10.16.213.167] ([80.187.118.245]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MfpjF-1ihZ2s2Pwv-00gKm5; Mon, 26 Aug 2019 13:06:07 +0200
Date: Mon, 26 Aug 2019 13:06:04 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20190826104919.32610-1-kristian.evensen@gmail.com>
References: <20190826104919.32610-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org,
 Kristian Evensen <kristian.evensen@gmail.com>
From: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <8A8591D6-4EDA-4265-86F5-FAFFC2323E6A@adrianschmutzler.de>
X-Provags-ID: V03:K1:XMW+6KUc/d7kbT89C9i78yPg1IzZS0Eznr8dqcNdblhigkgm6+6
 0TRCLSKTPXZBcYCykBCidh9hNo4HnXNPtqtxmuei48rKoJVmOwLu9wxrJJZfXu94d2OPcel
 W1qsFK7GedkVrdu9Q71N0GuacJqBO6ggJ6pz9N3N2NCkd5z4OhvRTO8PhHeKwUpD1TfC4lq
 jRv5GjIXBFj5vsToIaPcA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:owK21SI9w2o=:wew7CIhq3E8DWV1mEBc6/3
 W/PXkTT6GXrgIqMAjRwVrS/2izwOAedU/g48il69XwNSUkBw37x+Lmufs/CIedHZQMfEy3Cvf
 sfAsQf+dtLeMcpRxr7Qy+1dijKxEvMvrWvaaq1heuTWczKREc+CwXn53gYx2oA3KMZEIfjIaZ
 OtoHobbGYP9JhoaOdn+WBiAZep9kcY4Oq+bKt3NhGtJ0o5g5G/kvD6K4NKISQg9Mp72pjA5NH
 FEH5v4mLSVLYHYhwhRmx+E+Ej/VVypntsZlBgtfgO1C9B0b56gBi+yPCkQzr4wQ2xE5Mp5k00
 LMRjJEgHovb3YBo2cJqRK6c98xgw+OQvn6BXdRN6p2W1CuTRuKYK7vUe8KKRUej4wa5/kiOV7
 PA06d6HmgUalP/FMFKpTIIUIzrTMKj3j/QrDZL38cQ+RQQOyQYKzZxeOE1ZTiEYrs/znHKvYQ
 PGh8AmrIiC5x+ftzruMrdD/6IGdHLs2cXoiZX5UEqmqsWL2LW7Y7PPfqPidbofy2zO5dYSC/U
 /Qu0Dbx8hQS6lO7W3KRRkkWUeIBT2ibaCJjjZ63Y57PiL4ZVt6gWynXShwbXJzDBPfetb/PzH
 cQaf5lMUpVJnsmnhFBHyDdxjgH65FW5rb8uGZw0yPeKJs7xh9Yu5kvnVWKAHRb+LKlqs0JcJd
 b5ahzPfepj3k4gFyN8AFtFwA3u0fntIMxQ48V9iLhz4uwxNKCb9jFAVSFKbi32K7XaMu/npoB
 3dz3c7/Ti9YiIVIAlY0IbjBfLDq8U6KmnSRcoCevVGii4fGYsuJTdt/jcQmkJq6tjyUzBm1/5
 wEoiyIE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_040612_512577_C5E5E0EE 
X-CRM114-Status: UNSURE (   4.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: Add support for Unielec U4019
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

> +	unielec,u4019*)

Please don't do that, but use the full identifier(s).

Wildcards are really painful if you ever want to change anything and grep/look for all locations of a specific device in the code.

Best

Adrian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
