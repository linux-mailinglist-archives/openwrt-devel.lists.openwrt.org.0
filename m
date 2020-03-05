Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8012717A2D5
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 11:07:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6bfnNb8tJ07HvJr6ylQwauyMv3eHOXrXGzSqyzi+t2M=; b=XSxyo4e3AuqhJyxV4OJlKcaLF
	ViVa84DuGSrbWGoKZm+DaKMCWKUe9vIaracIv8uYwS1kapWw/OrY0Bm9FH4aRzAEFwP/zQnuHMHdf
	se4Xn2G3N7uCsXa3lZ9rSe91NJtutUrOxp/dJw4Q2LL4Jcu7LcuGrvnqf4jyQkY0vyukpVQWel4cA
	ZCBgPBMZtCM2Vzg1rMIAvoKDh5EGRfQXUc4iHU5EIBWaD29HiFaLaNtFLOatcX3+YZ/WkMZWIRcP2
	lFxUDajo3bEf9GI3zFUFQPr6jxxMBsNhBksv3Kx0cbGZN4kqjBRaq2m3qwrHlnklQVwD9p9+ghYFA
	ChyZgpeuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nPd-0006ds-FL; Thu, 05 Mar 2020 10:07:29 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nPW-0006dB-4q
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 10:07:23 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48Y5yW66Q7zQlGB;
 Thu,  5 Mar 2020 11:07:15 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1583402830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=62VVmQxjCdVUatzXUkwLY5k6Y58D3FNB+zUo+l6l5vA=;
 b=leII2e91r9whbt7IdfHEbsJV48s/gX7n8jwGxDJUm+NX50vmQEdPHdVQS4LFSkH5kkG1qP
 KUMAz2GMBtpJ6afUv9Gb3EpWoUeaQtc+fwa7NCd89uLIAlbCnTxChvlZ3lWcTXfwqLbBQ+
 zFm+Xt8/iBLxCiRdhcIG1WKIrX3kpN/mQxR1qxPauGw/LzyVXZz8zHyfLchB2qHxuam8Av
 0j4Vp7aD4jxnlN+iGUag+3eHUOqB8xr3Ur7+GVhATI+qUy97AnmCMcKA1HTMuM7t5DdPME
 TuboC3uR+UjHB2B42KniXjAhfoaedjvoeY1Y2W0eBaq1HKFX/5j9oqHbGy0VoQ==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id WKdtuItsEepq; Thu,  5 Mar 2020 11:07:09 +0100 (CET)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <62d2bb46-dc7b-17b9-7ea9-b7f65ce66750@gorani.run>
 <007b01d5e97e$5b8631d0$12929570$@adrianschmutzler.de>
 <a5d752cc-e273-2522-435a-df83622006bb@gorani.run>
 <019b01d5ebd8$f46041f0$dd20c5d0$@adrianschmutzler.de>
From: mans0n <mans0n@gorani.run>
Message-ID: <66704700-f7f0-917d-ae8d-d3dafd98fc8e@gorani.run>
Date: Thu, 5 Mar 2020 19:07:02 +0900
MIME-Version: 1.0
In-Reply-To: <019b01d5ebd8$f46041f0$dd20c5d0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_020722_363766_02D38420 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.198.250.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Some questions - help needed
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

Hi, sorry for my late reply.

I tried again to convert DEVICE_TYPE to device variable, and your 
explanation of DEVICE_VARS was helpful. Thank you.
Currently device-type specific packages are added to DEFAULT_PACKAGES in 
target.mk, so I had to move it into image.mk.
But then DEVICE_TYPE can no longer be set per whole (sub)target, so 
busybox hdparm should be removed again, as we cannot build busybox for 
each device. That will introduce another fix commit, and I'm not sure if 
I'm going in the right direction.
Anyway, I'll send the patches to PW when they are ready.

As for the kmod-*-core dependencies, I'll open a PR on GitHub soon.

Thanks.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
