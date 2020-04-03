Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C6B19E038
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 23:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sd2VwFNV0PTvZRz8k8cNhCK6H5M2OrB6tR+4vdIUULw=; b=Q1lbEl1qAQkSXYmVJdr7VkxUq
	sH23pPX2qRTEGqTRmW4H/NvPf9mYAjw3DC2tY/ZbpYbVLFCcMg6nsGzlPtqzOv2EViXUIMxvm7fl6
	AtZg1+cFBsl8jT0LsAxJp7drirpd5HGDLvf+7mmHgUDu1WvOmTPDGfYliDDDCVmrYKjd+Jgo3kyhv
	7V9Iy6fHV6ZBUWynqCn0Ga7+vNM34mNFpoTLFTQCXc3R+irgoGDuDScqhsFIXyOXz4I7Zyi8SQo1Y
	ePyhyRQFbnaPbA0pte4swlmXTFsNpZfIhOuvNsIlSk8biL5YLchaagUuoAqzs05jVAowUKwemu+zu
	zRJFmKaNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTfD-00051A-Dr; Fri, 03 Apr 2020 21:15:43 +0000
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTf6-000501-OG
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 21:15:38 +0000
Received: from player698.ha.ovh.net (unknown [10.110.103.18])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 0AE321CF982
 for <openwrt-devel@lists.openwrt.org>; Fri,  3 Apr 2020 23:15:23 +0200 (CEST)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl
 [194.187.74.233]) (Authenticated sender: rafal@milecki.pl)
 by player698.ha.ovh.net (Postfix) with ESMTPSA id C7AA41113FA14;
 Fri,  3 Apr 2020 21:15:21 +0000 (UTC)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200403192922.44334-1-freifunk@adrianschmutzler.de>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <6dda673d-939d-c180-3780-b0d077096063@milecki.pl>
Date: Fri, 3 Apr 2020 23:15:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200403192922.44334-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-Ovh-Tracer-Id: 12063736027855949550
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrtdeigdduheefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucfkpheptddrtddrtddrtddpudelgedrudekjedrjeegrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieelkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdprhgtphhtthhopehophgvnhifrhhtqdguvghvvghlsehlihhsthhsrdhophgvnhifrhhtrdhorhhg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_141536_933529_B68D047C 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [87.98.172.75 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [87.98.172.75 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH] bcm53xx: tidy up board.d/02_network
 even further
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey,

On 03.04.2020 21:29, Adrian Schmutzler wrote:
> This arranges the code in 02_network to resemble the structure using
> lan_macaddr and wan_macaddr variables like in other targets as close
> as possible (without becoming non-cosmetic).

I'm sorry but I'm starring at it and I see hardly any improvement.

Maybe this makes code more similar to one from target <foo> but I don't
see why it's better to have both ucidef_set_interface_macaddr() calls
at the end of function. I'd say it's a matter of personal preference.

The old variable name "etXmacaddr" matches closely NVRAM variable names
(et0macaddr, et1macaddr and et2macaddr) so I don't see why changing it
to "etX_macaddr" would make code necessarily better. If we start doing
such changes we'll keep changing code like that over and over.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
