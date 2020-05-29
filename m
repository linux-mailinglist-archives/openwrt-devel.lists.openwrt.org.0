Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A771E762E
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 08:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HD6Q8AYrAMIlmmHqkUo4Q8CEmxt5U+hmrd4pXMf6u/U=; b=FCN0SMTZXNLFfEMSCb9OkWMPD
	Si0EK41gHe7xolkqoRQeam9WpSaeZhe1nNh1DhGgzOJd0Pm6tgLAMkKOEw5vUBWtqlDVX3pXGN64f
	NyCAKuNaA9xbr0i+8Y3hkJQ6s8jLHptUcpSMIEq71gCRwgme6SFNJkrMqCXj532PU3a1xMXDYpzeb
	Rf/csqff8wnaipJavf/vFERILsltT6mcnV96Q6cLH6lxdMcPuzZSBnwwA3a9qIfQ/YbDsmCUKmgHj
	qFUzU2Mx0+u3fAcBsBzNaK64d64OgQvW5ysiaxghTUvmqrEA7vdUlNQefwAlI2EwYJ/LL2xNQYKdH
	I5xsnS79w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeYqk-0006FB-Jm; Fri, 29 May 2020 06:50:38 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeYqe-0006ED-DD
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 06:50:35 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 7736CFCD36; Fri, 29 May 2020 08:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590735001;
 bh=0+B+iJyj9v/xunSGzPY6Z0D5k4sVwHh+X6ZsPWLr188=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=m67BpDYnImayCdODmAUsvqwXNMAQHjygTISNuEYMaOq4tpdTj4DN8ORWOX1mJ0XWJ
 tHNwM/lz7MOTfk8IRLr/VNjAI0PloZmhnoezPdJCXyFFi0dkMLSGCBfBNnszpnyR11
 khyL7JwfT1CpXNQjPQhosQx1ZyZV1qmR2CyX/BA4=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.0.0.5] (213.219.166.32.adsl.dyn.edpnet.net [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id AE8B2FCD34;
 Fri, 29 May 2020 08:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590734998;
 bh=0+B+iJyj9v/xunSGzPY6Z0D5k4sVwHh+X6ZsPWLr188=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=KIhX872ymgyQvNkVviE76An9GJ83OCnD74sFvfDMVdFGBZ/4S5DrW/YVKhgEEk45y
 U2Dugt0HxAyKUAkNNMOJnuFKyAKVaqlpE7AhWt+jk9QPa0M8GvrmxtNDHkkfm1Gzsw
 tgJiul1gAuIsaP9nScjuu26L3YG0liPEzRzL990M=
Date: Fri, 29 May 2020 08:49:52 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: Evan Jobling <Evan.Jobling@uon.edu.au>
Message-Id: <4ZY2BQ.Z3KMYRHA15Y11@volatilesystems.org>
In-Reply-To: <BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0@BYAPR19MB2984.namprd19.prod.outlook.com>
References: <BYAPR19MB2984CBF9E0ADC95FF1236FB9B78F0@BYAPR19MB2984.namprd19.prod.outlook.com>
X-Mailer: geary/3.36.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_235032_589572_74078938 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] add support for netgear R6020
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Evan,


Op vrijdag 29 mei 2020 om 4u45 schreef Evan Jobling 
<Evan.Jobling@uon.edu.au>:
> Hi All.
> 
> Apologies if this isn't the correct method of submitting a patch.

Please check this page [1] on how to submit patches in a usable format.

> 
> There was a patch on github for adding the R6020?

If you'd like, you can create a new PR on Github (no idea how devs feel 
if the original PR is still open and languishing) - see [1].

> 
> Didn't look like it went anywhere.
> I recall issues with the LED naming on that one?
> 
> Just so it doesn't get lost to time, I figured i'd email my 
> modifications.
> 
> Please find patch attached.
> 
>  I may still have an original boot log, if you want it?

That's always useful to have on the data entry/device page in the wiki 
(which would need to be created [2]).


Cheers

Stijn

[1] https://openwrt.org/submitting-patches
[2] https://openwrt.org/meta/create_new_dataentry_page

> 
> Cheers,
> Evan.
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
