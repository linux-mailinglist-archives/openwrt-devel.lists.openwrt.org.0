Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5381D0AF7
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 10:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzW37KdtrDYi2Yi47XUxF3rLu64vQoXM2oErLAeEEyw=; b=GuRREFOLen4cqH
	Y0ExLh2YDhYtXFgscnQ5LabvJMV/8EV1Nk8ZVp4NLBPzgLgvsbmGKUSiJEu2fKK1UwHp/3wiIDkrq
	SkAbftMi8lBm2CSPDgvZ3GysqCj08ffUjVdbfsGdXSXxRVXRoL3nAGXH2+KB5wwjqgQZchM2OKsVg
	PIo4XpFqMFXUIyFJAPfV4sbc/pu9QJLqiUm/2qzyMgQcikmFH7Pw7+exneHv6xcSnJrEiB9kS+1hq
	vUjVrGfwk6rHacQ2PnkTkmKA3Pda0ybHghstTdv7Ux0AUgGDUwG8TCsCTpdWBryu2yDON8C6yYgtw
	21UOrWFeZNXgXcWyEdeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmvd-0004b7-UY; Wed, 13 May 2020 08:39:49 +0000
Received: from mail.w1.fi ([212.71.239.96] helo=li674-96.members.linode.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmvW-0004aF-E3
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 08:39:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by li674-96.members.linode.com (Postfix) with ESMTP id 674B3119CB;
 Wed, 13 May 2020 08:39:38 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at w1.fi
Received: from li674-96.members.linode.com ([127.0.0.1])
 by localhost (mail.w1.fi [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gECiUo1aqtzS; Wed, 13 May 2020 08:39:36 +0000 (UTC)
Received: by jm (sSMTP sendmail emulation); Wed, 13 May 2020 11:38:17 +0300
Date: Wed, 13 May 2020 11:38:17 +0300
From: Jouni Malinen <j@w1.fi>
To: Daniel Golle <daniel@makrotopia.org>
Message-ID: <20200513083817.GA5236@w1.fi>
References: <20200512214612.GF1636@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512214612.GF1636@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_013942_597349_8A2A6911 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] hostap commit 6c9543fcb breaks MESH-SAE with
 wolfssl
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
Cc: hostap@lists.infradead.org, openwrt-devel@lists.openwrt.org,
 Antonio Quartulli <a@unstable.cc>, ringelrobbe <ringelrobbe@riseup.net>,
 Sean Parkinson <sean@wolfssl.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, May 12, 2020 at 10:46:12PM +0100, Daniel Golle wrote:
> After hours of bisecting which change between hostapd_2_8 and
> hostapd_2_9 broke SAE in mesh mode with WolfSSL we got a result:
> 
> > commit 6c9543fcb7962e26c2a91c43089abe171d073b44
> > Author: Jouni Malinen <jouni@codeaurora.org>
> > Date:   Thu Apr 25 20:18:27 2019 +0300
> > 
> > Share common SAE and EAP-pwd functionality: random qr/qnr creation
> > 
> > Use a shared helper function to create random qr/qnr values.
> > 
> > Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
> 
> While when building against OpenSSL, things keep working also after
> the above commit, when building against WolfSSL, the node hangs in
> LISTEN state for a long time and then ends up BLOCKED.
> I've tried with WolfSSL 3.14.4 and WolfSSL 4.3.0-stable-1 with
> identical results.

This works fine in my tests with 4.3.0. All the mac80211_hwsim test
cases for mesh pass with the current wpa_supplicant snapshot built with
WolfSSL 4.3.0.

> Going back to commit 2b84ca4dd
> ("Share common SAE and EAP-pwd functionality: suitable groups") makes
> things working again also with WolfSSL.
> 
> On first sight there seems nothing wrong with that commit to me, but
> apparently it does break things :(
> 
> Any ideas helping to fix this would be highly appreciated!

Can you please share some more details on how you are testing this and
ideally, debug logs from two devices for a case that fails with WolfSSL,
but works with OpenSSL? I'd like to also get a confirmation that you are
seeing the issue with the current snapshot of the master branch in
hostap.git since that is the version I would be using for any debugging
of the issue.

-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
