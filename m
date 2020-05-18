Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E181D73FD
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 11:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebf0SarbRnDSroWwCV1nYTsvzreoRA4YIJsrmC0uPsE=; b=b1oNeDtDp3mdyP
	NN71DvQTBRXNcrh+RwbUMyUPA2jA0pkml2YUtGHmW3c+mjNajMj6kpZLA7zIUl5aknOxFNTGfuEVY
	cnoE6P02Ch8v7Mil36yPqaOJxZY2icTJiJYhyQ89Nkl0dLW3+kaByTdTbpdH1e7/81lKMvB70LuaB
	h/RFdfElSl+1NPvY8SoZV+pl+AdQJJYHUp4eAjGkO9Wrmi6VQ/YiovsV/MQYYBKtGHVnUXZGCQLVs
	d4Bt+Ysl9yG97S8bGzwLqu0oyJRDN9wxwDURSTtIvOyjDqvK2HLv6Evx4vm87+fbyoLBARfdWqPlA
	GJPbwD/cJjJLbmo0K14g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jac3f-0001Cl-Pb; Mon, 18 May 2020 09:27:39 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jac3Y-0001Bw-6S
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 09:27:35 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jac3S-0008I8-MI; Mon, 18 May 2020 11:27:28 +0200
Date: Mon, 18 May 2020 10:26:58 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Matthias Schiffer <mschiffer@universe-factory.net>
Message-ID: <20200518092658.GF1799@makrotopia.org>
References: <cover.1589663193.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1589663193.git.mschiffer@universe-factory.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_022732_237669_AC7BD5E3 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH ucert 00/13] ucert fixes and cleanup
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

Hi Matthias,

thank you for taking care of that, it has been on my todo list for
a while.

On Sat, May 16, 2020 at 11:13:49PM +0200, Matthias Schiffer wrote:
> While looking for a build issue (see [1]), I noticed various issues in
> the ucert code (and this should not be applied before [1] is applied to
> usign). There might well be more problems lurking - I did not read all
> the code.

Jo-Philipp Wich pointed out to me on IRC a while ago that we would need
to enforce a normalized way to store and read the ucert attributes,
eg. by forcing attributes to appear in alphabetical order and
elminitate other freedoms the parsing in libubox may currently grant.
Right now, those freedoms to store a semantically identical ucert
structure in different ways may allow for brute-forcing a
hash-collission and hence puts more stress on the properties of the
hash algorithm. Hence this apporach is currently not really
cryptographically sound (as also mentioned in usert's README.md).

> 
> In particular patch 12/12 is critical: It must be applied before the
> attached libubox patch to avoid a new security issue.

ucert changes:
Acked-by: Daniel Golle <daniel@makrotopia.org>

> 
> The libubox patch is necessary to make ucert verification work at all
> again; without it, cert_load() will always fail, and in consequence, all
> images will be found invalid when REQUIRE_IMAGE_SIGNATURE is enabled.
> 
> 
> [1] https://patchwork.ozlabs.org/project/openwrt/patch/8ead1fd6a61117b54b4efd5111fe0d19e4eef9c5.1589642591.git.mschiffer@universe-factory.net/
> 
> Matthias Schiffer (13):
>   stdout/stderr improvements
>   Fix return code of write_file()
>   Introduce read_file() helper, improve error reporting
>   usign-exec: simplify usign execv calls
>   usign-exec: fix exec error handling
>   usign-exec: do not close stdin and stderr before exec
>   usign-exec: change usign_f_* fingerprint argument to char[17]
>   usign-exec: remove redundant return statements
>   usign-exec: close writing end of pipe early in parent process
>   usign-exec: return code fixes
>   usign-exec: improve usign -F output handling
>   Fix length checks in cert_load()
>   Do not print line number in debug messages
> 
>  tests/cram/test_ucert.t |   4 +-
>  ucert.c                 | 147 +++++++++++++++++++++++-----------------
>  usign-exec.c            | 115 +++++++++++++------------------
>  usign.h                 |   8 ++-
>  4 files changed, 138 insertions(+), 136 deletions(-)
> 
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
