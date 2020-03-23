Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5A918F4D9
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 13:43:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lt/WEm8vOZBP1G4FgLBm4gWQkkTabxmzmc3QN9+N/Xs=; b=p2gpRwU/19nbjK
	JlCefc6XQvVyu/sJ9fbAMcC0FVSfN9aQ2aJb11JrrxzQ0BKaAMP+sWIQyBYnLYV4rcBfHPLYqy/z3
	mvns4GBrL5OtVr9GI8znb/sfghejkkGZWW9UDAaK1xbi0ZTci2glS8/2NkYGFGur/y3dbOxyLJGIj
	PFMlS6WrYXB63Gd3dz8Am3xJj9BiQ2jMm10GFUyCq7XYhsf7DRMwAteMkc5KMs9AxTACWslirH4tc
	ZC7i9AhjHvTobF73ewFVDgjcvYvb/uq8cHT4X7alNpt5QK3iQtTMUx7jaBQe8f+c35C6aEoQhlWTm
	TE9cxfe9sL9VwT00+aDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMQh-0004IO-Ua; Mon, 23 Mar 2020 12:43:43 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMQO-0004Ci-LU
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 12:43:26 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 221D0A61546; Mon, 23 Mar 2020 05:43:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.3
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 6254BA613FD;
 Mon, 23 Mar 2020 05:43:19 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Paul Spooren <mail@aparcar.org>
References: <20200323102533.1338669-1-mail@aparcar.org>
Date: Mon, 23 Mar 2020 05:43:19 -0700
In-Reply-To: <20200323102533.1338669-1-mail@aparcar.org> (Paul Spooren's
 message of "Mon, 23 Mar 2020 00:25:33 -1000")
Message-ID: <87ftdzp7h4.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_054324_769466_A3687D79 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] x86/geode: add missing include after
 rebase
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

>>>>> Paul Spooren <mail@aparcar.org> writes:

Comments below.

> The x86 image generation was refacted via cb007a7bf6 and accidently
> not included `geode.mk` when selected as subtarget.

> Now the file is included and image compilation for x86/geode works
> again.

> Thanks to Russell Senior <russell@personaltelco.net> for reporting the
> problem and suggesting a patch!

The patch is due to Tomasz Maciej Nowak (tmn505). Also, we need the
FEATURES modified in target/linux/x86/geode/target.mk, as it is
missing needed features, minimally boot-part rootfs-part squashfs ext4
and perhaps others. And, when building for alix, I get prompted for
kernel config variables: SCSI_FDOMAIN_ISA, I2C_AMD_MP2, PCENGINES_APU2.

I notice that there is a kernel config CONFIG_ALIX disabled in
target/linux/x86/config-5.4, seems like it would be useful for an alix
build?


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
